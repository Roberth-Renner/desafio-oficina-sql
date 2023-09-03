
					                             					-- CRIAÇÃO DE TABELAS -- 
show databases;
create database oficina;
use oficina;

-- CRIANDO TABELA CLIENTE --


create table Cliente(
					 idCliente int auto_increment primary key,
					 AutorizacaoOrdemServico boolean not null,
                     FNome varchar(10) not null,
                     lNome varchar(10) not null,
                     CPF char(11) not null unique,
                     Contato char(11) not null
);


-- CRIANDO TABELA SERVICOS --

create table Servicos(
					  idServicos int auto_increment primary key,
                      TipoServiço ENUM('Manutenção corretiva', 'Revisão periódica') not null,
                      Descricao varchar(250) not null,
                      CodigoServico char(7) not null
);

-- CRIANDO TABELA PECAS --


create table Pecas(
					idPecas int auto_increment primary key,
                    Categoria ENUM('Carroceria', 'Componentes elétricos', 'Motor', 'Sistema de transmissão', 'Sistema de Suspensão', 'Sistema de Freio') not null,
                    NomePeca varchar(45) not null
);


-- CRIANDO TABELA EQUIPE --

create table Equipe(
					idEquipe int auto_increment primary key,
                    EspecialidadeEquipe ENUM('Carroceria e Componentes elétricos', 'Motor e Sistema de transmissão', 'Sistema de Suspensão e Sistema de Freio') not null
);


-- CRIANDO TABELA MECANICOS --

create table Mecanicos(
					   idMecanico int auto_increment primary key,
                       CPF char(11) not null unique,
                       FNome varchar(15) not null,
                       LNome varchar(15) not null,
                       Endereco varchar(250) not null,
                       Especialidade ENUM('Carroceria', 'Componentes elétricos', 'Motor', 'Sistema de transmissão', 'Sistema de Suspensão', 'Sistema de Freio') not null,
                       idEquipe int,
                       constraint fk_Mecanico_Equipe foreign key (idEquipe) references Equipe(idEquipe)
);

-- CRIANDO TABELA ORDEM DE SERVIÇO --

create table OrdemServico(
						   idOrdemServico int auto_increment,
                           idEquipe int,
                           idCliente int,
                           NumeroOrdem char(5),
                           DataEmissao date not null,
                           OsStatus ENUM('Esperando aprovação', 'Orçamento Aprovado', 'Orçamento Reprovado') not null,
                           DataConclusao date not null,
                           ValorTotal float not null,
                           primary key(idOrdemServico, idEquipe, idCliente),
                           constraint fk_Cliente_OrdemServico foreign key (idCliente) references Cliente(idCliente),
                           constraint fk_Equipe_OrdemServico foreign key (idEquipe) references Equipe(idEquipe)

);


-- CRIANDO TABELA DE RELAÇÃO DE N PARA M, ENTRE ORDEM DE SERVICO E PEÇAS --

create table Relacao_Os_Pecas(
							  idRelacao_Os_Pecas int,
                              idOrdemServico int,
                              idPecas int,
                              QuantidadePeca int not null,
                              ValorUnitárioPeca float not null,
                              primary key(idPecas, idOrdemServico, idRelacao_Os_Pecas),
                              constraint fk_Pecas_OrdemServico foreign key (idPecas) references Pecas(idPecas),
							  constraint fk_OrdemServico_Pecas foreign key (idOrdemServico) references OrdemServico(idOrdemServico)

);

-- CRIANDO TABELA DE RELAÇÃO DE N PARA M, ENTRE ORDEM DE SERVICO E SERVIÇOS --

create table Relacao_Os_Servicos(
								 idRelacao_Os_Servicos int,
                                 idOrdemServico int,
                                 idServico int,
                                 ValorServico float not null,
                                 primary key(idRelacao_Os_Servicos, idOrdemServico, idServico),
                                 constraint fk_Servicos_OrdemServico foreign key (idServico) references Servicos(idServicos),
                                 constraint fk_OrdemServico_Servicos foreign key (idOrdemServico) references OrdemServico(idOrdemServico));







