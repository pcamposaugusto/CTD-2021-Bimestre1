USE musimundos_V2;

DELIMITER $$
CREATE PROCEDURE todosClientes()
BEGIN
SELECT * FROM clientes;
END $$
DELIMITER ;

-- CALL todosClientes();

-- Exercícios
-- Utilizando a base de dados musimundos_v2, na tabela faturas crie as procedures:

-- 1) Crie uma procedure que selecione o valor da fatura com o valor mais baixo.
DELIMITER $$
CREATE PROCEDURE vlrFaturaBx()
BEGIN
SELECT MIN(valor_total) FROM faturas;
END $$
DELIMITER ;

CALL vlrFaturaBx();

-- 2) Crie uma procedure que retorna a quantidade de faturas que tem o país de cobrança como “Canada”.
DELIMITER $$
CREATE PROCEDURE qntdFaturasCanada()
BEGIN
SELECT COUNT(id) FROM faturas WHERE pais_cobranca = "Canada";
END $$
DELIMITER ;

CALL qntdFaturasCanada();

-- 3) Uma procedure que retorna o valor somado de todas as faturas.
DELIMITER $$
CREATE PROCEDURE somaFaturas()
BEGIN
SELECT SUM(valor_total) FROM faturas;
END $$
DELIMITER ;

CALL somaFaturas();

-- 4) Uma procedure que retorna o valor médio de todas as faturas.
DELIMITER $$
CREATE PROCEDURE mediaFaturas()
BEGIN
SELECT AVG(valor_total) FROM faturas;
END $$
DELIMITER ;

CALL mediaFaturas();


-- Utilizando a base de dados musimundos_v2, na tabela cancoes crie as procedures:

-- 1) Crie uma procedure que retorna o tamanho em bytes e a duração de uma canção pelo seu id.
DELIMITER $$
CREATE PROCEDURE cancaoTamDur(IN id_cancao SMALLINT)
BEGIN
SELECT bytes, duracao_milisegundos FROM cancoes
WHERE id_cancao = id;
END $$
DELIMITER ;

CALL cancaoTamDur(1);

-- 2) Crie uma procedure que retorna o preço unitário de uma canção pelo seu id.
DELIMITER $$
CREATE PROCEDURE cancaoPreco(IN id_cancao SMALLINT)
BEGIN
SELECT preco_unitario FROM cancoes
WHERE id_cancao = id;
END $$
DELIMITER ;

CALL cancaoPreco(2);

-- 3) Crie uma procedure que retorna o id da canção, o nome da canção e o tipo de arquivo(table tipos_de_arquivo) desta canção a partir de um id da canção informado.
DELIMITER $$
CREATE PROCEDURE cancaoIdNomeTipo(IN id_cancao SMALLINT)
BEGIN
SELECT cancoes.id, cancoes.nome, tipos_de_arquivo.nome FROM cancoes
INNER JOIN tipos_de_arquivo ON tipos_de_arquivo.id = cancoes.id_tipo_de_arquivo
WHERE id_cancao = cancoes.id;
END $$
DELIMITER ;

CALL cancaoIdNomeTipo(2);


-- Utilizando a base de dados musimundos_v2, na tabela clientes crie as procedures:

-- 1) Crie uma procedure que retorna o nome e sobrenome concatenados e também o email de todos os clientes.
DELIMITER $$
CREATE PROCEDURE clienteNomeEmail()
BEGIN
SELECT CONCAT(nome, " ", sobrenome) AS nome_completo, email FROM clientes;
END $$
DELIMITER ;

CALL clienteNomeEmail();

-- 2) Crie uma procedure que retorna o nome completo (nome e sobrenome concatenados) e também o endereço completo (endereço, cidade, estado e país) de um cliente pelo id informado.
DELIMITER $$
CREATE PROCEDURE clienteNomeEndereco(IN id_cliente SMALLINT)
BEGIN
SELECT CONCAT(nome, " ", sobrenome) AS nome_completo, CONCAT(endereco, ", ", cidade, ", ", estado, ", ", pais) AS endereco_completo 
FROM clientes
WHERE id_cliente = id;
END $$
DELIMITER ;

CALL clienteNomeEndereco(20);

-- 3) Crie uma procedure que retorna o nome do cliente e o valor total de cada uma das suas faturas pelo id do cliente informado.
DELIMITER $$
CREATE PROCEDURE clienteFaturas(IN id_cliente SMALLINT)
BEGIN
SELECT CONCAT(clientes.nome, " ", clientes.sobrenome) AS nome_completo, faturas.valor_total 
FROM clientes
INNER JOIN faturas ON clientes.id = faturas.id_cliente
WHERE id_cliente = clientes.id;
END $$
DELIMITER ;

CALL clienteFaturas(32); 
 