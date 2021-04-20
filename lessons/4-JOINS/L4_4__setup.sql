drop table if exists "FornecedorProduto";
drop table if exists "Fornecedor";
drop table if exists "Estoque";
drop table if exists "Produto";
drop table if exists "UnidadeMedida";
drop table if exists "Setor";
drop table if exists "Cliente";
drop table if exists "Endereco";
drop table if exists "Cidade";
drop table if exists "Estado";

create table "Cliente"
(
    id          int         not null primary key,
    nome        varchar(50) not null,
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
    nome varchar(100) not null,
    uf   char(2)      not null
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

insert into "Estado" (id, nome, uf)
values (1, 'Acre', 'AC'),
       (2, 'Alagoas', 'AL'),
       (3, 'Amapá', 'AP'),
       (4, 'Amazonas', 'AM'),
       (5, 'Bahia', 'BA'),
       (6, 'Ceará', 'CE'),
       (7, 'Distrito Federal', 'DF'),
       (8, 'Espírito Santo', 'ES'),
       (9, 'Goiás', 'GO'),
       (10, 'Maranhão', 'MA'),
       (11, 'Mato Grosso', 'MT'),
       (12, 'Mato Grosso do Sul', 'MS'),
       (13, 'Minas Gerais', 'MG'),
       (14, 'Pará', 'PA'),
       (15, 'Paraíba', 'PB'),
       (16, 'Paraná', 'PR'),
       (17, 'Pernambuco', 'PE'),
       (18, 'Piauí', 'PI'),
       (19, 'Rio de Janeiro', 'RJ'),
       (20, 'Rio Grande do Norte', 'RN'),
       (21, 'Rio Grande do Sul', 'RS'),
       (22, 'Rondônia', 'RO'),
       (23, 'Roraima', 'RR'),
       (24, 'Santa Catarina', 'SC'),
       (25, 'São Paulo', 'SP'),
       (26, 'Sergipe', 'SE'),
       (27, 'Tocantins', 'TO'),
       (28, 'Exterior', 'EX');

insert into "Cidade" (id, nome, estado_fk)
values (1, 'Rio Branco', 1),
       (2, 'Maceió', 2),
       (3, 'Macapá', 3),
       (4, 'Manaus', 4),
       (5, 'Salvador', 5),
       (6, 'Fortaleza', 6),
       (7, 'Brasília', 7),
       (8, 'Vitória', 8),
       (9, 'Goiânia', 9),
       (10, 'São Luís', 10),
       (11, 'Cuiabá', 11),
       (12, 'Campo Grande', 12),
       (13, 'Belo Horizonte', 13),
       (14, 'Belém', 14),
       (15, 'João Pessoa', 15),
       (16, 'Curitiba', 16),
       (17, 'Recife', 17),
       (18, 'Teresina', 18),
       (19, 'Rio de Janeiro', 19),
       (20, 'Natal', 20),
       (21, 'Porto Alegre', 21),
       (22, 'Porto Velho', 22),
       (23, 'Boa Vista,', 23),
       (24, 'Florianópolis', 24),
       (25, 'São Paulo', 25),
       (26, 'Aracaju', 26),
       (27, 'Palmas', 27),
       (28, 'Maringá', 16),
       (29, 'Cianorte', 16),
       (30, 'Japurá', 16),
       (31, 'São Caetano', 25),
       (32, 'Palmital', 25),
       (33, 'Santos', 25);


INSERT INTO "Endereco" (id, logradouro, numero, bairro, cep, complemento, cidade_fk)
VALUES (1, 'Passagem Georgina', '438', 'Umarizal', '00000000', null, 14),
       (2, 'Travessa 9', '431', 'Remedios', '00000000', null, 3),
       (3, 'Quadra Quadra 10', '702', 'Núcleo Residencial Brasília', '00000000', null, 9),
       (4, 'Rua Nova Alvorada', '459', 'Jorge Lavocat', '00000000', null, 1),
       (5, 'Rua Em Projeto W', '913', 'Antares', '00000000', null, 2),
       (6, 'Rua Ebeneser Nunes do Nascimento', '800', 'Campo Grande', '00000000', null, 19),
       (7, 'Rua Vasconcelos Fernandes 126', '539', 'Amambaí', '00000000', null, 12),
       (8, 'Rua Imaculada Conceição', '824', 'Olho DÁgua dos Cazuzinhos', '00000000', null, 2),
       (9, 'Quadra SQN 312 Bloco D', '236', 'Asa Norte', '00000000', null, 7),
       (10, 'Rua Malta', '707', 'Conjunto Tucumã', '00000000', null, 1),
       (11, 'Rua Torquato Fontes', '309', 'Cirurgia', '00000000', null, 26),
       (12, 'Servidão Maria Francisca da Silva', '618', 'Córrego Grande', '00000000', null, 24),
       (13, 'Avenida Guatapara', '265', 'Vila dos Subtenentes e Sargen', '00000000', null, 9),
       (14, 'Travessa Torre', '327', 'Boa Vista', '00000000', null, 1),
       (15, 'Rua União', '189', 'Aribiri', '00000000', null, 8),
       (16, 'Rua Angra dos Reis', '933', 'Siderlândia', '00000000', null, 19),
       (17, 'Rua Antônio de Castro Alves', '442', 'Bosque da Saúde', '00000000', null, 25),
       (18, 'Rua Jerusalém II', '467', 'Jorge Lavocat', '00000000', null, 1),
       (19, 'Avenida Grande Orient', '211', 'Jardim Renascença', '00000000', null, 10),
       (20, 'Rua Alexandre Farhat', '481', 'José Augusto', '00000000', null, 1),
       (21, 'Rua Amazonita', '934', 'Amazonas', '00000000', null, 13),
       (22, 'Rua Bom Jesus do Horto', '876', 'Santos Dumont', '00000000', null, 2),
       (23, 'Rua Salvação', '344', 'Cascalheira', '00000000', null, 22),
       (24, 'Rua Amazonas', '638', 'Vila Birigui', '00000000', null, 11),
       (25, 'Avenida Salatiel Santana', '160', 'José Conrado de Araújo', '00000000', null, 26),
       (26, 'Ladeira Cáceres', '729', 'Dom Bosco', '00000000', null, 12),
       (27, 'Avenida das Sibipirunas', '244', 'Setor Residencial Sul', '00000000', null, 11),
       (28, 'Avenida Tabapoã', '599', 'Setor 03', '00000000', null, 22),
       (29, 'Avenida Desembargador Milton Figueiredo Ferreira Mendes', '739', 'Centro Político Administrativ', '00000000', null, 11);
