-- DISTINCT -> distingue o resultado dos dados
-- COUNT => Conta a quantidade de registros em uma consulta.
-- SUM => Soma os valores de um campo
-- AVG => Retorna a media dos valores
-- MAX => Retorna o maior valor encontrado
-- MIN => Retorna o menor valor encontrado

-- MAX
-- Maior estoque existente
select max(estoque) from produto;

-- Maior estoque de produtos vendidos por quilo
select max(estoque) from produto
    where unidade_medida = 'KG';

-- Maior estoque de produtos vendidos por quilo que ja estao vencidos
select max(estoque) from produto
       where unidade_medida = 'KG'
        AND vencimento < current_date;



