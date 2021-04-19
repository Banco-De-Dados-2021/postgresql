-- DISTINCT -> distingue o resultado dos dados
-- COUNT => Conta a quantidade de registros em uma consulta.
-- SUM => Soma os valores de um campo
-- AVG => Retorna a media dos valores
-- MAX => Retorna o maior valor encontrado
-- MIN => Retorna o menor valor encontrado

-- SUM
-- Soma todos o estoque existentes
select sum(estoque) from produto;

-- Soma estoque de produtos vendidos por quilo
select sum(estoque) from produto
    where unidade_medida = 'KG';

-- -- Soma estoque de produtos vendidos por quilo que ja estao vencidos
select sum(estoque) from produto
       where unidade_medida = 'KG'
        AND vencimento < current_date;

-- Soma estoque apenas quando o valor for diferente um do outro
select sum(distinct(estoque)) from produto
       where unidade_medida = 'KG';