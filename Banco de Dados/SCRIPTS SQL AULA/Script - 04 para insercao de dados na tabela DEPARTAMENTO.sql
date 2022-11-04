/* FMU - Faculdades Metropolitanas Unidas
-- Cursos	:CST em An�lise e Desenvolvimento de Sistemas
             CST em Sistemas para Internet
			 BEL em Sistemas de Informa��o
			 BEL em Ci�ncia da Computa��o
			 CST em BIG DATA
-- Objetivo	:Inserir um grupo de tuplas no banco de dados criado em sala, na tabela
             DEPARTAMENTO 
-- Data: Segundo Semestre 2022
-- O INSERT faz parte do roll de instru��es SQL/ISO
*/
-- Abertura do banco de dado
USE FmuBDTercaFeira;
--
INSERT INTO tTerNoite.DEPARTAMENTO (coddepto,nomedepto,codfaculdade,codcoordenador)
VALUES 
('211','Matem�tica','311','100368'),
('212','Sistemas da Informa��o','312','100304'),
('213','Ci�ncia da Computacao','313','100032'),
('214','Comunica��o e Express�o','314','100333'),
('215','Administra��o','315','5'),
('216','Ci�ncias Contabeis','316','100216'),
('217','Tecnologia da Informacao','317','100576'),
('218','Pedagogia','318','100145'),
('219','Historia','319','100018'),
('220','Geografia','320','100026'),
('221','Tecnologia da Gestao','321','100710');