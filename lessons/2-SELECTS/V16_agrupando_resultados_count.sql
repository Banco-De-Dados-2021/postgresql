-- Agrupa o resultado da contagem de registros (*) pela unidade de medida
select unidade_medida, count(*)
    from produto
    group by unidade_medida

-- Agrupa o resultado da contagem de unidades de medidas pela  propria unidade de medida
select unidade_medida, count(unidade_medida)
    from produto
    group by unidade_medida

-- Agrupa o resultado da contagem de fornecedores pela unidade de medida
select unidade_medida, count(fornecedor)
        from produto
        group by unidade_medida;
-- HAVING
-- Semelhante ao where mas usado exclusivamente em conjunto com o group by nunca sem ele


-- Agrupa o resultado da contagem de registros (*) pela unidade de medida e elimina aquelas cujo o resultado da contagem
-- sejam menor que 1.
select unidade_medida, count(*)
    from produto
    group by unidade_medida
    having count(*) > 1

select unidade_medida, count(unidade_medida)
    from produto
    group by unidade_medida
    having count(unidade_medida) = 1