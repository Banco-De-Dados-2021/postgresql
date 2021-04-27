CREATE SEQUENCE SEQ_CLIENTE;

SELECT nextval('seq_cliente');

CREATE SEQUENCE SEQ_CLIENTE increment by 3;

alter sequence SEQ_CLIENTE increment by 3;

CREATE SEQUENCE SEQ_CLIENTE minvalue 10 maxvalue 20;

CREATE SEQUENCE SEQ_CLIENTE start with 10 cache 10;

DROP SEQUENCE SEQ_CLIENTE;

ALTER TABLE "Cliente" ALTER COLUMN id SET DEFAULT nextval('seq_cliente');

insert into "Cliente" (cpf, rg, nascimento, sexo, endereco_fk) values ('1234567898', '115555484', current_date, 'Masculino', 1);
insert into "Cliente" (cpf, rg, nascimento, sexo, endereco_fk) values ('1234567899', '115555485', current_date, 'Feminino', 2);
