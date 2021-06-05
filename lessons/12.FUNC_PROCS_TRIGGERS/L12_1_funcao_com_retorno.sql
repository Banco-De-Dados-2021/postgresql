drop function if exists somar;

create or replace function somar(arg1 int, arg2 int)
    returns int
    language plpgsql
as
$$
begin
    return arg1 + arg2;
end;
$$

