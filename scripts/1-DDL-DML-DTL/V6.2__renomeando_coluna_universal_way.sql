-- DDL para adicionar uma nova coluna na tabela
ALTER TABLE CLIENTE ADD COLUMN NOME_COMPLETO varchar(50);

-- DML Para trazer os dados do campo antigo para o novo campo.
UPDATE CLIENTE SET NOME_COMPLETO = NOME;

-- DTL Para comitar a carga dos dados no novo campo
COMMIT;

-- DDL Para adicionar obrigatoriedade no novo campo
ALTER TABLE CLIENTE ALTER COLUMN NOME_COMPLETO SET NOT NULL;

-- DDL Para destruir o campo nome velho
ALTER TABLE CLIENTE DROP COLUMN NOME;
