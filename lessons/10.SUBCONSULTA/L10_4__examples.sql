-- Exemplo de subconsulta no atributo com multiplos resultados. Essa consulta não irá funcionar
select s.nome,
       (select p.id from "Produto" p where p.setor_fk = s.id)
from "Setor" s;

-- Exemplo de subconsulta por atributo onde a subconsulta retorna apenas 1 resultado,
-- esta consulta funciona lindamente.
select p.nome                      nome_produto,
       (select quantidade
        from "Estoque" e
        where e.produto_fk = p.id) total_estoque
from "Produto" p;

-- Exemplo de subconsulta no where
select *
from "Produto" p
where p.setor_fk in (select s.id
                     from "Setor" s
                     where s.nome like 'M%');

-- Exemplo de subconsulta como tabela
select c.nome, e.logradouro
from "Cidade" c
         inner join (select cidade_fk, logradouro from "Endereco") e
                    on c.id = e.cidade_fk;