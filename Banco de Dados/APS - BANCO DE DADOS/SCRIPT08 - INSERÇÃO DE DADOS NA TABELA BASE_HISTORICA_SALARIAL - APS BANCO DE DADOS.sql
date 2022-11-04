/*  FMU - Faculdades Metropolitanas Unidas
    Curso: CST em Análise e Desenvolvimento de Sistemas
    Disciplina: Banco de Dados
    Objetivo: Criação de script para inserir dados na Tabela BASE_HISTORICA_SALARIAL (atividade proposta na Análise Prática Supervisionada (APS))
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

INSERT INTO uComputer.BASE_HISTORICA_SALARIAL (numeroregistrofunc,datadoaumento,valordoaumento,salatualfunc)
VALUES
(2597,'24/07/2019','R$610,00','R$6.325,92'),
(2598,'24/07/2019','R$320,00','R$4.456,85'),
(2599,'24/07/2019','R$415,00','R$1.943,48'),
(2600,'24/07/2019','R$275,00','R$1.827,32'),
(2601,'24/07/2019','R$190,00','R$1.948,69');