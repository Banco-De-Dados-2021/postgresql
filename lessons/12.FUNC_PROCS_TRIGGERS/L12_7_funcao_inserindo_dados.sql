drop table if exists resultados;

create table resultados
(
    valores   varchar(500) not null,
    resultado int          not null
);

drop function if exists somar_inserindo_dados;

create or replace function somar_inserindo_dados()
    returns void
    language plpgsql as
$$
declare
    itens     record;
    resultado int          = 0;
    valores   varchar(500) = '';
begin
    for itens in
        select valor from valores
        loop
            resultado = resultado + itens.valor;
            valores = valores || ',' || itens.valor;
        end loop;

    insert into resultados (valores, resultado) values (valores, resultado);
end;
$$


