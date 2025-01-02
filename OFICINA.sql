create database oficina;
use oficina;

-- criar tabela de clientes

create table Cliente(
		IDCliente int auto_increment primary key,
		tipo enum ('Física','Jurídica') not null,
		Nome varchar (50) not null,
		CPFCNPJ varchar (14) not null,
        contato varchar (11) not null,
        endereco varchar (255) not null,
        CONSTRAINT unique_cpf_Cliente UNIQUE (CPFCNPJ)
);

alter table Cliente auto_increment = 1;

-- criar tabela de veículos

create table Veiculo(
			idVeiculo int auto_increment primary key,
            idVCliente int,
            placa varchar (20) not null,
            cor varchar (20) not null,
            marca varchar (30) not null,
            modelo varchar (45) not null,
            Ano int not null,
			constraint fk_Veiculo_Cliente foreign key (idVCliente) references Cliente (IDCliente)
);

alter table Veiculo auto_increment = 1;

-- criar tabela de mecânico

create table mecanico(
		idMecanico int auto_increment primary key,
        MNome varchar (45) not null,
        MCPF varchar (11) not null,
        MContato varchar (11) not null,
        MEndereco varchar (255) not null,
        Especialidade varchar (50) not null,
        CONSTRAINT unique_cpf_mecanico UNIQUE (MCPF)
);

alter table mecanico auto_increment = 1;

-- criar tabela de peça

create table Peca(
		idPeca int auto_increment primary key,
        PNome varchar (30) not null,
        PDescricao varchar (255),
        PValor float
);

alter table Peca auto_increment = 1;

-- criar tabela de estoque

create table Estoque(
		idEstoque int auto_increment primary key,
        ELocal varchar (45)
);

alter table Estoque auto_increment = 1;

-- criar tabela de fornecedor

create table Fornecedor(
		idFornecedor int auto_increment primary key, 
		CNPJ varchar (14) not null, 
        FRazaos varchar (45) not null, 
		contato varchar (11) not null, 
		Address varchar (220) not null, 
		constraint unique_cnpj_Fornecedor unique (CNPJ)
);

alter table Fornecedor auto_increment = 1;

-- criar tabela de formas de pagamento

create table ModPagamento(
		idPag int auto_increment primary key,
		PModpag enum ('PIX','CARTÃO DE CRÉDITO','CARTÃO DE DÉBITO') not null
);

alter table ModPagamento auto_increment = 1;

-- criar tabela de relação formas de pagamento/ OS (PAGAMENTO)
create table Pagamento(
		idPagamento int auto_increment primary key,
        IDCliente int not null,
        idPag int not null,
        PDescricao varchar (20),
        PNum varchar (16),
		PValidade date,
        PCvv char(3),
        constraint fk_Pagamento_Cliente foreign key (IDCliente) references	Cliente (IDCliente),
        constraint fk_Pagamento_ModPagamento foreign key (idPag) references ModPagamento (idPag)
   );

alter table Pagamento auto_increment = 1;

-- criar tabela de relação peça/ estoque

create table PecEstoque (
		primary key (idPeca, idEstoque),
        idPeca int not null,
        idEstoque int not null,
        PEQauntidade int default 0,
        constraint fk_PecEstoque_Peca foreign key (idPeca) references Peca (idPeca),
        constraint fk_PecEstoque_Estoque foreign key (idEstoque) references Estoque (idEstoque)
);

-- criar tabela de relação peça/ fornecedor

create table PecFornecedor (
		primary key (idPeca, idFornecedor),
        idPeca int not null,
        idFornecedor int not null,
        PFQauntidade int default 0,
        constraint fk_PecFornecedor_Peca foreign key (idPeca) references Peca (idPeca),
        constraint fk_PecFornecedor_Fornecedor foreign key (idFornecedor) references Fornecedor (idFornecedor)
);

-- criar tabela de relação mecânico/ Serviço (Equipe)

create table Equipe(
		idEquipe int auto_increment primary key,
        idMecanico int not null,
        designacao ENUM('Conserto', 'Revisão') not null,
        constraint fk_Equipe_mecanico foreign key (idMecanico) references mecanico (idMecanico)
);

alter table Equipe auto_increment = 1;

-- criar tabela de relação (vistoria técnica)

create table Vtecnica (
		idVT int auto_increment primary key,
        IDCliente int not null,
        idVeiculo int not null,
        idEquipe int not null,
        avaliacao varchar (255) not null,
        valor_mobra float default 75.00,
        constraint fk_Vtecnica_Cliente foreign key (IDCliente) references Cliente (IDCliente),
        constraint fk_Vtecnica_Veiculo foreign key (idVeiculo) references Veiculo (idVeiculo),
        constraint fk_Vtecnica_Equipe foreign key (idEquipe) references Equipe (idEquipe)
);

alter table Vtecnica auto_increment = 1;

-- criar tabela de ordem de serviço (OS)

create table OS (
		idOs int auto_increment primary key,
        idVT int not null,
        idPagamento int not null,
        autorizacao boolean default false,
        OSVTotal float default 75.00,
        data_inicio timestamp default now(),
        Prev_Termino date,
        OSDescricao varchar (100),
        constraint fk_OS_Vtecnica foreign key (idVT) references Vtecnica (idVT),
        constraint fk_OS_Pagamento foreign key (idPagamento) references Pagamento (idPagamento)
);

alter table OS auto_increment = 1;

-- criar tabela serviços

create table servico(
			idServico int auto_increment primary key,
            idOs int not null,
            idEquipe int not null,
            Finalizado boolean default false,
            SStatus varchar (100) not null,
            constraint fk_servico_OS foreign key (idOs) references OS (idOs),
            constraint fk_servico_Equipe foreign key (idEquipe) references Equipe (idEquipe)
            
);
alter table servico auto_increment = 1;


-- criar tabela de relação peça/ SERVIÇO (REQUERIMENTO)

create table requerimento (
		primary key (idServico, idPeca),
        idServico int not null,
        idPeca int not null,
        RQuantidade int,
        RValor_total float,
        constraint FK_requerimento_servico foreign key (idServico) references servico (idServico),
        constraint FK_requerimento_Peca foreign key (idPeca) references Peca (idPeca)
);
