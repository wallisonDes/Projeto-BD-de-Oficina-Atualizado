use oficina;

-- Inserindo valores na tabela cliente

insert into Cliente (tipo, Nome, CPFCNPJ, contato, endereco)
		values ('Física','Augosto Mamede hick Sefom','07532415696','11995236574','R. Triunvirato, 172 - Cidade Líder, São Paulo - SP, 08280-170'),
				('Física','Margarete Hatmal Chez','18562412196','11995244574','R. Firmino Morgado, 400 - Jardim Brasilia, São Paulo - SP, 03583-000'),
                ('Jurídica','Halal Baruk LTDA','46288878000175','11989676065','R. Manuel Pinheiro de Albuquerque - Cidade Líder, São Paulo - SP, 03582-080'),
                ('Física','João Marcos Silva e Silva','17352458696','11987453256','R. Maria Paulina da Conceição, 286 - Vila Pte. Rasa, São Paulo - SP, 03882-020'),
                ('Jurídica','Chico Restaurante LTDA','40918391000142','1120412388','Av. São Miguel, 4779 - Pte. Rasa, São Paulo - SP, 03871-100'),
                ('Física','Espedito Jefersom Jaime','08522415796','11985278574','Av. Vinte e Quatro de Fevereiro, 530, Vila Rui Barbosa, São Paulo-SP, 03734-090');


-- Inserindo valores na tabela veículo

insert into Veiculo (idVCliente, placa, cor, marca, modelo, Ano)
			values (1,'OTM2X22','PRETO','FIAT','UNO','2017'),
                   (2,'GWD2A85','VERMELHO','FIAT','ARGO','2022'),
                   (3,'DFC8K82','BRANCA','KIA','GS Grand','2004'),
                   (4,'ABD9Y52','PRETO','HYUNDAI','TUCSON','2018'),
                   (5,'OPU2W23','CIANO','FIAT','UNO','2017'),
                   (6,'LMK5Q82','MARRON','VOLKSWAGEN','Nivus','2023'),
                   (1,'ZEC8I22','VERMELHO','VOLKSWAGEN','POLO','2020'),
                   (3,'YJN2Q96','BRANCO','PEUGEOT','Expert Minibus','2019'),
                   (3,'OGT1F22','PRATA','Chevrolet ','Zafira ','2004');
                   

-- Inserindo valores na tabela MECâNICO
insert into mecanico (MNome, MCPF, MContato, MEndereco, Especialidade)
			values ('Karina Jimenes Espada','64823240618','11931314376','Av. Pedras Preciosas - Nova Fazendinha, Carapicuíba - SP, 06351-350','elétrica e eletrônica de automóveis'),
				   ('Taís Cervantes de Assunção','33724257740','11923212635','R. Tsuneo Morioka, 15 A - Vila Silviania, Carapicuíba - SP, 06382-110','sistemas de arrefecimento'),
                   ('Arthur Galvão Mascarenhas','53548585507','11932552226','R. Imperador Montezuma, 63 - Jardim Roberto, Osasco - SP, 06124-160','freios'),
                   ('David Osório Galindo de Junqueira','49303521340','12923478452','R. Antônio Marquês dos Santos, 11 - Jardim Roberto, Osasco - SP, 06170-070','amortecedores e suspensões'),
                   ('Fernando Bittencourt','85188127806','11923677056','R. Alm. Barroso, 101 - Veloso, Osasco - SP, 06152-100','Mecânica de Veículos Elétricos e Híbridos'),
                   ('Genir Sanches de Barbosa','79458457203','11923818828','R. Cidade de Bagdá, 368 - Vila Mira, São Paulo - SP, 04377-035','estética automotiva'),
                   ('Jorge Gilson Lovato de Rodrigues','71446213277','11935234524','R. João Gomes Batista, 1129-1107 - Vila Inglesa, São Paulo - SP, 04653-229','sistemas de direção'),
                   ('Eustáquio Laércio Esteves Madeira','66331404520','18921133582','Rua Franklin Lewis Gemmel, 55 - Parque Res. Julia, São Paulo - SP, 04671-320','funilaria'),
                   ('Bianca Sabrina Molina Salazar','25571069414','11931401769','R. Carijós, 928 - Vila Alzira, Santo André - SP, 09180-000','Mecânica de Transmissão'),
                   ('Emílio Renato de Aragão Neto','50768095654','11921960265','R. Carijós, 928A - Vila Alzira, Santo André - SP, 09180-000','Tuning e Modificações de Alto Desempenho');
                   

-- Inserindo valores na tabela Peças
insert into Peca (PNome, PDescricao, PValor)
			values ('Amortecedor','Amortecedor Fox 2004 a 2015 Dianteiro Motorista Passageiro Nakata HG33017','368.74'),
				   ('Kit Batente Coifa','FIAT UNO 2002 a 2015 Nakata Dianteiro NK0421','30.63'),
                   ('Filtro Óleo','Gol G2 G3 G4 G5 G6 Fox UNO 1.0 1.6 MANN-FILTER W7125','17.95'),
                   ('Jogo Junta Motor','Fox Gol ARGO Voyage 2002 a 2022 Completo Sabó 80358FLEX','309.33'),
                   ('Coxim Motor','HYUNDAI TUCSON 2009 a 2022 Dianteiro Passageiro Mobensani MB3003A','194.63'),
                   ('Caixa Direção Hidráulica','Celta Classic Corsa 96 a 2016 Sem Terminal TRW JRP1382','2274.74'),
                   ('Suporte Barra Tensora','Chevrolet Celta 2001 a 2015 Dianteiro Motorista Nakata','76.59'),
                   ('Motor Vidro Elétrico','Mabuchi Universal 12V Motorista Tiger Auto TG0315.001E','70.20'),
                   ('Alavanca Freio de Mão','Uno Fiorino 84 a 2013 Com Vareta Finder 010140','130.05'),
                   ('Kit 2 Pneu Continental','Aro 16 205/60r16 92H PowerContact 2','963.81'),
                   ('Canceller Adaptador Farol','Led HB3 HB4 HIR2 Canbus 12V Philips 18952C2','160.69'),
                   ('Central Multimídia','Pioneer AVHZ5280TV Tela 6.8" Touch TV DVD USB AUX Bluetooth','3104.74'),
                   ('Compressor Ar Condicionado','Peugeot Expert Minibus 6PK Denso YN4371900811RC','2105.94'),
                   ('Condensador Ar Condicionado','VOLKSWAGEN Nivus 2.8 16V 2015 a 2024 Denso DI261433-0630RC','1096.21'),
                   ('Correia Alternador','VOLKSWAGEN POLO 2013 até 2018 Micro V Gates 5PK1030SF','81.58'),
                   ('Kit Embreagem','Chevrolet Zafira 2019 > S500 Automatizado Valeo 827483','5433.63'),
                   ('Radiador','Volkswagen Parati 2001 > 2002 Série Fun Manual 1 Valeo 6Ab011A','562.13');
                   
-- Inserindo valores na tabela Estoque
insert into Estoque (ELocal)
			values ('Matriz'),
				   ('Osasco'),
                   ('Guarulhos'),
                   ('Suzano'),
                   ('São Bernardo do Campo');
				
                   
-- Inserindo valores na tabela Peça / Estoque
insert into PecEstoque (idPeca, idEstoque, PEQauntidade)
			values (1,1,'15'),
				   (2,1,'52'),
                   (3,1,'40'),
                   (4,1,'20'),
                   (5,2,'32'),
                   (6,3,'11'),
                   (7,5,'0'),
                   (8,2,'54'),
                   (9,4,'100'),
                   (10,1,'12'),
                   (11,5,'50'),
                   (12,3,'50'),
                   (13,4,'30'),
                   (14,3,'21'),
                   (15,2,'25'),
                   (16,2,'60'),
                   (17,1,'80');
      
-- Inserindo valores na tabela Fornecedor
insert into Fornecedor (CNPJ, FRazaos, contato, Address)
			values ('27256733000148','Automobilismo Ciborgue','2437167004','R. Doze, 238 - Cidade Jardim Itatiaia, Itatiaia - RJ, 27580-000'),
				   ('14361957000178','Dish Refrigeração','8538214282','R. Dez, 532 bairro - Jenipapeiro, Maracanaú - CE, 61906-030'),
                   ('77588934000110','Improvised Automobilismo','1133420871','R. Porto Alegre, 402 - Vila Bertioga, São Paulo - SP, 03185-020'),
                   ('57144028000110','Automobilismo Titan','1134226712','R. Agamenom Magalhães, 2-256 - Parque Gerassi, Santo André - SP, 09120-290'),
                   ('27753042000150','Owners Auto Peças','4133420871','R. Mandaguari, 178-218 - Cruzeiro, São José dos Pinhais - PR, 83010-040');


SELECT 
    PecEstoque.idPeca,
    Peca.PNome,
    PecEstoque.idEstoque,
    Estoque.ELocal,
    PecEstoque.PEQauntidade
FROM 
    PecEstoque
JOIN 
    Estoque ON PecEstoque.idEstoque = Estoque.idEstoque
JOIN 
    Peca ON PecEstoque.idPeca = Peca.idPeca
WHERE 
    PecEstoque.PEQauntidade < 20;


-- Quais veículos foram cadastrados e suas respectivas placas?
SELECT Modelo, Placa FROM Veiculo;


-- Quais clientes possuem o tipo "Jurídica"?
SELECT Nome, Tipo FROM Cliente
WHERE Tipo = 'Jurídica';

-- Inserindo valores na tabela Peça/ Fornecedor
insert into PecFornecedor (idPeca, idFornecedor, PFQauntidade)
			values (1,6,'85'),
				   (10,9,'88'),
                   (6,10,'89'),
                   (7,6,'100');

-- Inserindo valores na tabela ModPagamento
insert into ModPagamento (PModpag)
			values ('PIX'),
				   ('CARTÃO DE CRÉDITO'),
                   ('CARTÃO DE DÉBITO');
			
-- Inserindo valores na tabela Pagamento
insert into Pagamento (IDCliente, idPag, PDescricao, PNum, PValidade, PCvv)
			values (1,1,'Aplicativo',null,null,null),
				   (2,2,'Maquineta','4376518208675800','2024.11.01','754'),
                   (3,3,'SP WEB','4443116764634623','2026.06.01','657'),
                   (4,2,'Maquineta','4977064158890258','2029.07.01','190'),
                   (5,1,'Aplicativo',null,null,null),
                   (6,3,'Site','5556030854728718','2025.07.01','581'),
                   (3,1,'SP WEB',null,null,null);
                   

-- Inserindo valores na tabela Equipe
insert into Equipe (idMecanico, designacao)
			values (1,'Conserto'),
				   (2,'Revisão'),
                   (3,'Revisão'),
                   (4,'Revisão'),
                   (5,'Conserto'),
                   (6,'Conserto'),
                   (7,'Revisão'),
                   (8,'Conserto'),
                   (9,'Revisão'),
                   (10,'Conserto');


-- Inserindo valores na tabela VISTORIA Técnica
insert into Vtecnica (IDCliente, idVeiculo, idEquipe, avaliacao, valor_mobra)
			values (1,1,10,'Conserto e torca de peças','350.00'),
				   (2,2,1,'Toca de Painel de controle','300.00'),
                   (3,3,2,'Revisão Geral','400.00'),
                   (4,4,3,'Revisão Arrefecimento','320.00'),
                   (5,5,4,'torca de peças','75.00'),
                   (6,6,8,'Conserto, lataria','190.00'),
                   (3,8,7,'Revisão e Balancemanto','200.00'),
                   (3,9,9,'Revisão e Alinhamento','230.00');


-- Qual é o valor total de peças (RQuantidade * PValor) necessário para o serviço com ID 1?
SELECT r.idServico, p.PNome, r.RQuantidade, p.PValor, (r.RQuantidade * p.PValor) AS ValorTotal
FROM requerimento r
JOIN Peca p ON r.idPeca = p.idPeca
WHERE r.idServico = 1;


-- Inserindo valores na tabela ORDEM DE SERVIÇO
insert into OS (idVT, idPagamento, autorizacao, OSVTotal, data_inicio, Prev_Termino, OSDescricao)
			values (1,1,true,'380.63',default,'2025.01.06','Troca kit batente Coifa e vazamento no tanque'),
				   (2,2,true,'3454.74',default,'2025.01.03','Troca painel de controle'),
                   (3,3,false,default,default,'2025.01.10','Revisão Geral');


-- Inserindo valores na tabela SERVIÇO
insert into servico (idOs, idEquipe, Finalizado, SStatus)
			values (1,10,false,'Início de serviço consertando vazamento');
            
            
-- Inserindo valores na tabela Requerimento
insert into requerimento (idServico, idPeca, RQuantidade, RValor_total)
			values (1,2,'1','30.63');
            
            
-- Quais fornecedores têm mais de 50 peças associadas a eles no estoque?
SELECT f.FRazaos, SUM(pf.PFQauntidade) AS TotalPecas
FROM Fornecedor f
JOIN PecFornecedor pf ON f.idFornecedor = pf.idFornecedor
GROUP BY f.idFornecedor
HAVING SUM(pf.PFQauntidade) > 50;


select * from cliente;
select * from Veiculo;
select * from mecanico;
select * from Equipe;
select * from Peca;
select * from Estoque;
select * from PecEstoque;
select * from Fornecedor;
select * from PecFornecedor;
select * from ModPagamento;
select * from Pagamento;
select * from Vtecnica;
select * from OS;
select * from servico;
select * from requerimento;


