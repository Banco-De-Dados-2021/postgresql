-- Caso de Uso
--
--  Marcio é brasileiro e não desiste nunca e decidiu recomeçar.

-- Comando DDL de Criacao da tabela Cliente definindo nome.
create table Cliente (
    id int not null,
    nome_completo varchar(50) not null,
    cpf varchar(11) not null,
    rg varchar(9) not null,
    nascimento date not null,
    sexo varchar(10),
    endereco varchar(200),
    constraint pk_cliente primary key (id)
);
--------------------------------------------------------

-- Comando DDL de Criação da tabela Cliente definindo PK após criação.
create table Cliente (
    id int not null,
    nome_completo varchar(50) not null,
    cpf varchar(11) not null,
    rg varchar(9) not null,
    nascimento not null date,
    sexo varchar(10),
    endereco varchar(200)
);

ALTER TABLE CLIENTE ADD CONSTRAINT pk_cliente PRIMARY KEY (ID);

--OU

ALTER TABLE CLIENTE ADD PRIMARY KEY (ID); -- usando nome padrao do banco

-- Bonus
ALTER TABLE cliente RENAME CONSTRAINT pk_cliente TO pk_novo_nome;