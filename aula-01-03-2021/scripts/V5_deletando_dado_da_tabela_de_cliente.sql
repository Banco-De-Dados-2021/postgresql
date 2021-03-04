-- Comando DML para remover dado da tabela.
-- delete from <nome_da_tabela> where <condicoes_para_remocao>
delete from cliente where id = 2 and rg = '312837367';

COMMIT; -- Pra confirmar o insert
-- ou ROLLBACK; -- Pra desistir do insert

-- Neste exemplo esta sendo removido do banco de dados o registro na tabela cliente cujo o id é igual a 2
-- e o rg igual a 312837367.