/* FMU - Faculdades Metropolitanas Unidas
   Cursãos	:CST em Análise e Desenvolvimentão de Sistemas
             CST em Sistemas para Internet
			 BEL em Sistemas de Informação
			 BEL em Ciência da Computação
			 CST em BIG DATA
    Disciplina: Banco de Dados
    Objetivo  : Criar o Banco de Dados e Tabelas para suporte ao curso de SQL
    Data: Segundo Semestre 2022

    CRIAÇÃO DO DATABASE SE ELE NÃO EXISTIR
--*/
IF NOT EXISTS
   (
--	Esta parte do Script verifica nãos objáetos do dicionário de dados que
--	se encontram não master.dbo chamado de sysdatabases se existe
-- 	Banco de Dados com o nome definido da cláusula WHERE
-- 	Se sim ele executa as instruções logo abaixo da instrução CREATE DATABASE.
	 SELECT name
	 FROM master.dbo.sysdatabases
     WHERE name = 'FmuBDTercaFeira'
    )
CREATE DATABASE FmuBDTercaFeira
GO
-- Slides 90 a 92
-- CRIAÇÃO DO SCHEMA
-- Dar foco para o DATABASE que queremos criar o SCHEMA
USE FmuBDTercaFeira;
-- O comando GO é usado para agrupar comandos SQL em lotes que são enviados jáuntos ao servidor
GO
--
-- Inicio do próximo lote de comandos
-- Slides 93 a 116
IF NOT EXISTS
	(
--	Esta parte do Script verifica nãos objáetos do dicionário de dados que
--	se encontram não sys.schemas se existe o SCHEMA com o nome definido da cláusula WHERE
-- 	Se sim ele executa as instruções logo abaixo da instrução CREATE SCHEMA.
	  SELECT SCHEMA_ID
	  FROM sys.schemas
	  WHERE [name] = 'tTerNoite'
	)
EXEC('CREATE SCHEMA tTerNoite')
GO
USE FmuBDTercaFeira;
GO
--
-- Inicio do próximo lote de comandos para criação de TABELAS
--
/* O lote de instruções linhas 53 a 63 são opcionais.
   Este lote de comando que tem inicio na linha 53, começa testando se
   se a TABELA que queremos criar EXISTE.
   Se a função OBJECT_ID retornar NULL, significa que a TABELA não EXISTE,
   casão contrário a tabela já existe e então precisamos excluí-la antes de
   recriá-la
*/
IF OBJECT_ID(N'tTerNoite.CURSO','U') IS NOT NULL
/* 	OBJECT_ID é uma função do T-SQL que identifica se objetos de dados
-- 	como tabela, views, indices existe. onde:
	'U' é um objáect type que faz referencia a uma TABELA,
  	'V' é um objáect type que faz referencia a uma View,ele
	'P' é um objáect type que faz referencia a "store procedure", etc..
*/
	DROP TABLE tTerNoite.CURSO;
	GO
--
-- Criação da tabela tTerNoite.CURSO
--
CREATE TABLE tTerNoite.CURSO
(
	codcurso			int			not null,
	siglacurso      	varchar(10) not null,
	nomecurso			varchar(60)	not null,
	integralizacao		smallint	not null,
	autorizacao			date		not null,
	reconhecimento		date				,
	notareconhecimento  decimal(5,2)not null,
	/* Definição da Chave Primária (PK) da tabela curso	*/
	CONSTRAINT PK_CURSO_codcurso PRIMARY KEY (codcurso)
);
GO
/* é necessário aqui uma observação sobre a definição da chave primária
   Na frase: CONSTRAINT PK_CURSO_codcurso PRIMARY KEY (codcurso)
             CONSTRAINT é o comando para definição de uma chave primária (PK) ou
			            chave estrangeira (FK)
			 PK_CURSO_codcurso é o nome da chave primária. é um mnemônico que
			 facilita a identificação da chave, vez que
			 PK refere-se ao tipo de caso, neste caso chave primária
			 CURSO refere-se a qual tabela pertence a chave primária
			 codcurso é a coluna selecionada para receber este status, isto é,
			 chave primária.
			 PRIMARY KEY é a definição da chave
*/	
--
--Criacao da tabela DEPARTAMENTO
--
CREATE TABLE tTerNoite.DEPARTAMENTO
(
	coddepto		int			not null,
	nomedepto		varchar(50)	not null,
	codfaculdade	int			not null,
	codcoordenador	int			not null
	CONSTRAINT PK_DEPARTAMENTO_coddepto PRIMARY KEY (coddepto)
);


--
-- Criação da tabela PROFESSOR
--
CREATE TABLE tTerNoite.PROFESSOR
(
	codprofessor	int	not     null,
	nomeprof		varchar(40)	not null,
	titulacao 		varchar(12) not null,
	coddepto		int			not null,
	CONSTRAINT PK_PROFESSOR_codprofessor 	PRIMARY KEY (codprofessor),
	CONSTRAINT FK_PROFESSOR_coddepto 		FOREIGN KEY (coddepto) REFERENCES tTerNoite.DEPARTAMENTO (coddepto)
);
--
-- Criação da tabela COORDENADOR
--
CREATE TABLE tTerNoite.COORDENADOR
(
	codcoordenador	int	not     null,
	nomecoordenador		varchar(40)	not null,
	titulacao 		varchar(12) not null,
	coddepto		int			not null,
	CONSTRAINT PK_COORDENADOR_codcoordenador 	PRIMARY KEY (codcoordenador),
	CONSTRAINT FK_COORDENADOR_coddepto 		FOREIGN KEY (coddepto) REFERENCES tTerNoite.DEPARTAMENTO (coddepto)
);
--
-- Criacao da tabela DISCIPLINA
--
CREATE TABLE tTerNoite.DISCIPLINA
(
	coddisciplina	int			not null,
	chavedisciplina varchar(17)	not null,
	codcurso		int			not null,
	coddepto		int			not null,
	nomedisciplina	varchar(100)	not null,
	seriecurso      smallint    not null,
	CONSTRAINT PK_DISCIPLINA_coddisciplina 	PRIMARY KEY (coddisciplina),
	CONSTRAINT FK_DISCIPLINA_codcurso 		FOREIGN KEY (codcurso) REFERENCES tTerNoite.CURSO(codcurso),
	CONSTRAINT FK_DISCIPLINA_coddepto 		FOREIGN KEY (coddepto) REFERENCES tTerNoite.DEPARTAMENTO(coddepto)
);

--
--Criação da tabela MATRICULA
--
CREATE TABLE tTerNoite.MATRICULA
(
	chavematricula 	char(15) 	not null,
	codmatricula 	char(11) 	not null,
	ra				int		 	not null,
	codcurso		int		 	not null,
	serie 			smallint 	not null,
	codturno 		smallint 	not null,
	codunidade 		smallint 	not null,
	unidade 		varchar(10) not null,
	codturma 		char(07) 	not null,
	siglaturno 		char(02)	not null,
	tipocurso 		varchar(12) not null,
	datamatricula 	date 		not null,
	coddisciplina 	int 		not null,
	sigladisciplina varchar(17) not null,
	situacao		varchar(11) not null,
	CONSTRAINT PK_MATRICULA_chavematricula 	PRIMARY KEY (chavematricula),
	CONSTRAINT FK_MATRICULA_codcurso		FOREIGN KEY (codcurso) 		REFERENCES tTerNoite.CURSO (codcurso),
	CONSTRAINT FK_MATRICULA_coddisciplina	FOREIGN KEY (coddisciplina) REFERENCES tTerNoite.DISCIPLINA (coddisciplina)
);
--
-- Criação da tabela GENERO
--
CREATE TABLE tTerNoite.GENERO
(	
	codgenero		int				not null,	
	genero			varchar(070)	not null,
    descricao		varchar(200),
	CONSTRAINT PK_GENERO_codgenero PRIMARY KEY (codgenero)	
);
--
-- Criação da tabela ESTADOCIVIL
--
CREATE TABLE tTerNoite.ESTADOCIVIL
(	
	codecivil		smallint	not null,	
	estadocivil		varchar(10)	not null,
	CONSTRAINT PK_GENERO_codecivil PRIMARY KEY (codecivil)
);
--
--Criação da tabela ALUNO
--
CREATE TABLE tTerNoite.ALUNO
(
	ra       	int 			not null,
	nomealuno 	varchar(100) 	not null,
	codcurso  	int 			not null,
	codgenero   int 		    not null,
	estadocivil char(05) 		not null,
	nascimento  date 		    not null,
	logradouro 	varchar(16),
	endereco 	varchar(100),
	numero 		smallint,
	complemento varchar(100),
	bairro 		varchar(60),
	cidade 		varchar(40),
	uf 			varchar(03),
	regiao 		varchar(16),
	pais 		char(02),
	cep 		char(08),
	email 		varchar(60),
	telefone 	varchar(20),
	situacao    varchar(11) not null,
	CONSTRAINT PK_ALUNO_ra       PRIMARY KEY (ra),
	CONSTRAINT FK_ALUNO_codcurso FOREIGN KEY (codcurso) REFERENCES tTerNoite.CURSO  (codcurso),
	CONSTRAINT FK_ALUNO_codgenero	 FOREIGN KEY (codgenero) 	REFERENCES tTerNoite.GENERO (codgenero)	
);
/* é necessário aqui uma observação sobre a definição da chave estrangeira
   Na frase: CONSTRAINT FK_ALUNO_codcurso FOREIGN KEY(codcurso) REFERENCES tTerNoite.CURSO(codcurso)
             CONSTRAINT é o comando para definição de uma chave primária (PK) ou
			            chave estrangeira (FK)
			 FK_ALUNO_codcurso é o nome da chave primária. é um mnemônico que
			 facilita a identificação da chave, vez que
			 FK refere-se ao tipo de caso, neste caso chave estrangeira
			 ALUNO refere-se a qual tabela pertence a chave estrangeira
			 codcurso é a coluna selecionada para receber este status, isto é,
			 chave estrangeira.
			 FOREIGN KEY é a definição da chave estrangeira
			 REFERENCES é o parâmetro para estabelecer a relação / assãociação entre
			 as tabelas: ALUNO e CURSO
*/			

--
-- Criação da tabela BOLETIM
--
CREATE TABLE tTerNoite.BOLETIM
(
	chavematricula	char(15)	not null,
	codmatricula 	char(11) 	not null,
	ra				int  		not null,
	codcurso 		int 		not null,
	serie 			smallint 	not null,
	coddisciplina	int			not null,
	sigladisciplina	varchar(17) not null,
	notan1			decimal(5,2),
	notan2			decimal(5,2),
	notaaps			decimal(5,2),
	CONSTRAINT PK_ALUNO_chavematricula PRIMARY KEY (chavematricula),
	CONSTRAINT FK_BOLETIM_codcurso 			FOREIGN KEY (codcurso)      REFERENCES tTerNoite.CURSO (codcurso),
	CONSTRAINT FK_BOLETIM_coddisciplina     FOREIGN KEY (coddisciplina) REFERENCES tTerNoite.DISCIPLINA (coddisciplina)
);

--
--Criação da tabela GRADE
--
CREATE TABLE tTerNoite.GRADE
(
	codmatricula 	char(11) 	not null,
	chavematricula	char(15) 	not null,
	unidade			varchar(10) not null,
	codcoordenador 	int 		not null,
	siglacurso      char(06)	not null,
	codcurso		char(03)	not null,
	serie 			smallint 	not null,
	coddisciplina	int 		not null,
	anoagenda 		int 		not null,
	semletivo		smallint 	not null,
	sigladisciplina varchar(18) not null,
	codturma		char(07)	not null,
	siglaturno 		char(02)	not null,
	horario			char(12)	not null,
	diasemana 		varchar(13) not null,
	codprofessor 	int 		not null,
	titulacao		varchar(13) not null,
	CONSTRAINT PK_GRADE_chavematricula 	PRIMARY KEY (chavematricula),
	CONSTRAINT FK_GRADE_codcoordenador 	FOREIGN KEY (codcoordenador) REFERENCES tTerNoite.COORDENADOR  (codcoordenador),
	CONSTRAINT FK_GRADE_coddisciplina 	FOREIGN KEY (coddisciplina)  REFERENCES tTerNoite.DISCIPLINA (coddisciplina),
	CONSTRAINT FK_GRADE_codprofessor 	FOREIGN KEY (codprofessor)   REFERENCES tTerNoite.PROFESSOR (codprofessor)
);