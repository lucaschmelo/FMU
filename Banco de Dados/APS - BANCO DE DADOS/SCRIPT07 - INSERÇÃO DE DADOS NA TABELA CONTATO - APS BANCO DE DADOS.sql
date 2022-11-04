/*  FMU - Faculdades Metropolitanas Unidas
    Curso: CST em Análise e Desenvolvimento de Sistemas
    Disciplina: Banco de Dados
    Objetivo: Criação de script para inserir dados na Tabela CONTATO (atividade proposta na Análise Prática Supervisionada (APS))
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

INSERT INTO uComputer.CONTATO (numeroregistrofunc,telresidencialrecurso,telcomercialrecurso,telcelularrecurso,ramalrecurso)
VALUES
(2597,'(286) 704-8473','(563) 828-4851','1-855-236-6699','3530'),
(2598,'1-522-947-4054','(563) 828-4851','1-620-544-5671','3535'),
(2599,'1-519-668-3447','(563) 828-4851','1-374-240-7616','3551'),
(2600,'(858) 430-2997','(563) 828-4851','1-884-494-3448','3531'),
(2601,'(445) 118-6366','(563) 828-4851','(614) 816-4173','3547');