-- Caso de Uso
-- Marcio decidiu que a data de nascimento passou a ser obrigatório,

-- Split case 1 - A tabela está vazia

-- DDL Para adicionar obrigatoriedade no campo
ALTER TABLE CLIENTE ALTER COLUMN NASCIMENTO SET NOT NULL;


-- Split case 2 - A tabela possui dados

-- DML para fazer carga nos campos que não possuem valor.
UPDATE CLIENTE
        SET NASCIMENTO = '1980-01-01'
        WHERE NASCIMENTO IS NULL;

-- DTL - Pra confirmar o insert
COMMIT;

-- DDL Para adicionar obrigatoriedade no campo
ALTER TABLE CLIENTE ALTER COLUMN NASCIMENTO SET NOT NULL;

-- Bonus
-- DDL Para remover obrigatoriedade no campo
ALTER TABLE CLIENTE ALTER COLUMN NASCIMENTO SET NULL;