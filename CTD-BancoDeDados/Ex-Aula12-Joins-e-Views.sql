USE musimundos_V3;

-- Exercícios - Queries IV

UPDATE faturas SET id_cliente = NULL WHERE id_cliente > 50;

UPDATE cancoes SET cancoes.id_tipo_de_arquivo = NULL WHERE cancoes.id > 850;

-- 1 - Quantos registros foram retornados em cada consulta?

-- A) Selecione os nomes dos artistas (tabela artistas) que tem albuns, e o nome de seus albuns (tabelas albuns) ordenado por id do artista (Order by).

CREATE VIEW artistas_por_album AS
SELECT artistas.nome, albuns.titulo
FROM artistas
INNER JOIN albuns ON artistas.id = albuns.id_artista
ORDER BY artistas.id; -- Retornou 347 resultados

-- B) Agora selecione os nomes dos artistas (tabela artistas) que tem, e que não tem albuns, e o nome de seus albuns quando houver (tabelas albuns) ordenado por id do artista (Order by).

CREATE VIEW artistas_todos AS
SELECT artistas.nome, albuns.id_artista
FROM artistas
LEFT JOIN albuns ON artistas.id = albuns.id_artista
ORDER BY artistas.id; -- 418

-- 2 - Quantos registros foram retornados em cada consulta?

-- A) Selecione o id e o nome dos cliente (clientes) e o valor suas faturas (faturas).

CREATE VIEW clientes_por_fatura AS
SELECT clientes.id, clientes.nome, faturas.valor_total
FROM clientes
INNER JOIN faturas ON clientes.id = faturas.id_cliente; -- 350

-- B) Agora selecione o id e o nome dos cliente (clientes) e o valor suas faturas (faturas). E selecione também as faturas que não tem clientes.
 
CREATE VIEW faturas_todas AS
SELECT clientes.id, clientes.nome, faturas.valor_total
FROM clientes
RIGHT JOIN faturas ON clientes.id = faturas.id_cliente; -- 412

-- 3 - Quantos registros foram retornados em cada consulta?

-- A) Selecione o nome da canção (cancoes) e o tipo e arquivo delas. 

CREATE VIEW tipodearquivo_por_cancao AS
SELECT tipos_de_arquivo.nome AS tipo_de_arquivo, cancoes.nome AS cancoes
FROM tipos_de_arquivo 
INNER JOIN cancoes ON tipos_de_arquivo.id = cancoes.id_tipo_de_arquivo; -- 850

-- B) Agora selecione o nome da canção (cancoes) e o tipo e arquivo delas. E selecione também os tipos de arquivo que não tem musicas. 

CREATE VIEW cancoes_todas AS
SELECT tipos_de_arquivo.nome AS tipo_de_arquivo, cancoes.nome AS cancoes
FROM tipos_de_arquivo 
RIGHT JOIN cancoes ON tipos_de_arquivo.id = cancoes.id_tipo_de_arquivo; -- 1000

-- C) Agora selecione o nome da canção (cancoes) e o tipo e arquivo delas. E selecione também as musicas que não tem tipo de arquivo.
 
CREATE VIEW tiposdearquivo_todos AS
SELECT tipos_de_arquivo.nome AS tipo_de_arquivo, cancoes.nome AS cancoes
FROM tipos_de_arquivo 
LEFT JOIN cancoes ON tipos_de_arquivo.id = cancoes.id_tipo_de_arquivo; -- 853

-- 4 - Transforme todas as consultas feitas nos exercícios anteriores em views. E salve-as.


-- 5 - Crie Views para as seguintes consultas:

-- A) Consultar todas as canções;

CREATE VIEW select_cancoes AS
SELECT * FROM cancoes; -- 1000

-- B) Consultar todas as faturas com valor maior que 5.

CREATE VIEW faturas_maior_5 AS
SELECT * FROM faturas
WHERE valor_total > 5; -- 179

-- C) Consultar todos artistas cujo o nome começa com a letra B.

CREATE VIEW artistas_B AS
SELECT * FROM artistas
WHERE artistas.nome LIKE "B%"; -- 22




