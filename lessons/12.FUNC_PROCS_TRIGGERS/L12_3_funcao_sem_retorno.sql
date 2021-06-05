drop function if exists somar_sem_retorno;

create or replace function somar_sem_retorno(arg1 int, arg2 int)
    returns void
    language plpgsql as
$$
declare
    resultado int;
begin
    resultado = arg1 + arg2 + bonus;
end;
$$

