-- Caso de Uso
-- O Marcio perdeu um de seus clientes. O Cliente 29 decidiu ir para concorrencia. Marcio tristemente abriu um chamado
-- solicitando que os dados fossem removidos respeitando as regras da lei geral de proteção de dados. LGPD


-- DML para remover um dado
DELETE FROM CLIENTE WHERE ID = 29;

-- DTL de confirmação
COMMIT;