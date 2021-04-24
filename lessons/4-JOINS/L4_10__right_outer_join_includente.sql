select * from "Cidade"
                  right join "Estado"
                             on "Cidade".estado_fk = "Estado".id;
----------------------
select * from "Cidade" c
                  right join "Estado" e
                             on c.estado_fk = e.id;

----------------------
select e.nome Estado, e.uf UF, c.nome Cidade
from "Estado" e
         right join "Cidade" c on e.id = c.estado_fk;

----------------------
select e.nome Estado, e.uf UF, c.nome Cidade, edr.logradouro Logradouro
from "Endereco" edr
         right join "Cidade" c
                    on edr.cidade_fk = c.id
         right join "Estado" e
                    on c.estado_fk = e.id;

