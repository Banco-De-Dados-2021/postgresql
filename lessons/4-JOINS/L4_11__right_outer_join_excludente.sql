select * from "Cidade" right join "Estado"
                                  on "Cidade".estado_fk = "Estado".id
where "Cidade".id is null;

----------------------
select * from "Cidade" c
                  right join "Estado" e
                             on c.estado_fk = e.id
where c.id is null;

----------------------
select e.nome Estado, e.uf UF, c.nome Cidade
from "Cidade" c
         right join "Estado" e
                    on c.estado_fk = e.id
where c.id is null;

----------------------
select e.nome Estado, e.uf UF, c.nome Cidade, edr.logradouro Logradouro
from "Endereco" edr
         right join "Cidade" c
                    on edr.cidade_fk = c.id
         right join "Estado" e
                    on c.estado_fk = e.id
where c.id is null

