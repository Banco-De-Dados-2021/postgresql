create or replace function auditar_cliente()
    returns trigger
    language plpgsql as
$$
declare
    id_audit int;
begin
    select into id_audit nextval('seq_cliente_audit');
    IF (TG_OP = 'DELETE') THEN
        INSERT INTO "Cliente_Audit" (id, cliente_id, operacao, quando, valores_antigos, valores_novos)
        values (id_audit, OLD.id, 'D', now(), row_to_json(OLD.*), null);
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO "Cliente_Audit" (id, cliente_id, operacao, quando, valores_antigos, valores_novos)
        values (id_audit, OLD.id, 'U', now(), row_to_json(OLD.*), row_to_json(NEW.*));
    ELSIF (TG_OP = 'INSERT') THEN
        INSERT INTO "Cliente_Audit" (id, cliente_id, operacao, quando, valores_antigos, valores_novos)
        values (id_audit, null, 'I', now(), null, row_to_json(NEW.*));
    END IF;

    return null; --after functions nao precisam de retorno
end;
$$;

create trigger auditar_cliente_trigger
    after insert or update or delete
    on "Cliente"
    for each row
execute procedure auditar_cliente();