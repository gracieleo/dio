USE oficina;

-- PERSISTÊCIA DE DADOS

insert into cliente (Nome, Endereço, Telefone) values 
							('Antonia de Melo', 'Rua quinze, 314, Santos, SP','3464-9689'),
                            ('Maria de Oliveira', 'Rua dois, 34, Santos, SP','19940401'), 
                            ('Star diesel', 'Rua das flores, 11, Praia grande, SP','19500224'),
							('Manoelzinho dos pneus', 'Rua das flores, 11, Praia grande','19500224');
                           
insert into pf (CPF, DtNascimento, idCliente) values 
							('01412348609', '1960-05-12', 1), 
							('78945678953','1956-02-10', 2);

insert into pj (CNPJ, RazaoSocial, idCliente) values 
							('01589678153697', 'Jose Antunes Silva ME', 3),
							('15668678155555', 'Manoel Gomes Dias ME', 4);
                            					
insert into veiculo (Modelo, Placa, Ano, idCliente) values 
							('Ecosport','ASG789', '2000', 1),
                            ('Gol','RTI7532', '1999', 2),
							('Truck','YUO2563', '2023', 3),
                            ('Parati','YUI25689', '2025', 4);
                            
insert into mecanico (Nome, Especialidade) values 
							('Armando','Carros passeio'),
                            ('Julio','Caminhões');
                          
insert into fornecedor (Nome, Telefone) values 
							('Peças SA','3463-8975'),
                            ('Chico autopeças','7894-7560'),
                            ('Dois irmãos SA','7894-4455');
        
insert into servico (Descricao, Valor) values 
							('Ajuste de freio', 500.5),
                            ('Lataria',200.0),
                            ('Troca de pneu',2000.0),
                            ('ajuste bancos',899.8);           
       
insert into peca (Nome, Estoque, ValorUnidade, idFornecedor) values 
							('cabo freio', 'sim', 45.0, 1),
                            ('tinta','sim', 90.0, 1),
							('pneu','sim', 400.0, 2),
                            ('revestimento tecido','sim', 76.0, 3);
         
insert into ordem (Numero, DtEmissao, Valor, DtConclusao, OrdemStatus, idVeiculo, idMecanico) values 
							('OS7895', '2025-03-10',500.5, '2025-03-15', 'Concluida', 1, 1),
                            ('OS8593', '2025-03-20',200.0, '2025-03-25', 'Encaminhada', 2, 1),
                            ('OS2569', '2025-03-24',2000.0,'2025-03-29', 'Processando', 3, 2),
                            ('OS8936', '2025-03-29',899.8, '2025-04-20', 'Emitida', 4, 1);
     
insert into pagamento (FormaPgt, DtPagamento, Valor, idOrdem) values 
							('Cartao','2025-03-10', 500.5, 1),
                            ('Cartao', '2025-03-20', 200.0, 2),
                            ('Cartao', '2025-03-24', 2000.0, 3),
                            ('Cartao', '2025-03-29', 899.8, 4);

insert into ordemPeca (idOrdem, idPeca, Quantidade) values 
							(1, 1, 10),
                            (2, 2, 1),
                            (3, 3, 5),
                            (4, 4, 3);
                            
insert into ordemServico (idServico, idOrdem, Quantidade) values 
							(1, 1, 1),
                            (2, 2, 1),
                            (3, 3, 1),
                            (3, 4, 1);
                                                        
-- CONSULTA DE DADOS

-- Buscar ordens de serviço em aberto (não finalizadas)
SELECT * FROM ordem WHERE OrdemStatus = 'Processando';

-- Quantas ordens de serviço foram concluídas em um mês
SELECT COUNT(*) AS serviços_concluidos_no_mês FROM ordem 
WHERE OrdemStatus = 'Concluida' 
AND DtConclusao BETWEEN '2025-03-01' AND '2025-03-31';

-- Quais mecânicos têm mais ordens de serviço concluídas:
SELECT m.nome, COUNT(os.idOrdem) AS total_os
FROM mecanico m
JOIN ordem os ON m.idMecanico = os.idMecanico
WHERE os.OrdemStatus = 'Concluida'
GROUP BY m.nome
ORDER BY total_os DESC;

-- Buscar veículos de um cliente
SELECT Modelo, Placa, Nome 
FROM veiculo v
INNER JOIN cliente c ON v.idCliente = c.idCliente
WHERE c.idCliente = 3;

-- Quais fornecedores forneceram mais peças
SELECT f.nome, COUNT(*) AS total_compras
FROM fornecedor f
JOIN peca p ON f.idFornecedor = p.idFornecedor
GROUP BY f.nome
ORDER BY total_compras DESC;

-- Buscar todas as ordens de serviço com detalhes do cliente e do veículo
SELECT os.idOrdem, os.OrdemStatus, os.DtEmissao, os.DtConclusao, v.modelo, v.placa
      -- c.nome AS cliente, v.modelo, v.placa
FROM ordem os
-- JOIN cliente c ON os.idCliente = c.idCliente
JOIN veiculo v ON os.idVeiculo = v.idCliente;

-- Ver o faturamento total da oficina por mês
SELECT DATE_FORMAT(DtConclusao, '%Y-%m') AS mes, SUM(Valor) AS faturamento
FROM ordem
WHERE OrdemStatus = 'Concluida'
GROUP BY mes
ORDER BY mes DESC;