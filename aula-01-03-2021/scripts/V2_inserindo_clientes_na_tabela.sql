-- Comando DML para inserir dados na tabela do banco de dados
-- INSERT INTO <nome_da_tabela> (<atributos_da_tabela>) VALUES (<valores_a_serem_adicionados_para_o_atributo>)

INSERT INTO CLIENTE (ID, NOME, CPF, RG, ENDERECO) VALUES (1, 'Abdon Junior', '11111111111', '111111111', 'Rua Tal Complemento Tal');
INSERT INTO CLIENTE (ID, NOME, CPF, RG, ENDERECO) VALUES (2, 'Daniel Mendes', '22222222222', '22222222', 'Rua Tal Complemento Tal e Tal');
INSERT INTO CLIENTE (ID, NOME, CPF, RG, ENDERECO) VALUES (3, 'Lucas Marketing Digital', '83220990967', '312837367', 'Rua Princesa Isabel 1499');
INSERT INTO CLIENTE (ID, NOME, CPF, RG, NASCIMENTO, ENDERECO) VALUES (4, 'Leonardo', '17402077004', '312837357', '1980-02-01', 'Rua Princesa Isabel 1499');


COMMIT; -- Pra confirmar o insert
-- ou ROLLBACK; -- Pra desistir do insert

-- Obs. Lembrar de desativar o autocommit do pgAdmin por seguranca
