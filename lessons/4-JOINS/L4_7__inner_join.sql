select * from "Estado"
         inner join "Cidade"
                    on "Estado".id = "Cidade".estado_fk;
----------------------
select * from "Estado" e
     inner join "Cidade" c
         on e.id = c.estado_fk;

----------------------
select e.nome Estado, e.uf UF, c.nome Cidade
from "Estado" e
         inner join "Cidade" c on e.id = c.estado_fk;

----------------------
select e.nome Estado, e.uf UF, c.nome Cidade, edr.logradouro Logradouro
from "Estado" e
         inner join "Cidade" c
                    on e.id = c.estado_fk
         inner join "Endereco" edr
                    on c.id = edr.cidade_fk;


----------
select
    a.nome nome_estado,
    a.uf,
    b.nome nome_cidade,
    c.logradouro
from "Estado" a
         inner join "Cidade" b
                    on a.id = b.estado_fk
         inner join "Endereco" c
                    on b.id = c.cidade_fk
where a.uf = 'AC'
order by 1, 2, 3;

