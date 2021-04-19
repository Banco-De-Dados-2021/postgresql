
-- LIKE 'A%' = verifica se o texto comeca com a letra informada
select * from cliente
	where nome_completo like 'A%'

-- LIKE '%A' = verifica se o texto termina com a letra informada
select * from cliente
	where nome_completo like '%A'

-- LIKE ’%A%’ Todas as palavras que tenham A em qualquer posição
select * from cliente
	where nome_completo like '%A%'

--LIKE ‘A_’ Texto de 2 caracteres que tenha a primeira letra com A e qualquer uma no segundo caracter
--LIKE ‘A__’ Texto de 3 caracteres que tenha a primeira letra com A e qualquer uma no segundo e terceiro caracter.
-- E assim sucessivamente
select * from cliente
	where nome_completo like 'A_'

-- LIKE ‘_A’ String de 2 caracteres que tenha a ultima letra em A e qualquer uma na primeira
select * from cliente
	where nome_completo like '_A'

-- LIKE ‘_A_’ String de 3 caracteres em que o terceiro seja A
select * from cliente
	where nome_completo like '_A_'

-- LIKE ‘%A_’ Todas as palavras que tenham a letra A na penúltima posição e a última seja qualquer outro caracter
select * from cliente
	where nome_completo like '%A_'

-- LIKE ‘_A% Todas as palavras que tenham a letra A na ‘segunda posição e a primeira seja qualquer outro caracter
select * from cliente
	where nome_completo like '_A%'

-- Trantando a sensibilidade do texto
-- a funcao lower vai abaixar a caixa do texto. Ex  lower('CAIXA_ALTA') => 'caixa_alta'
select * from cliente
	where lower(nome_completo) like '%A'

-- Trantando a sensibilidade do texto
-- a funcao upper vai subir a caixa do texto. Ex  upper('caixa_baixa') => 'CAIXA_BAIXA'
select * from cliente
	where upper(nome_completo) like '%A'