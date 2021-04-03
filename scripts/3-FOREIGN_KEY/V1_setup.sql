create table "Cliente"
(
    id          int         not null primary key,
    cpf         varchar(11) not null,
    rg          varchar(9)  not null,
    nascimento  date        null,
    sexo        varchar(10) null,
    endereco_fk int         not null
);

alter table "Cliente"
    add constraint
        uq_endereco_cliente unique (endereco_fk);

create table "Endereco"
(
    id          int          not null primary key,
    logradouro  varchar(100) not null,
    numero      varchar(5)   not null,
    bairro      varchar(30)  not null,
    cep         varchar(8)   not null,
    complemento varchar(50)  null,
    cidade_fk   int          not null
);

-- Criando nossa primeira FK entre cliente e endereco
ALTER TABLE "Cliente"
    ADD CONSTRAINT fk_cliente_endereco FOREIGN KEY (endereco_fk)
        REFERENCES "Endereco" (id);

create table "Cidade"
(
    id        int          not null primary key,
    nome      varchar(100) not null,
    estado_fk int          not null
);

create table "Estado"
(
    id   int          not null primary key,
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

create table "Setor"
(
    id   int         not null primary key,
    nome varchar(50) not null
);

create table "UnidadeMedida"
(
    id    int         not null primary key,
    nome  varchar(50) not null,
    sigla varchar(4)  not null
);

create table "Produto"
(
    id                int         not null primary key,
    nome              varchar(50) not null,
    vencimento        date        not null,
    setor_fk          int         not null,
    unidade_medida_fk int         not null
);

ALTER TABLE "Produto"
    ADD CONSTRAINT fk_produto_setor
        FOREIGN KEY (setor_fk)
            REFERENCES "Setor" (id);

ALTER TABLE "Produto"
    ADD CONSTRAINT fk_produto_unidade_medida
        FOREIGN KEY (unidade_medida_fk)
            REFERENCES "UnidadeMedida" (id);

create table "Estoque"
(
    id         int            not null primary key,
    produto_fk int            not null,
    quantidade decimal(10, 2) not null
);

alter table "Estoque"
    add constraint
        uq_estoque_produto unique (produto_fk);

ALTER TABLE "Estoque"
    ADD CONSTRAINT fk_estoque_produto
        FOREIGN KEY (produto_fk)
            REFERENCES "Produto" (id);


create table "Fornecedor"
(
    id          int          not null primary key,
    nome        varchar(100) not null,
    cpf_cnpj    varchar(14)  not null,
    endereco_fk int          not null
);

ALTER TABLE "Fornecedor"
    ADD CONSTRAINT fk_fornecedor_endereco
        FOREIGN KEY (endereco_fk)
            REFERENCES "Endereco" (id);


create table "FornecedorProduto"
(
    produto_fk    int not null,
    fornecedor_fk int not null,
    constraint pkey_forencedor_produto primary key (produto_fk, fornecedor_fk)
);

ALTER TABLE "FornecedorProduto"
    ADD CONSTRAINT fk_fornecedor_produto_produto
        FOREIGN KEY (produto_fk)
            REFERENCES "Produto" (id);

ALTER TABLE "FornecedorProduto"
    ADD CONSTRAINT fk_fornecedor_produto_fornecedor
        FOREIGN KEY (fornecedor_fk)
            REFERENCES "Fornecedor" (id);