select * from "Estado"
                  left join "Cidade"
                            on "Estado".id = "Cidade".estado_fk
where "Cidade".id is null
----------------------
select * from "Estado" e
                  left join "Cidade" c
                            on e.id = c.estado_fk
where c.id is null;

----------------------
select e.nome Estado, e.uf UF, c.nome Cidade
from "Estado" e
         left join "Cidade" c on e.id = c.estado_fk
where c.id is null;

----------------------
select e.nome Estado, e.uf UF, c.nome Cidade, edr.logradouro Logradouro
from "Estado" e
         left join "Cidade" c
                   on e.id = c.estado_fk
         left join "Endereco" edr
                   on c.id = edr.cidade_fk
where c.id is null and edr.id is null

----------------------
select e.nome Estado, e.uf UF, c.nome Cidade, edr.logradouro Logradouro
from "Estado" e
         left join "Cidade" c
                   on e.id = c.estado_fk
         left join "Endereco" edr
                   on c.id = edr.cidade_fk
where edr.id is null


