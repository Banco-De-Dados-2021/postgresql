drop trigger if exists somar_trigger_ins on valores;
drop trigger if exists somar_trigger_upd on valores;
drop trigger if exists somar_trigger_del on valores;
drop function if exists somar_on_insert();
drop function if exists somar_on_update();
drop function if exists somar_on_delete();
drop function if exists somar_inserindo_dados();

alter table resultados add column gatilho varchar(50) default 'none';

create or replace function somar_inserindo_dados(gatilho varchar(50))
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

    insert into resultados (valores, resultado, gatilho) values (valores, resultado, gatilho);
end;
$$;

create or replace function somar_on_insert()
    returns trigger
    language plpgsql as
$$
begin
    -- seu comportamento aqui
    perform somar_inserindo_dados('after insert');
    return null;
end;
$$;

create or replace function somar_on_update()
    returns trigger
    language plpgsql as
$$
begin
    perform somar_inserindo_dados('after update');
    return null;
end;
$$;

create or replace function somar_on_delete()
    returns trigger
    language plpgsql as
$$
begin
    perform somar_inserindo_dados('after delete');
    return null;
end;
$$;

create trigger somar_trigger_ins
    after insert on valores for each statement execute procedure somar_on_insert();

create trigger somar_trigger_upd
    after update on valores for each statement execute procedure somar_on_update();

create trigger somar_trigger_del
    after delete on valores for each statement execute procedure somar_on_delete();
