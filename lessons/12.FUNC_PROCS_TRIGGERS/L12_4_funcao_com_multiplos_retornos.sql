drop function if exists somar_com_multiplos_retornos;

-- Exemplo function (ou stored procedure)
create or replace function somar_com_multiplos_retornos(in arg1 int, in arg2 int, out resultado int, out bonus int)
    returns record
    language plpgsql as
$$
begin
    bonus = 10;
    resultado = arg1 + arg2 + bonus;
end;
$$

