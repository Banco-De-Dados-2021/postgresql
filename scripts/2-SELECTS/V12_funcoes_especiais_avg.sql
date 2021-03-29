-- DISTINCT -> distingue o resultado dos dados
-- COUNT => Conta a quantidade de registros em uma consulta.
-- SUM => Soma os valores de um campo
-- AVG => Retorna a media dos valores
-- MAX => Retorna o maior valor encontrado
-- MIN => Retorna o menor valor encontrado

-- AVG
-- Media de todos o estoque existentes
select avg(estoque) from produto;

-- Media de estoque de produtos vendidos por quilo
select avg(estoque) from produto
    where unidade_medida = 'KG';

-- Media de estoque de produtos vendidos por quilo que ja estao vencidos
select avg(estoque) from produto
       where unidade_medida = 'KG'
        AND vencimento < current_date;

-- Media de estoque apenas quando o valor for diferente um do outro
select avg(distinct(estoque)) from produto
       where unidade_medida = 'KG';

-- TRUNC
-- Truncado o resultado de uma função agregada (vai remover todos os numeros após a virgula)
select trunc(avg(estoque)) from produto;

-- ROUND
-- Arredondando o resultado de um função agregada (vai arrendodar os numeros após a virgual na quantidade de decimais informada na funcao)
select round(avg(estoque), 2) from produto;

