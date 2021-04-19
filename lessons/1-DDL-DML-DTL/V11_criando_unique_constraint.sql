-- Caso de Uso

-- O Marcio fez um cursinho basico de banco de dados e viu que a tabela de clientes permite que exista mais de um cpf igual
-- para clientes diferentes. Ele abriu um chamado para que realizemos a alteração da estrutura da tabela para
-- que o cpf seja unico e não seja possível incluir mais de um cliente com o mesmo cpf.

-- DDL Create table com unique constraint (se estivessemos começando agora)
create table Cliente (
    id int not null,
    nome_completo varchar(50) not null,
    cpf varchar(11) not null,
    rg varchar(9) not null,
    nascimento date,
    sexo varchar(10),
    endereco varchar(200),
    constraint pk_cliente primary key (id),
    constraint uq_cpf unique(cpf)
);

-- DDL Alterando atributo adicionando constraint de unique
ALTER TABLE CLIENTE ADD CONSTRAINT uq_cpf UNIQUE (cpf);


-- Bonus
-- DDL para drop um contraint de unique
ALTER TABLE CLIENTE DROP CONSTRAINT uq_cpf;