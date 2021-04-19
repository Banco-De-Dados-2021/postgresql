-- Caso de Uso

-- Marcio estava analisando os dados na tabela e observou que o Cliente 3 estava sem endereço e estava com o sexo incorreto.
-- Ele abriu um chamado pedindo para fazer as correções o sexo correto é o Masculino e o Endereço é Rodovia PR-082 Km 468, S/N, Gleba,Cianorte,PR

-- DML para atualizado um dado.
UPDATE CLIENTE
    SET SEXO = 'Masculino',
        ENDERECO = 'Rodovia PR-082 Km 468, S/N, Gleba,Cianorte,PR'
        WHERE ID = 3;

-- DTL de confirmação
COMMIT;

--Bonus
--UPDATE CLIENTE SET SEXO = 'Masculino' WHERE ID = 3;
--UPDATE CLIENTE SET ENDERECO = 'Rodovia PR-082 Km 468, S/N, Gleba,Cianorte,PR' WHERE ID = 3;

