/* FMU - Faculdades Metropolitanas Unidas
-- Cursos	:CST em An�lise e Desenvolvimento de Sistemas
             CST em Sistemas para Internet
			 BEL em Sistemas de Informa��o
			 BEL em Ci�ncia da Computa��o
			 CST em BIG DATA
-- Objetivo	:Inserir um grupo de tuplas no banco de dados criado em sala, na tabela
             ESTADOCIVIL 
-- Data: Segundo Semestre 2022
-- O INSERT faz parte do roll de instru��es SQL/ISO
*/
USE FmuBDTercaFeira;
INSERT INTO tTerNoite.ESTADOCIVIL (codecivil, estadocivil)
VALUES 
(1,'casado'),
(2,'divorciado'),
(3,'separado'),
(4,'solteiro'),
(5,'viuvo');