/*  FMU - Faculdades Metropolitanas Unidas
    Curso: CST em Análise e Desenvolvimento de Sistemas
    Disciplina: Banco de Dados
    Objetivo: Criação de script para inserir dados na Tabela PROJETO (atividade proposta na Análise Prática Supervisionada (APS))
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

INSERT INTO uComputer.PROJETO (codigoprojeto,nomeprojeto,datainicioprojeto,terminoprevistoprojeto,terminoprojeto,statusprojeto,horaprevistaprojeto,horaprojeto)
VALUES
(1537,'Criar sistema de emissão de notas fiscais','24/07/2019','15/08/2019','11/08/2019','Concluído','110 horas','90 horas'),
(1538,'Implementação de tabelas de pedidos de venda','11/10/2021','15/10/2021','15/10/2021','Concluído','20 horas','19 horas'),
(1539,'Atualização da tabela de Estoque','11/10/2021','12/10/2021','14/10/2021','Concluído com atraso','05 horas','15 horas'),
(1540,'Atualização da tabela de Recebimento','05/11/2022','05/11/2022','05/11/2022','Concluído','36 horas','32 horas'),
(1541,'Criar dados para instalação de servidor','01/11/2022','05/11/2022','05/11/2022','Concluído','48 horas','41 horas'),
(1542,'Modificação de tabelas servidor','02/11/2022','05/11/2022','05/11/2022','Concluído','12 horas','08 horas'),
(1543,'Atualização da tabela de Recebimento','01/11/2022','10/11/2022','','Em Desenvolvimento','128 horas','00 horas');
