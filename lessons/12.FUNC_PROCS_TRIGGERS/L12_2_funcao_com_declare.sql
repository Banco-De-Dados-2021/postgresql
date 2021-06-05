drop function if exists somar_com_bonus;

create or replace function somar_com_bonus(arg1 int, arg2 int)
    returns int
    language plpgsql as
$$
declare
    bonus int = 10;
begin
    return arg1 + arg2 + bonus;
end;

$$


