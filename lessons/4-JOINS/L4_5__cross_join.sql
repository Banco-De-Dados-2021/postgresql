-- CROSS JOIN Básico, apenas com from
select *
from "Estado",
     "Cidade";

-- CROSS JOIN EXPLICITO (cross join)
select *
from "Estado"
         cross join "Cidade";

-- CROSS JOIN EXPLICITO COM MAIS DE DUAS TABELAS E COM APELIDOS
select e.nome, "Cidade".nome, "Endereco".logradouro
from "Estado" e
         cross join "Cidade"
         cross join "Endereco"
order by e.nome