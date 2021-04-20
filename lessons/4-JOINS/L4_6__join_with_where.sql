-- JOIN usando WHERE para trazer os dados dos estados e as cidades existentes para eles.
select *
from "Estado",
     "Cidade"
where "Estado".id = "Cidade".estado_fk;

-- Criando um apelido para o nome das tabelas para deixar o select menos verboso
select *
from "Estado" e,
     "Cidade" c
where e.id = c.estado_fk;

-- Determinando quais atributos eu quero que sejam retornados no join
select e.nome, e.uf, c.nome
from "Estado" e,
     "Cidade" c
where e.id = c.estado_fk;

-- Determinando quais atributos eu quero que sejam retornados no join e dando nome aos resultados
select e.nome "Nome do Estado", e.uf "Unidade Federativa", c.nome "Nome da Cidade"
from "Estado" e,
     "Cidade" c
where e.id = c.estado_fk;

-- FAZENDO JOIN em mais de duas tabelas usando o WHERE, neste exemplo irá trazer
select *
from "Estado" e,
     "Cidade" c,
     "Endereco" edr
where e.id = c.estado_fk
  and c.id = edr.cidade_fk

