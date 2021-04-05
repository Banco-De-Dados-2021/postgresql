-- Exercicio 1
create table produto
(
    id       int            not null,
    nome     varchar(50)    not null,
    codigo   int            not null,
    estoque  decimal(10, 2) not null,
    cadastro date           null,
    constraint pk_seu_ra primary key (id)
);

-- Exercicio 2
insert into produto (id, nome, codigo, estoque, cadastro)
values (1 , 'Banana Nanica', 1, 15.45, current_date);

insert into produto (id, nome, codigo, estoque, cadastro)
values (2 , 'Uva Niagara', 2, 60, current_date);

insert into produto (id, nome, codigo, estoque, cadastro)
values (3 , 'Mamao Formosa', 3, 0, current_date);

insert into produto (id, nome, codigo, estoque, cadastro)
values (4 , 'Kiwi', 4, 30, current_date);

-- Exercício 3

update produto set estoque = 10.15 where id = 1;
update produto set estoque = 0 where id = 2;
update produto set estoque = 19 where id = 3;
update produto set estoque = 16 where id = 4;

-- Exercicio 4
delete from produto where estoque = 0;

-- Exercicio 5
alter table produto alter column cadastro set not null;

-- Exercicio 6
alter table produto add column atualizacao date null;

update produto set atualizacao = current_date where atualizacao is null;

alter table produto alter column atualizacao set not null;

-- Exercicio 7
alter table produto add constraint uq_codigo unique (codigo);

-- Exercicio 8
alter table produto add constraint ck_estoque_negativo check ( estoque >= 0 );

-- Exercicio 9
alter table produto add constraint ck_datas check (atualizacao >= cadastro);

-- Exercicio 10
create index idx_nome_produto on produto (nome);

-- Exercicio 11
drop table produto;