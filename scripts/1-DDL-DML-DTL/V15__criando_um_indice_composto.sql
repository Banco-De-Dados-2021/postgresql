-- Caso de Uso

-- Marcio realiza muitas consultas por nome e rg e esta percebendo que esta demorando um pouco para os dados serem retornados

-- DDL Adicionando atributo indice.
CREATE INDEX idx_nome_completo_rg on CLIENTE (nome_completo, rg);

--Bonus
-- DDL para dropar um indice
DROP INDEX idx_nome_completo_rg;
