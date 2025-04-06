-- Criação de banco de dados para o cenário de Ecommerce
CREATE database ecommerce;
USE ecommerce;
select * from referential_constraints where CONSTRAINT_SCHEMA = 'ecommerce';

-- Tabelas

-- cliente
CREATE table cliente(
	idCliente int auto_increment primary key,
	Pnome varchar(10),
	Mnome varchar(10),
	Lnome varchar(20),
	Endereço varchar(45),
	DtNascimento date
);

CREATE table PF(
	CPF char(11) not null,
    idCliente int,
    constraint unique_cpf_cliente unique (CPF),
	constraint fk_pf_cliente foreign key (idCliente) references cliente(idCliente)
);


CREATE table PJ(
	CNPJ char(14) not null,
    idCliente int,
    constraint unique_cnpj_cliente unique (CNPJ),
    constraint fk_pj_cliente foreign key (idCliente) references cliente(idCliente)
);

-- produto
CREATE table produto(
	idProduto int auto_increment primary key,
    Nome varchar(10) not null,
	Categoria enum('Vestuario', 'Brinquedos', 'Eletronico') not null,
	Descrição varchar(45) not null,
	Valor float not null
);

-- pagamento
CREATE table pagamento(
	idPagamento int primary key auto_increment,
    DataPgt date not null,
    Valor float not null,
	FormaPgt enum('Cartão', 'Boleto', 'PIX') not null,
    idPedido int,
    idCliente int,
    constraint fk_pedido_pagamento foreign key (idPedido) references pedido(idPedido),
    constraint fk_cliente_pagamento foreign key (idCliente) references cliente(idCliente)
);

-- fornecedor
CREATE table fornecedor(
	idFornecedor int auto_increment primary key,
    RazaoSocial varchar(45) not null, 
	CNPJ char(14) not null,
	constraint unique_cnpj_fornecedor unique (CNPJ)
);

-- estoque
CREATE table estoque(
	idEstoque int auto_increment primary key,
    Localização varchar(255),
    Quantidade int not null
);

-- vendedor
CREATE table vendedor(
	idVendedor int auto_increment primary key,
    RazaoSocial varchar(45) not null unique, 
    NomeFantasia varchar(45),
    Endereco varchar(45) not null
);

-- pedido
CREATE table pedido(
	idPedido int auto_increment primary key,
    idCliente int,
    Descrição varchar(255), 
	StatusPedido enum('Em andamento', 'Processando', 'Enviado', 'Entregue', 'Cancelado') default 'Processando',
	ValorFrete float,
	Valor float,
    constraint fk_pedido_cliente foreign key (idCliente) references cliente(idCliente)
);

-- Tabelas de relacionamentos N:N 

-- Relação Produtos por vendedor
CREATE table produtoVendedor(
	idVendedor int,
    idProduto int,
    Quantidade int default 1,
    primary key (idVendedor,idProduto),
    constraint fk_produto_vendedor foreign key (idVendedor) references vendedor(idVendedor),
    constraint fk_produto_produto foreign key (idProduto) references produto(idProduto)
);

-- Relação produto/pedido
CREATE table produtoPedido(
	idPedido int,
    idProduto int,
    Quantidade int default 1,
    StatusProdutoEstoque enum('Disponivel', 'Sem estoque') default 'Disponivel',
    primary key (idPedido,idProduto),
    constraint fk_produtopedido_pedido foreign key (idPedido) references pedido(idPedido),
    constraint fk_produtopedido_produto foreign key (idProduto) references produto(idProduto)
);

-- Relação Produto/Fornecedor
CREATE table produtoFornecedor(
	idFornecedor int,
    idProduto int,
    primary key (idFornecedor,idProduto),
    constraint fk_produtofornecedor_fornecedor foreign key (idFornecedor) references fornecedor(idFornecedor),
    constraint fk_produtofornecedor_produto foreign key (idProduto) references produto(idProduto)
);

-- Relação Produto_em_Estoque
CREATE table produtoEstoque(
	idEstoque int,
    idProduto int,
    Localização varchar(255) not null,
    primary key (idEstoque,idProduto),
    constraint fk_produtoestoque_estoque foreign key (idEstoque) references estoque(idEstoque),
    constraint fk_produtoestoque_produto foreign key (idProduto) references produto(idProduto)
);
