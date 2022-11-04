/*  FMU - Faculdades Metropolitanas Unidas
    Curso: CST em Análise e Desenvolvimento de Sistemas
    Disciplina: Banco de Dados
    Objetivo: Criação de script para inserir dados na Tabela FERRAMENTA_PROGRAMACAO (atividade proposta na Análise Prática Supervisionada (APS))
    Data: 22/10/2022 - segundo Semestre 2022
	Ultima Versão:03/11/2022
	Conclusão:03/11/2022
	Integrantes do projeto:
	Douglas Santos da Silva - RA: 1662860
	Guilherme Gusmão Delgado - RA: 1690075
	Karina Xavier Ramolo - RA: 1616245
	Lucas Chaves de Melo - RA: 1659970
	Maria Helena Santos Silva - RA: 1625169
*/

-- Abertura do banco de dados

USE UpperComputerDB;

INSERT INTO uComputer.FERRAMENTA_PROGRAMACAO (codigoferramenta,nomeferramenta,fabricanteferramenta,versaoferramenta)
VALUES
(1,'Visual Studio Code','Microsoft',5.3),
(2,'PyCharm Professional','JetBrains',6.8),
(3,'MySQL Workbench','Oracle',9.8),
(4,'SQL Server Management Studio','Microsoft',16.3);