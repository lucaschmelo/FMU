/*  FMU - Faculdades Metropolitanas Unidas
    Curso: CST em Análise e Desenvolvimento de Sistemas
    Disciplina: Banco de Dados
    Objetivo: Criar o Banco de Dados e Tabelas (atividade proposta na Análise Prática Supervisionada (APS))
    Data: 22/10/2022 - segundo Semestre 2022
	Ultima Versão:03/11/2022
	Conclusão:03/11/2022
	Integrantes do projeto:
	Douglas Santos da Silva - RA: 1662860
	Guilherme Gusmão Delgado - RA: 1690075
	Karina Xavier Ramolo - RA: 1616245
	Lucas Chaves de Melo - RA: 1659970
	Maria Helena Santos Silva - RA: 1625169
*/

-- CRIAR O BANCO DE DADOS SE ELE NÃO FOR EXISTENTE

IF NOT EXISTS
   (
	 SELECT name
	 FROM master.dbo.sysdatabases
     WHERE name = 'UpperComputerDB'
    )
CREATE DATABASE UpperComputerDB
GO

-- CRIAÇÃO DO SCHEMA

USE UpperComputerDB;

GO

IF NOT EXISTS
	(
	  SELECT SCHEMA_ID
	  FROM sys.schemas
	  WHERE [name] = 'uComputer'
	)
EXEC('CREATE SCHEMA uComputer')
GO

USE UpperComputerDB;
GO

IF OBJECT_ID(N'uComputer.PROJETO','U') IS NOT NULL

DROP TABLE uComputer.PROJETO;
GO

-- Criação da tabela uComputer.PROJETO

CREATE TABLE uComputer.PROJETO
(
	codigoprojeto				int				not null,
	nomeprojeto      			varchar (100) 	not null,
	datainicioprojeto			date			not null,
	terminoprevistoprojeto		date			not null,
	terminoprojeto				date			not null,
	statusprojeto				varchar (30)	not null,		
	horaprevistaprojeto			varchar (15)	not null,
	horaprojeto					varchar (15)	not null,
	CONSTRAINT PK_PROJETO_codigoprojeto 		PRIMARY KEY (codigoprojeto),
);
GO

-- Criacao da tabela uComputer.TAREFA_PROJETO

CREATE TABLE uComputer.TAREFA_PROJETO
(
	codigotarefa		int				not null,
	descricaotarefa		varchar(100)	not null,
	nometarefa			varchar(20)		not null,
	CONSTRAINT PK_TAREFA_PROJETO_codigotarefa PRIMARY KEY (codigotarefa)
);

-- Criação da tabela uComputer.ATIVIDADE_PROJETO

CREATE TABLE uComputer.ATIVIDADE_PROJETO
(
	codigoatividade			int				not null,
	descricaoatividade		varchar(100)	not null,
	nomeatividade 			varchar(30) 	not null,
	CONSTRAINT PK_ATIVIDADE_PROJETO_codigoatividade PRIMARY KEY (codigoatividade)
);

-- Criação da tabela uComputer.FERRAMENTA_PROGRAMACAO

CREATE TABLE uComputer.FERRAMENTA_PROGRAMACAO
(	
	codigoferramenta			int				not null,
	nomeferramenta				varchar(40)		not null,
	fabricanteferramenta 		varchar(20) 	not null,
	versaoferramenta			decimal(5,2)	not null,
	CONSTRAINT PK_FERRAMENTA_PROGRAMACAO_codigoferramenta 		PRIMARY KEY (codigoferramenta)
);


-- Criacao da tabela uComputer.RECURSO

CREATE TABLE uComputer.RECURSO
(
	nomefunc				varchar (70)	not null,
	numeroregistrofunc 		int				not null,
	salariofunc				varchar	(10)	not null,
    codanalista				int				not null,
    codprogramador			int				not	null,
	codgerente				int				not	null,
	cargo					varchar(30)		not null,
	codigoferramenta		int				not null,
	CONSTRAINT PK_RECURSO_numeroregistrofunc	PRIMARY KEY (numeroregistrofunc),
	CONSTRAINT FK_RECURSO_codigoferramenta FOREIGN KEY (codigoferramenta) REFERENCES uComputer.FERRAMENTA_PROGRAMACAO(codigoferramenta),
);

-- Criação da tabela uComputer.EQUIPE

CREATE TABLE uComputer.EQUIPE
(	
	numeroregistrofunc 		int				not null,
	quantidaderecursos		int				not null,
    codigoprojeto 		    int			    not null,
	nomeprojeto      		varchar (70) 	not null,
	codgerente				int				not	null,
	CONSTRAINT PK_EQUIPE_codgerente	PRIMARY KEY (codgerente),
	CONSTRAINT FK_EQUIPE_numeroregistrofunc FOREIGN KEY (numeroregistrofunc) REFERENCES uComputer.RECURSO(numeroregistrofunc),
	CONSTRAINT FK_EQUIPE_codigoprojeto 		FOREIGN KEY (codigoprojeto) REFERENCES uComputer.PROJETO(codigoprojeto)
);

-- Criação da tabela uComputer.CONTATO

CREATE TABLE uComputer.CONTATO
(
	numeroregistrofunc 		int				not null,
	telresidencialrecurso 	varchar (20)  	not null,
	telcomercialrecurso 	varchar (20) 	not null,
	telcelularrecurso		varchar (20) 	not null,
	ramalrecurso			int	    		not null,
    CONSTRAINT FK_CONTATO_numeroregistrofunc 	FOREIGN KEY (numeroregistrofunc) REFERENCES uComputer.RECURSO(numeroregistrofunc),
);


-- Criação da tabela uComputer.BASE_HISTORIA_SALARIAL

CREATE TABLE uComputer.BASE_HISTORICA_SALARIAL
(
	numeroregistrofunc 	int				not null,
	datadoaumento       date			not null,
	valordoaumento 		varchar(18)		not null,
	salatualfunc		varchar(18)		not null,
    CONSTRAINT FK_BASE_HISTORICA_SALARIAL_numeroregistrofunc FOREIGN KEY (numeroregistrofunc) REFERENCES uComputer.RECURSO(numeroregistrofunc),
	CONSTRAINT PK_BASE_HISTORICA_SALARIAL_salatualfunc	PRIMARY KEY (salatualfunc)
);