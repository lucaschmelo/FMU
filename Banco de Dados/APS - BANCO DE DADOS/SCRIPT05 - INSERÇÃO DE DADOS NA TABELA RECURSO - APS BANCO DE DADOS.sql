/*  FMU - Faculdades Metropolitanas Unidas
    Curso: CST em Análise e Desenvolvimento de Sistemas
    Disciplina: Banco de Dados
    Objetivo: Criação de script para inserir dados na Tabela RECURSO (atividade proposta na Análise Prática Supervisionada (APS))
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

INSERT INTO uComputer.RECURSO (nomefunc,numeroregistrofunc,salariofunc,cargo,codgerente,codanalista,codprogramador,codigoferramenta)
VALUES
  ('Preston Gardner',2597,'R$8832.43','Gerente de Projetos',1,1,1,1),
  ('Vielka Ochoa',2598,'R$3927.28','Programador Jr',1,1,1,2),
  ('Erin Francis',2599,'R$4722.81','Programador',1,2,2,4),
  ('Matthew Summers',2600,'R$6471.74','Programador Sr',1,2,2,3),
  ('Sophia Mcleod',2601,'R$2703.79','Analista de Dados Jr',1,3,3,2);