																-- MANIPULAÇÃO DOS DADOS --
                                                                
                                                                
-- QUANTAS EQUIPES E QUANTOS FUNCIONÁRIOS TRABALHAM EM CADA UMA DELAS --

select 	EspecialidadeEquipe, idEquipe as Numero_Equipe, count(*) as Funcionarios_Na_Equipe
		from Equipe
        join Mecanicos using(idEquipe)
        group by idEquipe;
        
-- TODOS OS FUNCIONARIOS QUE MORAM EM BELO HORIZONTE, ESPECIFICANDO CADA FUNCIONARIO SUA ESPECIALIDADE --

select concat(FNome,' ',LNome) as Nome_Completo, Especialidade, Endereco, idEquipe
	   from Mecanicos where Endereco like'BeloHorizonte%';
       
-- MOVIMENTAÇÃO DE PEÇAS --

select concat(FNome, ' ', LNome) as Nome_Completo, OsStatus, NumeroOrdem, DataEmissao, Categoria, NomePeca, QuantidadePeca, ValorUnitárioPeca
		from cliente c
        join OrdemServico os on os.idCliente = c.idCliente and OsStatus = 'Orçamento Aprovado'
        join Relacao_Os_Pecas using(idOrdemServico)
        join Pecas using(idPecas)
        order by dataEmissao;

-- QUANTIDADE DE CLIENTES QUE RECUSARAM A OS, VALORES, SERVIÇOS E PEÇAS QUE IRIAM SER GASTOS --


select (select concat(FNome, ' ', LNome) as Nome_Cliente from Cliente as c where c.idCliente = o.idCliente) as Nome_Cliente, 
		OsStatus as Status_Aprovação, Categoria, NomePeca,Descricao as Servico, ValorUnitárioPeca, QuantidadePeca, ValorServico, ValorTotal
		from Pecas 
        join Relacao_Os_Pecas as r using(idPecas)
        join OrdemServico as o on r.idOrdemServico = o.idOrdemServico and OsStatus = 'Orçamento Reprovado'
        join Relacao_Os_Servicos as ros on o.idOrdemServico = ros.idOrdemServico  
        join Servicos as s on s.idServicos = ros.idServico
        order by ValorTotal desc;


-- QUANTIDADE DE OS QUE ULTRAPASSARAM OS 1000 REAIS --

select concat(FNome, ' ', LNome) as Nome_Cliente, CPF, Contato, ValorTotal
	   from Cliente as c, OrdemServico as os
       where os.idCliente = c.idCliente and ValorTotal between 1000 and 20000
       order by ValorTotal asc; 

-- MÉDIA DE DIAS GASTOS PARA MANUTENÇÃO, E PARA FORNECIMENTO DE PEÇAS --

select  idEquipe, EspecialidadeEquipe, round(avg(datediff(DataConclusao, DataEmissao)),2) as MediaDedias
		from OrdemServico
        join Equipe using(idEquipe)
        group by idEquipe;

-- TIPO DE MANUTENÇÃO QUE TEM O PREÇO MAIS ROUBUSTO --

select idEquipe as Numero_Equipe, EspecialidadeEquipe , round(avg(ValorTotal),2) as MediaDeValores
		from Equipe
        join OrdemServico using(idEquipe)
        group by idEquipe;


--  TIPO DE MANUTENÇÃO QUE É MAIS REALIZADA --

select TipoServiço, count(TipoServiço) as QuantidadeServicos
		from Servicos s
        group by TipoServiço;
        