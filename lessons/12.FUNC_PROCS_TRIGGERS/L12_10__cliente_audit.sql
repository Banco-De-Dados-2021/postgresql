drop table if exists "Cliente_Audit";
drop sequence if exists seq_cliente_audit;

create sequence seq_cliente_audit;

create table "Cliente_Audit"
(
    id              int not null primary key,
    cliente_id      int,
    operacao        char(1) not null,
    quando          timestamp not null,
    valores_antigos json,
    valores_novos   json
);