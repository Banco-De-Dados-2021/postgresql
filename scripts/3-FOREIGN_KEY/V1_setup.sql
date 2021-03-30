create table "Cliente" (
	id int not null primary key,
	cpf varchar(11) not null,
	rg varchar(9) not null,
	nascimento date null,
	sexo varchar(10) null,
	endereco_fk int not null
);

create table "Endereco" (
	id int not null primary key,
	logradouro varchar(100) not null,
	numero varchar(5) not null,
	bairro varchar(30) not null,
	cep varchar(8) not null,
	complemento varchar(50) null,
	cidade_fk int not null
);

-- Criando nossa primeira FK entre cliente e endereco
ALTER TABLE "Cliente"
    ADD CONSTRAINT fk_cliente_endereco FOREIGN KEY (endereco_fk)
    REFERENCES "Endereco" (id);

create table "Cidade" (
	id int not null primary key,
	nome varchar(100) not null,
	estado_fk int not null
);

create table "Estado" (
	id int not null primary key,
	nome varchar(100) not null
);

ALTER TABLE "Endereco"
    ADD CONSTRAINT fk_endereco_cidade
		FOREIGN KEY (cidade_fk)
    REFERENCES "Cidade" (id);

ALTER TABLE "Cidade"
    ADD CONSTRAINT fk_cidade_estado
		FOREIGN KEY (estado_fk)
    REFERENCES "Estado" (id);
