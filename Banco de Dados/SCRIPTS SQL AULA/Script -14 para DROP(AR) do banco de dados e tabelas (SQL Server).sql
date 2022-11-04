/* FMU - Faculdades Metropolitanas Unidas
   Cursos	     : CST em Análise e Desenvolvimento de Sistemas
                   CST em Sistemas para Internet
			       BEL em Sistemas de Informação
			       BEL em Ciência da Computação
			       CST em BIG DATA
    Disciplina   : Banco de Dados
    Objetivo	 : DROP(AR) um banco de dados no SQL Server
	Justividativa: Haverá situações onde ao tentar DROP(AR) um banco de dados, o SQL Server apresentará a seguinte
	               mensagem "Não é possível descartar o banco de dados [Nome do Banco de Dados] porque ele está em uso"
				   Mesmos encerrando a sessão e criando uma nova sessão, a mensagem persite.
				   Em algumas situações - drástica -, é necessário derrubar o servidor (ABSURDO) e unviável em ambiente
				   profissional.
				   O script abaixo, contorna essa limitação e situação de erro do SQL Server.
    Data: Segundo Semestre 2022
--*/
USE master;
GO
ALTER DATABASE FmuBDTercaFeira
SET SINGLE_USER 
WITH ROLLBACK IMMEDIATE;
DROP DATABASE FmuBDTercaFeira;