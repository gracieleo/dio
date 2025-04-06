-- Criação de banco de dados para o cenário de Oficina mecanica
CREATE database oficina;
USE oficina;
select * from referential_constraints where CONSTRAINT_SCHEMA = 'oficina';

-- Tabelas

-- cliente
CREATE table cliente(
	idCliente int auto_increment primary key,
	Nome varchar(45) not null,
	Endereço varchar(45) not null,
	Telefone varchar(45)
);

CREATE table PF(
	CPF char(11) not null,
    DtNascimento date not null,
    idCliente int,
    constraint unique_cpf_cliente unique (CPF),
	constraint fk_pf_cliente foreign key (idCliente) references cliente(idCliente)
);

CREATE table PJ(
	CNPJ char(14) not null,
    RazaoSocial varchar(45),
    idCliente int,
    constraint unique_cnpj_cliente unique (CNPJ),
    constraint fk_pj_cliente foreign key (idCliente) references cliente(idCliente)
);

-- veiculo
CREATE table veiculo(
	idVeiculo int auto_increment primary key,
    Modelo varchar(20) not null,
	Placa varchar(20) not null,
    Ano char(4),
    idCliente int,
    constraint fk_veiculo_cliente foreign key (idCliente) references cliente(idCliente)
);

-- mecanico
CREATE table mecanico(
	idMecanico int primary key auto_increment,
    Nome varchar(45) not null,
    Especialidade varchar(45) not null
);

-- fornecedor
CREATE table fornecedor(
	idFornecedor int auto_increment primary key,
    Nome varchar(45) not null, 
	Telefone varchar(45) not null
);

-- serviço
CREATE table servico(
	idServico int auto_increment primary key,
    Descricao varchar(45) not null,
    Valor float
);

-- peça
CREATE table peca(
	idPeca int auto_increment primary key,
    Nome varchar(45) not null, 
	Estoque varchar(45),
	ValorUnidade float not null,
    idFornecedor int,
    constraint fk_peca_fornecedor foreign key (idFornecedor) references fornecedor(idFornecedor)
);

-- ordem de serviço
CREATE table ordem(
	idOrdem int auto_increment primary key,
    Numero varchar(45) not null, 
	DtEmissao date not null,
    Valor float not null,
    DtConclusao date,
    OrdemStatus enum('Emitida', 'Processando', 'Encaminhada', 'Concluida') default 'Processando',
    idVeiculo int,
    idMecanico int,
	constraint unique_numero_ordem unique (Numero),
    constraint fk_ordem_veiculo foreign key (idVeiculo) references veiculo(idVeiculo),
    constraint fk_ordem_mecanico foreign key (idMecanico) references mecanico(idMecanico)
);

-- pagamento
CREATE table pagamento(
	idPagamento int auto_increment primary key,
    FormaPgt enum('Cartao', 'Boleto', 'PIX'), 
    DtPagamento date,
    Valor float not null,
    idOrdem int,
    constraint fk_pgt_ordem foreign key (idOrdem) references ordem(idOrdem)
);


-- Tabelas de relacionamentos N:N 

-- Relação OS e Peça
CREATE table ordemPeca(
	idOrdem int,
    idPeca int,
    Quantidade int default 1,
    primary key (idOrdem, idPeca),
    constraint fk_ordempeca_peca foreign key (idPeca) references peca(idPeca),
    constraint fk_ordempeca_ordem foreign key (idOrdem) references ordem(idOrdem)
);

-- Relação Serviço e OS
CREATE table ordemServico(
	idServico int,
    idOrdem int,
    Quantidade int default 1,
    primary key (idServico,idOrdem),
    constraint fk_ordemservico_servico foreign key (idServico) references servico(idServico),
    constraint fk_ordemservico_ordem foreign key (idOrdem) references ordem(idOrdem)
);