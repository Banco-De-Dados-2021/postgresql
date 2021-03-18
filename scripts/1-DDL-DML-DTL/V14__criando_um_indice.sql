-- Caso de Uso

-- Marcio realiza muitas consultas por cpf e esta percebendo que esta demorando um pouco para os dados serem retornados

-- DDL Criando indice no cpf.
CREATE INDEX idx_cpf ON CLIENTE (CPF);


--Bonus
-- DDL para dropar um constraint
DROP INDEX idx_cpf;