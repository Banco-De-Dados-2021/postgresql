drop function if exists somar_se_positivo;

create or replace function somar_se_positivo(arg1 int, arg2 int)
    returns int
    language plpgsql as
$$
declare
    variavel1 int = 0;
    variavel2 int = 0;
    resultado int;
begin
    if (arg1 > 0) then
        variavel1 = arg1;
    else
        raise exception 'Argumento deve ser positivo';
    end if;
    if (arg2 > 0) then
        variavel2 = arg2;
    end if;
    resultado = variavel1 + variavel2;
    return resultado;
end;
$$

