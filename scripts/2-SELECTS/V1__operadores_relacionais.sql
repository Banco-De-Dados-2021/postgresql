-- definindo resultados da consulta, neste exemplo nome_completo e nascimento
select nome_completo, nascimento
	from cliente;

-- definindo apelidos
select nome_completo "batata", nascimento "data nascimento"
	from cliente;

-- definindo apelidos
select nome_completo as "batata", nascimento as "data nascimento"
    	from cliente;

-- maior que
select id, nome_completo from cliente
	where id > 15;

select id, nome_completo, nascimento from cliente
    	where nascimento > '1970-10-07'

-- maior igual a
select id, nome_completo from cliente
	where id >= 15;

-- menor que
select id, nome_completo from cliente
	where id < 15;

-- menor igual que
select id, nome_completo from cliente
	where id <= 15;

-- diferente de
select id, nome_completo from cliente
	where id != 15;

-- diferente de
select id, nome_completo from cliente
	where id <> 15;
