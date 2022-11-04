/* FMU - Faculdades Metropolitanas Unidas
   Cursos	     : CST em An�lise e Desenvolvimento de Sistemas
                   CST em Sistemas para Internet
			       BEL em Sistemas de Informa��o
			       BEL em Ci�ncia da Computa��o
			       CST em BIG DATA
    Disciplina   : Banco de Dados
    Objetivo	 : DROP(AR) um banco de dados no SQL Server
	Justividativa: Haver� situa��es onde ao tentar DROP(AR) um banco de dados, o SQL Server apresentar� a seguinte
	               mensagem "N�o � poss�vel descartar o banco de dados [Nome do Banco de Dados] porque ele est� em uso"
				   Mesmos encerrando a sess�o e criando uma nova sess�o, a mensagem persite.
				   Em algumas situa��es - dr�stica -, � necess�rio derrubar o servidor (ABSURDO) e unvi�vel em ambiente
				   profissional.
				   O script abaixo, contorna essa limita��o e situa��o de erro do SQL Server.
    Data: Segundo Semestre 2022
--*/
USE master;
GO
ALTER DATABASE FmuBDTercaFeira
SET SINGLE_USER 
WITH ROLLBACK IMMEDIATE;
DROP DATABASE FmuBDTercaFeira;