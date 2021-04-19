select setor, sum(estoque) from produto
		group by setor;

select setor, sum(estoque) from produto
    where unidade_medida = 'KG'
        group by setor;

-- neste exemplo abaixo a consulta não funciona, isso devido ao fato de unidade de media não ter sido inforada na
-- clausula do group by, é obrigatório que todos os valores retornados que não são um resultado de uma função sejam informados
-- no group by
select setor, unidade_medida, sum(estoque) from produto
    where unidade_medida = 'KG'
        group by setor;

-- Pra resolver ou se remove a unidade de medida do resultado da consulta ou adiciona ela no group by (igual abaixo)
select setor, unidade_medida, sum(estoque) from produto
    where unidade_medida = 'KG'
        group by setor, unidade_medida;


