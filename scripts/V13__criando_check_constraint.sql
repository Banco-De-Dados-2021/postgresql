-- Caso de Uso

-- Marcio quer garantir agora que apenas os sexos Feminino e Masculino sejam cadastrados no campo de sexo. Ele
-- abriu uma chamado solicitando a alteração.

-- DDL Create table com unique constraint (se estivessemos começando agora)
create table Cliente (
    id int not null,
    nome_completo varchar(50) not null,
    cpf varchar(11) not null,
    rg varchar(9) not null,
    nascimento date not null,
    sexo varchar(10),
    endereco varchar(200),
    constraint pk_cliente primary key (id),
    constraint uq_cpf unique(cpf),
    constraint uq_nome_completo_rg unique(nome_completo, rg),
    constraint ck_sexo check(sexo in ('Feminino', 'Masculino'))
);

-- DDL Adicionando check constraint
ALTER TABLE CLIENTE ADD CONSTRAINT ck_sexo CHECK (sexo in ('Feminino', 'Masculino'));

--Bonus
-- DDL para dropar um constraint
ALTER TABLE CLIENTE DROP CONSTRAINT ck_sexo;

--Obs.: Não é case sensitivo.