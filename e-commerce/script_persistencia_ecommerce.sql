USE ecommerce;

-- Persistência de dados

insert into cliente (Pnome, Mnome, Lnome, Endereço, DtNascimento) values 
							 ('Antonia', 'de', 'Melo', 'Rua quinze, 314, Santos','1945-04-16'),
                            ('Maria', 'de', 'Oliveira', 'Rua dois, 34, Santos','1994-04-01'), 
							('Diana', 'Prado', 'Silva', 'Rua das flores, 11, Praia grande','1950-02-24');
                            
insert into PF (CPF, idCliente) values 
							('01412348609', 7), 
							('78945678953', 8);

insert into PJ (CNPJ, idCliente) values 
							('01589678153697', 6);
                            					
insert into produto (Nome, Categoria, Descrição, Valor) values 
							('Blusa A','Vestuario', 'blusa manga curta', 50.0),
                            ('Boneca BB','Brinquedos', 'boneca que parece um bebe', 120.0),
                            ('Phone AZ','Eletronico', 'fone sem fio', 80.0);
                            
insert into vendedor (RazaoSocial, NomeFantasia, Endereco) values 
							('Armando Gonçalves SA','Estrela', 'Rua er, 56, Porto alegre'),
                            ('Julia Souza ME','Veste Bem', 'Rua das mangas, 78, Salvador'),
                            ('Elena Riberio SA','EZ Tech', 'Rua fontes, 897, Santos');
                            
insert into fornecedor (RazaoSocial, CNPJ) values 
							('Armando Gonçalves SA','14578900018963'),
                            ('Gomes ME','78945602899944'),
                            ('Dois irmãos SA','78944455566637');
          
insert into estoque (Localização, Quantidade) values 
							('Rua das camelias, 456, São Paulo', 50),
                            ('Avenida flores, 458, Guaruja','1005'),
                            ('Rua do aeroporto, 01, Guarulhos','899');           
      
insert into pedido (idCliente, Descrição, StatusPedido, ValorFrete, Valor ) values 
							(6, 'Compra de 01 fone de ouvido sem fio', 'Processando', 15.0, 80.0),
                            (7, 'Compra de bonecas','Em andamento', 20.0, 240.0),
                            (8, 'Blusa A','Enviado', 5.0, 50.0);
          
insert into pagamento (DataPgt, Valor, FormaPgt, idPedido, idCliente ) values 
							('2025-03-29', 95.0, 'Cartão', 1, 6),
                            ('2025-03-27', 260.0,'Boleto', 2, 7),
                            ('2025-03-26', 55.0,'PIX', 3, 8);
     
insert into produtoVendedor (idVendedor, idProduto, Quantidade) values 
							(1, 8, 100),
                            (2, 7, 200),
                            (3, 9, 450);

insert into produtoPedido (idPedido, idProduto, Quantidade, StatusProdutoEstoque) values 
							(1, 9, 1, 'Disponivel'),
                            (2, 8, 2, 'Disponivel'),
                            (3, 7, 1, 'Disponivel');
                            
insert into produtoFornecedor (idFornecedor, idProduto) values 
							(1, 8),
                            (2, 7),
                            (3, 9);
                                                        
insert into produtoEstoque (idEstoque, idProduto, Localização) values 
							(1, 8, 'SP'),
                            (2, 7, 'SP'),
                            (3, 9, 'SP');
                            
-- Consulta de dados

-- Quantos pedidos foram feitos por cada cliente?
select idCliente, count(*) as total_pedidos_por_cliente from pedido group by idCliente;

-- Algum vendedor também é fornecedor?
select NomeFantasia from vendedor v, fornecedor f where v.RazaoSocial = f.RazaoSocial;

