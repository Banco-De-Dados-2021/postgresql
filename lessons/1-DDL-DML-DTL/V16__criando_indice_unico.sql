-- DDL Criacao de unique index

CREATE UNIQUE INDEX uidx_cpf ON CLIENTE (CPF);
CREATE UNIQUE INDEX uidx_nome_completo_rg ON CLIENTE (NOME_COMPLETO, RG);

--Bonus
-- DDL para dropar um unique index
DROP INDEX uidx_cpf;
DROP INDEX uidx_nome_completo;