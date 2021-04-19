-- DISTINCT -> distingue o resultado dos dados
-- COUNT => Conta a quantidade de registros em uma consulta.
-- SUM => Soma os valores de um campo
-- AVG => Retorna a media dos valores
-- MAX => Retorna o maior valor encontrado
-- MIN => Retorna o menor valor encontrado

-- MIN
-- Menor estoque existente
select min(estoque) from produto;

-- Menor estoque de produtos vendidos por quilo
select min(estoque) from produto
    where unidade_medida = 'KG';

-- Menor estoque de produtos vendidos por quilo que ja estao vencidos
select min(estoque) from produto
       where unidade_medida = 'KG'
        AND vencimento < current_date;

