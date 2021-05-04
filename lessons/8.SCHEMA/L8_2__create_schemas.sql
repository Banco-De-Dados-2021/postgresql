-- Create schema
create schema nosso_schema;

-- Create para um owner especifico
create user outro_schema superuser;
create schema authorization outro_schema;

-- Criando tabela especificando o schema
create table nosso_schema."TabelaA" (
    id int not null primary key
);

create table outro_schema."TabelaA" (
    id int not null primary key
);

create table "TabelaA" (
    id int not null primary key
);

drop table nosso_schema."TabelaA";
drop table outro_schema."TabelaA";
drop table "TabelaA";

-- Renomeando um Schema
alter schema outro_schema rename to novo_nome_schema;

-- Alterar owner do schema
create user novo_usuario superuser;
alter schema novo_nome_schema owner to novo_usuario;

-- Dropa schema caso esteja vazio.
drop schema nosso_schema;

-- Dropa o schema e tudo que tem dentro dele (CUIDADO)
drop schema batata cascade

-- Mostra o search path corrente
show search_path
-- Altera schema search na sessao aberta
set search_path = "$user", public;
set search_path = "$user", outro_schema;
