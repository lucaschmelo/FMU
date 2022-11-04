/* FMU - Faculdades Metropolitanas Unidas
-- Cursos	:CST em An�lise e Desenvolvimento de Sistemas
             CST em Sistemas para Internet
			 BEL em Sistemas de Informa��o
			 BEL em Ci�ncia da Computa��o
			 CST em BIG DATA
-- Objetivo	:Inserir um grupo de tuplas no banco de dados criado em sala, na tabela
             GENERO 
-- Data: Segundo Semestre 2022
-- O INSERT faz parte do roll de instru��es SQL/ISO
*/
USE FmuBDTercaFeira;
INSERT INTO tTerNoite.GENERO (codgenero,genero, descricao)
VALUES 
(1,'Feminino','Genero Biologico'),
(2,'Masculino','Genero Biologico'),
(3,'Bi-Gendered (Bi-g�nero)','Algu�m que se identifica como homem e mulher ao mesmo tempo'),
(4,'Cross-Dresser',''),
(5,'Drag-King',''),
(6,'Drag-Queen',''),
(7,'Femme Queen',''),
(8,'Female-to-Male (F�mea-para-macho)',''),
(9,'FTM','Uma pessoa trans que nasceu num corpo de mulher, e agora vive como um homem e tem uma identidade de g�nero masculina'),
(10,'Gender Bender (G�nero fronteiri�o)',''),
(11,'Genderqueer','Algu�m que cuja identidade fica fora do sistema de dois g�neros (ou seja, homem/mulher)'),
(12,'Male-To-Female (Macho-para-f�mea)',''),
(13,'MTF','Uma pessoa trans que nasceu num corpo de homem, e agora vive como uma mulher e tem uma identidade de g�nero feminina'),
(14,'Non-Op',''),
(15,'Hijra',''),
(16,'Pangender (Pang�nero)','O pang�nero � similar ao andr�gino, no sentido de que a pessoa se identifica como um terceiro g�nero com algum tipo de combina��o dos aspectos tanto masculinos como femininos'),
(17,'Transexual/Transsexual',''),
(18,'Trans Person (Pessoa trans)',''),
(19,'Woman (Mulher)',''),
(20,'Man (Homem)',''),
(21,'Butch','Uma pessoa masculina de qualquer sexo pode ser descrita como butch, embora seja mais comum usar o termo para mulheres com tra�os mais masculinos, masculinizados ou masculinizantes'),
(22,'Two-Spirit (espirito duplo)',''),
(23,'Trans','Este � um termo inclusivo, que se refere �s muitas maneiras que uma pessoa pode transcender ou at� mesmo transgredir o g�nero ou as normas de g�nero '),
(24,'Agender (Agenero)','Algu�m que n�o se identifica com qualquer tipo de identidade de g�ner'),
(25,'Third Sex (Terceiro sexo)',''),
(26,'Gender Fluid (G�nero fluido)','Algu�m cuja identidade de g�nero e apresenta��o n�o se limita a apenas uma categoria de g�nero. '),
(27,'Non-Binary Transgender (transg�nero n�o bin�rio)','Pessoas qeu se identificam como n�o-bin�rias desprezam a ideia de uma dicotomia entre macho e f�mea'),
(28,'Androgyne (androgino)','Algu�m que n�o se identifica, nem se apresenta, como apenas como homem ou mulher. �Andr�gino� � utilizado por quem tem qualidades masculinas e femininas e se considera um terceiro g�nero separado'),
(29,'Gender-Gifted',''),
(30,'Gender Bender',''),
(31,'Femme',''),
(32,'Person of Transgender Experience (Pessoa em experi�ncia transg�nera)','Um termo gen�rico que inclui todas as pessoas que t�m um g�nero que tradicionalmente n�o s�o associados a seu sexo'),
(33,'Queer',''),
(34,'Cis-Woman (Mulher cis)','uma mulher que se identifica com/ se apresenta como do g�nero feminino.'),
(35,'Cis-Men (Homem Cis)','um homem que se identifica com/ se apresenta como do g�nero masculino'),
(36,'Cisgender (Cisgenero)','ma pessoa que tem a identidade de g�nero comumente associada a seu sexo biol�gico (por exemplo, algu�m que � considerada mulher quando nasce e vive como uma mulher)'),
(37,'trans-man (Trans Homem)',''),
(38,'trans-woman (Trans Mulher)',''),
(39,'transsexual man (Home Transexual)','algu�m que nasceu num corpo feminino e realizou a transi��o (por meio de cirurgia e/ou horm�nios) para viver como um homem.'),
(40,'transsexual woman (Mulher Transexual)','algu�m que nasceu num corpo masculino e realizou a transi��o (por meio de cirurgia e/ou horm�nios) para viver como uma mulher.'),
(41,'transmale (Transmasculino)','Algu�m que nasceu num corpo do sexo feminino e se identifica como algu�m masculino, mas n�o se identifica completamente como homem'),
(42,'transfeminine (Transfeminino)','Algu�m que nasceu num corpo do sexo masculino e se identifica como algu�m feminino, mas n�o se identifica completamente como mulher');
