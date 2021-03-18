-- ordenacao do resultado por nome completo de forma ascendente
select id, nome_completo, sexo from cliente
	order by nome_completo asc

-- ordenacao do resultado por nome completo e sexo de forma ascendente
select id, nome_completo, sexo from cliente
	order by nome_completo asc, sexo asc

-- ordenacao do resultado por nome completo e sexo de forma ascendente implicito
select id, nome_completo, sexo from cliente
	order by nome_completo, sexo

-- ordenacao do resultado por nome completo e sexo de forma descendente
select id, nome_completo, sexo from cliente
	order by nome_completo desc, sexo desc

-- ordenacao do resultado por nome completo de sexo de forma descendente
select id, nome_completo, sexo from cliente
    	order by nome_completo desc, sexo asc
    
-- ordenacao do resultado pela posicao do resultado
select id, nome_completo, sexo from cliente
	order by 1 asc, 2 desc

-- ordenacao do resultado utilizando o apelido
select id as identificador, nome_completo, sexo from cliente
	order by identificador desc