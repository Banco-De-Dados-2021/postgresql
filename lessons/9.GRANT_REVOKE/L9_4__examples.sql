-- Dar permissao de select em todas as tabelas de um schema para determinado usuário
grant select on all tables in schema public to "Geremias";

grant all privileges on all tables in schema public to "Geremias";

-- Revoga permissao de select em todas as tabelas de um schema para determinado usuário
revoke select on all tables in schema public from "Geremias";

-- Dar permissao de insert em todas as tabelas de um schema para determinado usuário
grant insert on all tables in schema public to "Geremias";

-- Revoga permissao de select em todas as tabelas de um schema para determinado usuário
revoke insert on all tables in schema public from "Geremias";

grant select on "Cidade" to "Geremias";
revoke select on "Cidade" from "Geremias";

revoke all privileges on all tables in schema public from "Geremias";

grant all privileges on "Cidade" to "Geremias";

grant insert (nome, estado_fk) on table "Cidade" to "Geremias";

-- Para ver todos os privilegios dados ao usuario
select * from information_schema.table_privileges
where grantee = 'Geremias';