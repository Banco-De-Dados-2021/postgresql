create database "cliente-db";

create database "cliente-db" with owner "postgres";

create database "cliente-db"
            with owner "postgres"
               connection limit -1; -- -1 indica que não tem limite de conexoes.

create database "cliente-db"
            with owner "postgres"
                 connection limit 10; -- -1 indica que não tem limite de conexoes.

-- Para funcionar precisa que não exista conexões ativas no banco de dados
alter database "cliente-db" rename to "cliente-renamed-db";

-- Para trocar o owner da tabela
alter database "cliente-db" owner to "new_owner";

-- Para trocar o numero de conexoes possiveis no banco de dados
alter database "cliente-db"  with connection limit 20;


alter database "cliente-db"  with connection limit 20
                                owner to "new_owner";


-- Para funcionar precisa que não exista conexões ativas no banco de dados
drop database "cliente-db";