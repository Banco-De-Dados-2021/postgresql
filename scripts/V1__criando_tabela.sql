-- Caso de Uso
--
--  Marcio teve uma idéia e quer desenvolver um sistema novo para controlar sua carteira de clientes.
-- ele precisa saber qual o nome do seu cliente, sexo, qual a sua idade, seus dados pessoais como cpf e rg além de qual
-- o endereço onde ele mora.

-- Comando DDL de Criacao da tabela Cliente
create table Cliente (
    id int not null primary key,
    nome varchar(50) not null,
    cpf varchar(11) not null,
    rg varchar(9) not null,
    nascimento date,
    sexo varchar(10),
    endereco varchar(200)
);

-- Comandos DDL são irreversíveis e não precisam de confirmacao (commit) para efetivar a execucao