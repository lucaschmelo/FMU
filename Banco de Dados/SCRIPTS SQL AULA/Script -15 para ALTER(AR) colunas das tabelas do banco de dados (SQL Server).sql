/* FMU - Faculdades Metropolitanas Unidas
   Cursos	     : CST em Análise e Desenvolvimento de Sistemas
                   CST em Sistemas para Internet
			       BEL em Sistemas de Informação
			       BEL em Ciência da Computação
			       CST em BIG DATA
    Disciplina   : Banco de Dados
    Objetivo	 : ALTER(AR) colunas das tabelas do Banco de dados.
	Justificativa: Haverá situações onde após a criação da tabelas onde o DBA ou desenvolvedores precisarão alterar
	               nome das colunas; tipo de dados das colunas; dimensão das colunas e redefinição de chaves primárias
				   e chaves estrangeiras.
				   Embora a regra 9. Regra da independência dos dados lógicos(Doze REgras de Codd) declare que:
				   "Usuários podem alterar o esquema do banco de dados sem precisar recriá-lo ou recriar os aplicativos
 				    criados nele" é necessário aplicar estas alterações com muito cuidado, baseado na documentação do 
					projeto do banco de dados, sob pena de impactar o funcionamento das aplicações.
    Data: Segundo Semestre 2022
--*/
USE FmuBDTercaFeira;
GO
-- Slide 122: Alterando o tipo de dados de char(03)para int. Lembrar que os tipos de dados ideais para PK e FK é INTEGER
--            Um tipo de dados inteiro ocupa 4 bytes e um char(03) ocupa exatamente 3 bytes.
ALTER TABLE tTerNoite.GRADE ALTER COLUMN codcurso int not null;
-- Slide 123: Alterando o tipo de dados de decimal(5,2)para int. 
--            Um tipo de dados inteiro ocupa 4 bytes e um decimal(5,2) ocupa exatamente 5 bytes.
ALTER TABLE tTerNoite.CURSO ALTER COLUMN notareconhecimento int not null;
-- Slide 124: Alterando o tamanho de uma coluna tipo varchar de 50 para 60
--            Um tipo varchar(n) tem tamanho de n+2 bytes.
ALTER TABLE tTerNoite.CURSO ALTER COLUMN nomecurso varchar(60) not null;
-- Slide 125: Alterando o tamanho de uma coluna tipo varchar de 50 para 74
--            Um tipo varchar(n) tem tamanho de n+2 bytes.
ALTER TABLE tTerNoite.DISCIPLINA ALTER COLUMN nomedisciplina varchar(100) not null;
-- Slide 126: Alterando o nome da coluna notareconhecimento para notarec
--            No SQL Server não é possível alterar o nome da coluna utilizando a instrução ALTER.
--            Ou se utiliza a estragégia de DRO(AR) uma coluna e criar outra com o nome desejado,
--            com a inconveniëncia de acrescentar a nova coluna no final o que causará problema
--            na instrução INSERT.
--            Assim sendo, vamos utilizar a Stored Procedure [sp_rename]
--            Sintaxe: EXEC sp_rename 'SchemaName.TableName.ColunaOriginal', 'NovoNomeColuna', 'COLUMN'
EXEC sp_rename 'tTerNoite.CURSO.notareconhecimento', 'notarec', 'COLUMN';
--            Após alteração do nome, redefine-se o tipo de dados da coluna
ALTER TABLE tTerNoite.CURSO ALTER COLUMN notarec smallint not null;
-- Slide 128: Alterando o nome da coluna acrondisciplina para sigladisciplina
--            No SQL Server não é possível alterar o nome da coluna utilizando a instrução ALTER.
--            Ou se utiliza a estragégia de DRO(AR) uma coluna e criar outra com o nome desejado,
--            com a inconveniëncia de acrescentar a nova coluna no final o que causará problema
--            na instrução INSERT.
--            Assim sendo, vamos utilizar a Stored Procedure [sp_rename]
--            Sintaxe: EXEC sp_rename 'SchemaName.TableName.ColunaOriginal', 'NovoNomeColuna', 'COLUMN'
EXEC sp_rename 'tTerNoite.MATRICULA.acrondisciplina', 'sigladisciplina', 'COLUMN';
--            Após alteração do nome, redefine-se o tipo de dados da coluna
ALTER TABLE tTerNoite.MATRICULA ALTER COLUMN sigladisciplina varchar(17) not null;
-- Slide 130: Acrescentar uma nova coluna à tabela GENERO.
 --
ALTER TABLE tTerNoite.GENERO ADD descricao varchar(200) not null;
--Slide 131   Redefinir uma chave primária na tabela BOLETIM
--            Aqui precisamos EXCLUIR a variável que representa a chave primária, neste caso PK_BOLETIM_codmatricula
ALTER TABLE tTerNoite.BOLETIM DROP CONSTRAINT  PK_BOLETIM_codmatricula;
--            Recriar a variável considerando a nova chave primária que agora é chavematricula
ALTER TABLE tTerNoite.BOLETIM ADD  CONSTRAINT  PK_BOLETIM_chavematricula PRIMARY KEY (chavematricula);

--          Alternar o nome da coluna sexo da tabela ALUNO para codgenero
EXEC sp_rename 'tTerNoite.ALUNO.sexo', 'codgenero', 'COLUMN';
--          Alteranar o nome da coluna idade da tabela ALUNO para datnasc
EXEC sp_rename 'tTerNoite.ALUNO.idade', 'datnasc', 'COLUMN';
--          Alterando o tipo de dados da coluna datnasc da tabela ALUNO para date
--          Considerando que o tipo de dado original é smallint que por sua vez é incompatível com DATE
--          Vamos alterar o smallint para varchar(10) e depois para date.
ALTER TABLE tTerNoite.ALUNO ALTER COLUMN datnasc varchar(10) not null;
ALTER TABLE tTerNoite.ALUNO ALTER COLUMN datnasc date        not null;



