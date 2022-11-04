/*  FMU - Faculdades Metropolitanas Unidas
    Curso: CST em Análise e Desenvolvimento de Sistemas
    Disciplina: Banco de Dados
    Objetivo: Criação de script para inserir dados na Tabela EQUIPE (atividade proposta na Análise Prática Supervisionada (APS))
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

INSERT INTO uComputer.EQUIPE (numeroregistrofunc,quantidaderecursos,codigoprojeto,nomeprojeto,codgerente)
VALUES
  (2597,2,1537,'Criar sistema de emissão de notas fiscais',1),
  (2598,2,1538,'Implementação de tabelas de pedidos de venda',2),
  (2599,2,1539,'Atualização da tabela de Estoque',3),
  (2600,2,1540,'Atualização da tabela de Recebimento',4),
  (2601,2,1537,'Criar sistema de emissão de notas fiscais',5);