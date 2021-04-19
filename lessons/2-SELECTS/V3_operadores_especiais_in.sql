-- Operador IN, valida se o id é um dos valores informados na verificacao.
SELECT * FROM CLIENTE
        WHERE ID IN (1, 2, 3) and nome = 'ushaudhasd'

-- Operador NOT IN, valida se o campo não é um dos valores informados na verificacao.
SELECT * FROM CLIENTE
        WHERE ID NOT IN (1, 2, 3)

-- Operador IN / NOT IN com campos de texto
SELECT * FROM CLIENTE
        WHERE sexo IN ('Feminino', 'Outro')
