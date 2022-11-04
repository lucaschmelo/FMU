/* FMU - Faculdades Metropolitanas Unidas
-- Cursos	:CST em Análise e Desenvolvimento de Sistemas
             CST em Sistemas para Internet
			 BEL em Sistemas de Informação
			 BEL em Ciência da Computação
			 CST em BIG DATA
-- Objetivo	:Resolver o problema de violacao de integridade referencial entre as tabelas PROFESSOR e GRADE
-- Data: Segundo Semestre 2022
-- O INSERT faz parte do roll de instruções SQL/ISO
*/
-- Abertura do banco de dado
USE FmuBDTercaFeira;
--
ALTER TABLE tTerNoite.PROFESSOR ALTER COLUMN nomeprof varchar(70) not null;
INSERT INTO tTerNoite.PROFESSOR(codprofessor,nomeprof,titulacao,coddepto)
VALUES
(100002,'Milton Nascimento Travessia','MESTRE',218),
(100084,'Francisco Buarque de Holanda Geni','MESTRE',218),
(100098,'Magali Costa','MESTRE',218),
(100322,'Maria Bhetania Carcara Veloso','MESTRE',218),
(100358,'Caetano Vela Veloso Alegria Alegria','MESTRE',218),
(100378,'Gilberto Gil Procissão','MESTRE',218),
(100448,'João Bossa Nova Gilberto','MESTRE',218),
(100465,'Thompson Brasileiro Jobim Sabia','MESTRE',218),
(100561,'Geraldo Vandre Follow of Flowers','MESTRE',218),
(100750,'Eduardo Lobo do Canto Triste','MESTRE',218),
(100751,'Vinicius Poetinha de Moraes','ESPECIALISTA',218),
(100752,'Antonio Pecci Tokinho Filho','ESPECIALISTA',218),
(100754,'Elis Pimentinha Regina Carcara','MESTRE',218),
(100756,'Dorival Maracangaia Caymmi','ESPECIALISTA',218);