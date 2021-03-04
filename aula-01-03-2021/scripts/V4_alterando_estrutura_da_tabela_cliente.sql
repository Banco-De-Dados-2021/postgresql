-- Comando DDL de alteracao da estrutura de dados
-- ALTER TABLE <nome_da_tabela>
--  ALTER COLUMN <nome_do_atributo> <modificacao>

ALTER TABLE cliente
    ALTER COLUMN nascimento SET NOT NULL;


-- Obs: Neste caso a modificacao realizada é `SET NOT NULL` que irá alterar a estrutura da tabela de forma que o atributo
-- nascimento passe a ser obrigatório (NOT NULL).
-- Obs2: Vale lembrar que esse comando em especifico funciona em duas ocasioes, quando a tabela esta vazia, ou quando
-- todos os dados existentes na tabela possuem valor no campo nascimento, caso o campo nascimento em alguem dos registros
-- for nulo é necessário realizar um carga igual a vista no script V3_atualizando_estrtura_da_tabela_cliente.sql, isso se
-- da para garantir a integridade dos dados da tabela.


