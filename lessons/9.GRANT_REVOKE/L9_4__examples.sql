-- Dar permissao de select em todas as tabelas de um schema para determinado usuário
grant select on all tables in schema public to "Jeremias";

grant all privileges on all tables in schema public to "Jeremias";

-- Revoga permissao de select em todas as tabelas de um schema para determinado usuário
revoke select on all tables in schema public from "Jeremias";

-- Dar permissao de insert em todas as tabelas de um schema para determinado usuário
grant insert on all tables in schema public to "Jeremias";

-- Revoga permissao de select em todas as tabelas de um schema para determinado usuário
revoke insert on all tables in schema public from "Jeremias";

grant select on "Cidade" to "Jeremias";
revoke select on "Cidade" from "Jeremias";

revoke all privileges on all tables in schema public from "Jeremias";

grant all privileges on "Cidade" to "Jeremias";

grant insert (nome, estado_fk) on table "Cidade" to "Jeremias";


select * from information_schema.table_privileges
where grantee = 'Jeremias';