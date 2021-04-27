-- Cria um usuário com senha definida e com privilegios padrao
CREATE USER rasso_com_senha WITH PASSWORD 'minha-senha';

-- Cria um usuário com senha definida e validade de acesso e com privilegios padrao
CREATE USER rasso_com_prazo WITH PASSWORD 'minha-senha' VALID UNTIL '2021-12-01';

-- Cria um usuário e atribui já alguns super privilegios para ele e com data de expiracao do acesso
CREATE USER meu_super_usuario with PASSWORD 'sou-super' SUPERUSER CREATEDB CREATEROLE LOGIN CONNECTION LIMIT 10 VALID UNTIL '2022-12-01';

-- Renomeia o usuário (Cuidado pois será obrigado redefinir a senha depois do rename)
alter user rasso rename to rafael_rasso;

-- Reseta senha do usuario
ALTER USER rafael_rasso WITH PASSWORD 'strongpassword';

-- Drop usuario
drop user rafael_rasso;