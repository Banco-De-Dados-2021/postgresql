-- Caso de Uso

-- O Marcio também achou mais adequado não permitir cadastrar mais de uma vez um mesmo cliente com o mesmo rg. Poderiamos
-- cadastrar uma unique constraint para RG, porém como a mesma pessoa pode tirar um RG em cada estado do Brasil o número do RG
-- pode se repetir para outra pessoa no território nacional, isso nos força a criar uma restrição unica composta.

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
    constraint uq_nome_completo_rg unique(nome_completo, rg)
);

-- DDL Adicionado uma restrição de unicidade nos campos nome_completo e rg.
ALTER TABLE CLIENTE ADD CONSTRAINT uq_nome_completo_rg UNIQUE (nome_completo, rg);

--Bonus
-- DDL para dropar um constraint
ALTER TABLE CLIENTE DROP CONSTRAINT uq_nome_completo_rg;