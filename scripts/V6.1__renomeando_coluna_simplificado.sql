-- Caso de Uso
--
-- Ao analisar nossa tabela já criada no banco de dados, podemos observar que temos o atributo nome,
-- porém ao analisar melhor, este campo irá armazenar o nome completo do cliente do Marcio,
-- logo seria mais interessante re-nomear essa coluna para ficar mais coerente com a nossa regra de negócio.

-- Obs.: Alguns banco de dados podem não possuir o recurso de rename, no caso do postgresql ele suporta.

-- Comando DDL de alteracao do nome do campo da tabela.
ALTER TABLE CLIENTE RENAME NOME TO NOME_COMPLETO;


-- Bonus
-- ALTER TABLE CLIENTE RENAME TO BATATA