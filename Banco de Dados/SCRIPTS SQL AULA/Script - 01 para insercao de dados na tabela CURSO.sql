/* FMU - Faculdades Metropolitanas Unidas
-- Cursos	:CST em Análise e Desenvolvimento de Sistemas
             CST em Sistemas para Internet
			 BEL em Sistemas de Informação
			 BEL em Ciência da Computação
			 CST em BIG DATA
-- Objetivo	:Inserir um grupo de tuplas no banco de dados criado em sala, na tabela
             CURSO 
-- Data: Segundo Semestre 2022
-- Aplica-se toda vez em que tiver a necessidade de inserir acima de 1000 tuplas
   O INSERT faz parte do roll de instruções SQL/ISO
*/
USE FmuBDTercaFeira;
-- Abertura do banco de dados
--
--SET LANGUAGE us_english; -- Set"ando" a data do sistema que está no formato Portugues para o formato Ingles
--SET DATEFORMAT dmy
---
INSERT INTO tTerNoite.CURSO (codcurso,siglacurso,nomecurso,integralizacao,autorizacao,reconhecimento,notareconhecimento)
VALUES
(120,'ADM','Bacharelado em Administração',9,'17/02/10','17/02/19',4),
(121,'CCOMP','Bacharelado em Ciência da Computação',9,'23/09/95','23/09/04',5),
(122,'CCONT','Bacharelado em Ciências Contábeis',9,'02/02/80','02/02/89',4),
(123,'MATE','Bacharelado em Matemática',9,'24/01/94','24/01/03',4),
(124,'PEDA','Bacharelado em Pedagogia',9,'28/06/82','28/06/91',4),
(125,'SISINF','Bacharelado em Sistemas de Informação',9,'03/02/14','03/02/23',4),
(126,'ADSI','CST em Análise e Desenvolvimento de Sistemas',6,'25/08/98','25/08/04',5),
(127,'BD','CST em Banco de Dados',6,'22/01/85','22/01/91',4),
(128,'BDIA','CST em Big Data e Inteligência Analítica',6,'27/02/01','27/02/07',5),
(129,'BLCD','CST em Blockchain e Criptografia Digital',6,'12/12/85','12/12/91',5),
(130,'ICCN','CST em Internet das Coisas e Computação em Nuvem',6,'13/12/88','13/12/94',5),
(131,'JGDI','CST em Jogos Digitais',6,'22/08/19','22/08/25',4),
(132,'REDES','CST em Redes de Computadores',6,'16/06/00','16/06/06',5),
(133,'SECEX','CST em Secretariado Executivo',6,'07/03/94','07/03/00',4),
(134,'SGIN','CST em Segurança da Informação',6,'12/11/91','12/11/97',4),
(135,'SIDM','CST em Sistemas para Internet (Desenvolvimento Mobile)',6,'16/06/92','16/06/98',4),
(136,'ENCP','Engenharia da Computação',6,'14/10/81','14/10/87',5),
(137,'LIPE','Licenciatura em em Pedagogia',6,'26/05/82','26/05/88',4),
(138,'LICM','Licenciatura em Matemática',6,'31/08/94','31/08/00',5),
(139,'GTI','CST em Gestão da Tecnologia da Informação',6,'31/08/95','31/08/01',5),
(140,'RH','CST em Recursos Humanos',6,'31/08/96','31/08/01',4),
(141,'GFIN','CST em Gestão Financeira',6,'31/08/97','31/08/03',4),
(142,'LOG','CST em Logistica e Transportes',6,'31/08/98','31/08/04',5),
(143,'MARK','CST em Gestão em Marketing',6,'31/08/99','31/08/05',5);