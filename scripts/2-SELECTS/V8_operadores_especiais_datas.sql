-- Para selecionar os produtos vencidos.
select * from produto
    where vencimento < current_date

-- Para selecionar os produtos que vencem no dia corrente (ou hoje)
select * from produto
    where vencimento = current_date

-- Para selecionar produtos que vencem amanhã
    where vencimento = current_date + 1

-- Para selecionar produtos que venceu a um dia
select * from produto
    where vencimento = current_date - 1

-- Imagine que voce queira algo especifico da data, commo o ano ou o mes ou o dia. Para isto existem as Date Functions

-- Date functions
-- Função extract:
select extract(day from current_date); -- vai extrarir o dia da data corrente
select extract(month from current_date); -- vai extrarir o mes da data corrente
select extract(year from current_date); -- vai extrarir o dia da data corrente

-- Função date_part: fazem as mesmas coisas da extract mas de uma forma diferente
select date_part('day', current_date);
select date_part('month', current_date);
select date_part('year', current_date);

-- Selecionado os produtos que vencem no dia 01
select id, nome, extract(day from vencimento) as dia_vencimento from produto
	where extract(day from vencimento) = 1;

-- Selecionado os produtos que vencem no mes 10
select id, nome, extract(month from vencimento) as mes_vencimento from produto
	where extract(month from vencimento) = 10;

-- Selecionado os produtos que vencem no ano 2020
select id, nome, extract(year from vencimento) as ano_vencimento from produto
	where extract(year from vencimento) = 2020;

-- Selecionado os produtos que vencem no dia corrente
select id, nome, extract(day from vencimento) as dia_vencimento from produto
	where extract(day from vencimento) = extract(day from current_date);

-- Selecionado os produtos que vencem no mes corrente
select id, nome, extract(month from vencimento) as mes_vencimento from produto
	where extract(month from vencimento) = extract(month from current_date);

-- Selecionado os produtos que vencem no ano corrente

select id, nome, extract(year from vencimento) as ano_vencimento from produto
	where extract(year from vencimento) = extract(year from current_date);
