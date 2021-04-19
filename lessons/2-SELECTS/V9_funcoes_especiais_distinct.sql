-- DISTINCT -> distingue o resultado dos dados
-- COUNT => Conta a quantidade de registros em uma consulta.
-- SUM => Soma os valores de um campo
-- AVG => Retorna a media dos valores
-- MAX => Retorna o maior valor encontrado
-- MIN => Retorna o menor valor encontrado

-- DISTINCT
-- Retorna todos os setores dos produtos duplicando os resultados iguais
select setor from produto;

-- Retorna todos os setores eliminando os duplicados
select distinct (setor) from produto;

-- Retorna todas as unidades de medidas dos produtos duplicando os resultados iguais
select unidade_medida from produto;

-- Retorna todas unidades de mediades eliminando as duplicadas
select distinct (unidade_medida) from produto;

-- Retorna todas unidades de medidas de produtos vencidos
select distinct (unidade_medida)  from produto
    where vencimento < current_date

-- Quando a distincao for realizada em uma ou mais colunas que possuem valores nulos, estes
-- serão distinguidos e exibidos no retorno juntamente com os valores de colunas não nulas.
select distinct (fornecedor) from produto;