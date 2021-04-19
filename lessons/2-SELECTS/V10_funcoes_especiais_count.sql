-- COUNT
-- Conta a quantidade de valores informados para a coluna
-- Retorna o total de registro da tabela por conta do uso do *
select count(*) from produto;

-- Conta quantos ids nao nulos informados existem
select count(unidade_medida) from produto; -- nesse caso vai retornar o mesmo que o anterior pois nao existe unidade de medida nula

-- Conta quantos fornecedores nao nulos existem
select count(fornecedor) from produto; -- necesse caso retornará uma quantidade menor de registros pois muitos fornecedores estao nulos.

-- Conta quantas unidades medidas diferentes existem
select count(distinct(unidade_medida)) from produto

-- Conta quantas unidades de medidas diferentes existem para produtos vencidos.
select count(distinct(unidade_medida))  from produto
    where vencimento < current_date