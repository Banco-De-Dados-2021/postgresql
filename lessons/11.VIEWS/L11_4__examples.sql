create view v_produto
as select * from "Produto";

create or replace view v_produto
as select * from "Produto";

alter view v_produto rename to v_produto_renamed;

alter view v_produto_renamed owner to 'novo_owner';

drop view v_produto_renamed;