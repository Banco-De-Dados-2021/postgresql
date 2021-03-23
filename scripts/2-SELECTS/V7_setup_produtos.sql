create table produto (
    id int not null primary key,
    nome varchar(100) not null,
    setor varchar(10) not null,
    estoque decimal(10,2) not null,
    unidade_medida varchar(3) not null,
    vencimento date not null,
    fornecedor varchar(100)
);

-- current_date retorna o dia corrente
-- current_time retorna a hora corrente (com timezone)
-- current_timestamp retorna o dia e a hora corrente (com timezone).
-- Obs.: essa syntax é exclusiva para postgres, outros bancos relacionais terão suas próprias funcoes.
select current_date as "Dia de Hoje",
		current_time as "Hora de Agora",
		current_timestamp as "Hora de Agora no dia de Hoje" ;


insert into produto (id, nome, setor, estoque, unidade_medida, vencimento, fornecedor) values (1, 'Macarrão', 'Mercearia', 100, 'UN', '2021-01-20', 'Fornecedor 12');
insert into produto (id, nome, setor, estoque, unidade_medida, vencimento) values (2, 'Banana', 'Hortifruti', 200.76, 'KG', current_date);
insert into produto (id, nome, setor, estoque, unidade_medida, vencimento) values (3, 'Mamão', 'Hortifruti', 10, 'UN', '2021-10-10');
insert into produto (id, nome, setor, estoque, unidade_medida, vencimento) values (4, 'Coxão Mole', 'Açougue', 200, 'KG', '2021-10-15');
insert into produto (id, nome, setor, estoque, unidade_medida, vencimento) values (5, 'Feijão', 'Mercearia', 500, 'UN', current_date);
insert into produto (id, nome, setor, estoque, unidade_medida, vencimento) values (6, 'Leite', 'Mercearia', 100, 'CX', '2022-10-16');
insert into produto (id, nome, setor, estoque, unidade_medida, vencimento, fornecedor) values (7, 'Carne moída de 1º', 'Açougue', 100, 'KG', '2020-01-01', 'Fornecedor 13');
insert into produto (id, nome, setor, estoque, unidade_medida, vencimento) values (8, 'Carne moída de 2º', 'Açougue', 100, 'KG', '2022-02-07');
insert into produto (id, nome, setor, estoque, unidade_medida, vencimento) values (9, 'Miojo', 'Mercearia', 10, 'UN', current_date + 1);
