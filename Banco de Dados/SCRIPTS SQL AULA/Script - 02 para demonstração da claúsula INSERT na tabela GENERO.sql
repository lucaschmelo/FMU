/* FMU - Faculdades Metropolitanas Unidas
-- Cursos	:CST em Análise e Desenvolvimento de Sistemas
             CST em Sistemas para Internet
			 BEL em Sistemas de Informação
			 BEL em Ciência da Computação
			 CST em BIG DATA
-- Objetivo	:Inserir um grupo de tuplas no banco de dados criado em sala, na tabela
             GENERO 
-- Data: Segundo Semestre 2022
-- O INSERT faz parte do roll de instruções SQL/ISO
*/
USE FmuBDTercaFeira;
INSERT INTO tTerNoite.GENERO (codgenero,genero, descricao)
VALUES 
(1,'Feminino','Genero Biologico'),
(2,'Masculino','Genero Biologico'),
(3,'Bi-Gendered (Bi-gênero)','Alguém que se identifica como homem e mulher ao mesmo tempo'),
(4,'Cross-Dresser',''),
(5,'Drag-King',''),
(6,'Drag-Queen',''),
(7,'Femme Queen',''),
(8,'Female-to-Male (Fêmea-para-macho)',''),
(9,'FTM','Uma pessoa trans que nasceu num corpo de mulher, e agora vive como um homem e tem uma identidade de gênero masculina'),
(10,'Gender Bender (Gênero fronteiriço)',''),
(11,'Genderqueer','Alguém que cuja identidade fica fora do sistema de dois gêneros (ou seja, homem/mulher)'),
(12,'Male-To-Female (Macho-para-fêmea)',''),
(13,'MTF','Uma pessoa trans que nasceu num corpo de homem, e agora vive como uma mulher e tem uma identidade de gênero feminina'),
(14,'Non-Op',''),
(15,'Hijra',''),
(16,'Pangender (Pangênero)','O pangênero é similar ao andrógino, no sentido de que a pessoa se identifica como um terceiro gênero com algum tipo de combinação dos aspectos tanto masculinos como femininos'),
(17,'Transexual/Transsexual',''),
(18,'Trans Person (Pessoa trans)',''),
(19,'Woman (Mulher)',''),
(20,'Man (Homem)',''),
(21,'Butch','Uma pessoa masculina de qualquer sexo pode ser descrita como butch, embora seja mais comum usar o termo para mulheres com traços mais masculinos, masculinizados ou masculinizantes'),
(22,'Two-Spirit (espirito duplo)',''),
(23,'Trans','Este é um termo inclusivo, que se refere às muitas maneiras que uma pessoa pode transcender ou até mesmo transgredir o gênero ou as normas de gênero '),
(24,'Agender (Agenero)','Alguém que não se identifica com qualquer tipo de identidade de gêner'),
(25,'Third Sex (Terceiro sexo)',''),
(26,'Gender Fluid (Gênero fluido)','Alguém cuja identidade de gênero e apresentação não se limita a apenas uma categoria de gênero. '),
(27,'Non-Binary Transgender (transgênero não binário)','Pessoas qeu se identificam como não-binárias desprezam a ideia de uma dicotomia entre macho e fêmea'),
(28,'Androgyne (androgino)','Alguém que não se identifica, nem se apresenta, como apenas como homem ou mulher. “Andrógino” é utilizado por quem tem qualidades masculinas e femininas e se considera um terceiro gênero separado'),
(29,'Gender-Gifted',''),
(30,'Gender Bender',''),
(31,'Femme',''),
(32,'Person of Transgender Experience (Pessoa em experiência transgênera)','Um termo genérico que inclui todas as pessoas que têm um gênero que tradicionalmente não são associados a seu sexo'),
(33,'Queer',''),
(34,'Cis-Woman (Mulher cis)','uma mulher que se identifica com/ se apresenta como do gênero feminino.'),
(35,'Cis-Men (Homem Cis)','um homem que se identifica com/ se apresenta como do gênero masculino'),
(36,'Cisgender (Cisgenero)','ma pessoa que tem a identidade de gênero comumente associada a seu sexo biológico (por exemplo, alguém que é considerada mulher quando nasce e vive como uma mulher)'),
(37,'trans-man (Trans Homem)',''),
(38,'trans-woman (Trans Mulher)',''),
(39,'transsexual man (Home Transexual)','alguém que nasceu num corpo feminino e realizou a transição (por meio de cirurgia e/ou hormônios) para viver como um homem.'),
(40,'transsexual woman (Mulher Transexual)','alguém que nasceu num corpo masculino e realizou a transição (por meio de cirurgia e/ou hormônios) para viver como uma mulher.'),
(41,'transmale (Transmasculino)','Alguém que nasceu num corpo do sexo feminino e se identifica como alguém masculino, mas não se identifica completamente como homem'),
(42,'transfeminine (Transfeminino)','Alguém que nasceu num corpo do sexo masculino e se identifica como alguém feminino, mas não se identifica completamente como mulher');
