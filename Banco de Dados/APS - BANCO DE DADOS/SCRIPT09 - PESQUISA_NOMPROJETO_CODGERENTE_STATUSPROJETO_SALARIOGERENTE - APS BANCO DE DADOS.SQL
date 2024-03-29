/*  FMU - Faculdades Metropolitanas Unidas
    Curso: CST em An�lise e Desenvolvimento de Sistemas
    Disciplina: Banco de Dados
    Objetivo: Criar um Script para consulta no banco de dados (atividade proposta na An�lise Pr�tica Supervisionada (APS))
    Data: 26/10/2022 - segundo Semestre 2022
	Ultima Vers�o:03/11/2022
	Conclus�o:03/11/2022
	Integrantes do projeto:
	Douglas Santos da Silva - RA: 1662860
	Guilherme Gusm�o Delgado - RA: 1690075
	Karina Xavier Ramolo - RA: 1616245
	Lucas Chaves de Melo - RA: 1659970
	Maria Helena Santos Silva - RA: 1625169
*/

SELECT [nomeprojeto],[statusprojeto],[codigoprojeto]		FROM [UpperComputerDB].[uComputer].[PROJETO] 
SELECT  [codgerente],[codigoprojeto],[numeroregistrofunc]	FROM [UpperComputerDB].[uComputer].[EQUIPE]
SELECT	[salatualfunc],[numeroregistrofunc]					FROM [UpperComputerDB].[uComputer].[BASE_HISTORICA_SALARIAL]