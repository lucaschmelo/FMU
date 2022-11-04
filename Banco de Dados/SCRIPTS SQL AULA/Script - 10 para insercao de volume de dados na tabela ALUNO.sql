/* FMU - Faculdades Metropolitanas Unidas
-- Cursos	:CST em Análise e Desenvolvimento de Sistemas
             CST em Sistemas para Internet
			 BEL em Sistemas de Informação
			 BEL em Ciência da Computação
-- Objetivo	:Importação de volume de dados no SQL Server
-- Data: Segundo Semestre 2022
-- Aplica-se toda vez em que tiver a necessidade de inserir acima de 1000 tuplas
   O BULK INSERT faz parte do roll de instruções Transact SQL
   
*/
-- Define-se o Banco de Dados, o Schema e a tabela alvo da ação de importação
BULK INSERT FmuBDTercaFeira.tTerNoite.ALUNO
-- Define-se o caminho e nome do arquivo fonte.
FROM 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ALUNO.csv'
WITH
(
 FORMAT = 'CSV',
 DATAFILETYPE	='char',
 -- Se o arquivo CSV tiver cabeçalho, declara-se a FIRSTROW = 2, caso contrario pode-SECOND
 -- omitir esta linha
 FIRSTROW		=2,
 -- como o arquivo de origem contém sinais gráficos da nossa lingua, o ideal e utilizar 
/* códigos UNICODE. O SQL Server oferece os seguintes valores de unicode:
           ACP. OEM(padrão),CRU e code_page. Cada para tipos de código UNICODE presentes no arquivo
           original */
 CODEPAGE = 'ACP',
 -- Entenda-se FIELDTERMINATOR como o caractere separador de campos / colunas
 FIELDTERMINATOR = ';',
 -- Terminador de final de linha, normalmente é \r\n  que em hexadecimal é representado por
 --  0x0a
 ROWTERMINATOR	='0x0a',
 -- Define-se MAXERRORS com um valor alto que é para o BULK INSERT reportar o erro, MASTER
 -- continuar o processo de importação.
 MAXERRORS = 200000,
 -- Definição do caminho e nome do arquivo de erros.
 ERRORFILE='C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\alunoERROS.txt'
);