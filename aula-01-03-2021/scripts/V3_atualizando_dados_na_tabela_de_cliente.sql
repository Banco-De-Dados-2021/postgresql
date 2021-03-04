-- Comando DML para alterar dados na tabela no banco de dados
-- update <nome_da_tabela>
--          set <nome_do_atributo> = <novo_valor>
--              where <condicao_para_alteracao>
update cliente
        set nascimento = '1980-01-01'
        where nascimento is null;

COMMIT; -- Pra confirmar o insert
-- ou ROLLBACK; -- Pra desistir do insert
