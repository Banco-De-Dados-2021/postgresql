select "Cidade".id, "Cidade".nome, "Endereco".id id_endereco, "Endereco".logradouro, "Endereco".cidade_fk
from "Cidade"
         full join "Endereco"
                   on "Cidade".id = "Endereco".cidade_fk;
-------------------------------------

select "Cidade".id, "Cidade".nome, "Endereco".id id_endereco, "Endereco".logradouro, "Endereco".cidade_fk
from "Cidade"
         full join "Endereco"
                   on "Cidade".id = "Endereco".cidade_fk
where "Endereco".id is null
   OR "Cidade".id is null


