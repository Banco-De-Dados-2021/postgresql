-- Comando DDL de Criacao da tabela Cliente

create table Cliente (
    id int not null primary key,
    nome varchar(50) not null,
    cpf varchar(11) not null,
    rg varchar(9) not null,
    nascimento date,
    endereco varchar(200)
);

-- Comandos DDL são irreversíveis e não precisam de confirmacao (commit) para efetivar a execucao