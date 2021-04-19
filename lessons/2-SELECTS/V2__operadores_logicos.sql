-- AND
select id, nome_completo, sexo from cliente
	where id > 15 and sexo = 'Feminino';

-- OR
select id, nome_completo, sexo from cliente
	where id > 15 or sexo = 'Feminino';

-- NOT
select id, nome_completo, sexo, endereco from cliente
	where not (id > 15)

-- IS NULL
select id, nome_completo, sexo from cliente
	where endereco is null;

-- IS NOT NULL
select id, nome_completo, sexo from cliente
	where endereco is not null;

-- COMBINADOS
select id, nome_completo, sexo from cliente
	where id > 15 and sexo = 'Feminino' or endereco is null;

-- COMBINADOS
select id, nome_completo, sexo, endereco from cliente
	where id > 15 and (sexo = 'Feminino' or endereco is null);
