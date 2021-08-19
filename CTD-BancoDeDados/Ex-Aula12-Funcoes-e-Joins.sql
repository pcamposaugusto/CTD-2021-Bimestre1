USE musimundos_V3;

-- Aula 12 - Exercício Assíncrono

SELECT artistas.nome, albuns.titulo 
FROM artistas 
INNER JOIN albuns ON artistas.id = albuns.id_artista
WHERE artistas.nome = "Queen"; 

SELECT artistas.nome, COUNT(albuns.titulo) 
FROM artistas 
INNER JOIN albuns ON artistas.id = albuns.id_artista
WHERE artistas.nome = "Simply Red"; 

SELECT cancoes.nome, COUNT(itens_da_faturas.quantidade)
FROM cancoes 
INNER JOIN itens_da_faturas ON cancoes.id = itens_da_faturas.id_cancao
WHERE cancoes.nome = "Overdose";

CREATE VIEW faturas_nacionais AS
SELECT clientes.id AS clientesid, clientes.nome, clientes.sobrenome, faturas.id AS faturasid, faturas.data_fatura, faturas.valor_total
FROM clientes
INNER JOIN faturas ON clientes.id = faturas.id_cliente
WHERE faturas.pais_cobranca = "Argentina";

SELECT COUNT(*) FROM faturas_nacionais;

CREATE VIEW latinos AS
SELECT artistas.nome AS artista, albuns.titulo AS album, cancoes.nome AS cancao
FROM artistas
INNER JOIN albuns ON artistas.id = albuns.id_artista
INNER JOIN cancoes ON albuns.id = cancoes.id_album
INNER JOIN generos ON generos.id = cancoes.id_genero
WHERE generos.nome = "Latin";

SELECT * FROM latinos ORDER BY artista, cancao;
