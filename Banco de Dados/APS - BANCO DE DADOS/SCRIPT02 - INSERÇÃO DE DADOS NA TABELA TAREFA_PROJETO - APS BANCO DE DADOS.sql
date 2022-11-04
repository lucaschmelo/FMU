/*  FMU - Faculdades Metropolitanas Unidas
    Curso: CST em An�lise e Desenvolvimento de Sistemas
    Disciplina: Banco de Dados
    Objetivo: Cria��o de script para inserir dados na Tabela TAREFA_PROJETO (atividade proposta na An�lise Pr�tica Supervisionada (APS))
    Data: 22/10/2022 - segundo Semestre 2022
	Ultima Vers�o:03/11/2022
	Conclus�o:03/11/2022
	Integrantes do projeto:
	Douglas Santos da Silva - RA: 1662860
	Guilherme Gusm�o Delgado - RA: 1690075
	Karina Xavier Ramolo - RA: 1616245
	Lucas Chaves de Melo - RA: 1659970
	Maria Helena Santos Silva - RA: 1625169
*/

-- Abertura do banco de dados

USE UpperComputerDB;

INSERT INTO uComputer.TAREFA_PROJETO (codigotarefa,descricaotarefa,nometarefa)
VALUES
(2720,'Refinar c�digo da Tabela de pedidos de venda','Refinar'),
(2721,'Encontrar erro na sintaxe da Tabela de estoque e corrigir','Corre��o sintaxe'),
(2722,'Fazer uma extens�o da Tabela de Estoque para gerar relat�rios','Extens�o estoque');