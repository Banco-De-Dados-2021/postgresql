drop table if exists valores;

create table valores
(
    valor int not null
);

insert into valores (valor)
values (1),
       (2),
       (3);

drop function if exists somar_usando_um_laco_de_repeticao;

create or replace function somar_usando_um_laco_de_repeticao()
    returns int
    language plpgsql as
$$
declare
    itens     record;
    resultado int = 0;
begin
    for itens in
        select valor from valores
        loop
            resultado = resultado + itens.valor;
        end loop;

    return resultado;
end;
$$


