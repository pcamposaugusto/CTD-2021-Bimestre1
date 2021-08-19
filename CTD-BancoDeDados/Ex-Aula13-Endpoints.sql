USE musimundos_V2;

-- 1. Listar todos os nomes de todos artistas ordenados de forma crescente
SELECT nome FROM artistas
ORDER BY nome;

-- 2. Quais são os generos musicais existentes? 
SELECT nome FROM generos;

-- 3. Mostre todos os compositores que criaram alguma cancao;
SELECT DISTINCT(compositor) FROM cancoes
WHERE compositor != ""
ORDER BY compositor;

-- 4. Mostre a lista dos empregados que foram contratados a partir de 2005
SELECT nome, sobrenome, data_contratacao FROM empregados
WHERE YEAR (data_contratacao) >= "2005";

-- 5. Liste todos os paises que têm faturas com valor superior a 1.000
SELECT DISTINCT(pais_cobranca), valor_total FROM faturas
WHERE valor_total > 1;

SELECT pais_cobranca, SUM(valor_total) AS soma_faturas 
FROM faturas
GROUP BY pais_cobranca;

-- 6. Quantas cancoes foram compostas por AC/DC ?
SELECT COUNT(nome) FROM cancoes
WHERE compositor LIKE "AC/DC";

-- 7. Mostre as 10 primeiras cidades que tem faturas com valor superior a 100 reias.
SELECT cidade_cobranca FROM faturas
WHERE valor_total > 1
LIMIT 10;


-- Exercícios Aula 13 - Endpoints

-- 1. Na tabela clientes selecione os campos nome e sobrenome e concatene(função concat) eles para que formem o nome completo do cliente. Relacione cada cliente com a cidade de cobrança que consta na tabela faturas. Precisamos apenas uma ocorrência distinta de cada cliente.

SELECT DISTINCT CONCAT(c.nome, " ", c.sobrenome) AS nome_completo, f.cidade_cobranca
FROM clientes c
INNER JOIN faturas f
ON c.id = f.id_cliente;

-- 2. Na tabela cancoes selecione o nome da canção e relacionado com a tabela tipos_de_arquivos, selecione também o nome do tipo do arquivo. Inclua na sua seleção também as canções que não tem tipo de arquivo. Ordene pelo id da canção de forma decrescente limitado a 4000 registros.

SELECT t.nome AS nome_arquivo, c.nome AS nome_cancoes  
FROM tipos_de_arquivo t
RIGHT JOIN cancoes c
ON t.id = c.id_tipo_de_arquivo
ORDER BY c.id DESC
LIMIT 4000;

-- 3. Em nosso banco de dados, cada fatura é composta por várias músicas adquiridas pelos clientes. Selecione da tabela faturas o id do cliente e a data da fatura. Usando também a tabela intermediária itens_da_faturas selecione também o nome de cada musica adquirida ou seja, na tabela canções o campo nome. Ordene tudo pelo id do cliente de forma decrescente.

SELECT f.id_cliente, f.data_fatura, c.nome AS nome_cancao
FROM faturas f
INNER JOIN itens_da_faturas it ON f.id = it.id_fatura
INNER JOIN cancoes c ON it.id_cancao = c.id
ORDER BY f.id_cliente DESC;

-- 4. Um artista tem albuns, que por sua vez tem cancões. Selecione o nome do artista da tabela artistas, selecione os nomes dos albuns deste artista (tabela intermediária albuns) e também o nome das canções deste artista contidas nos albuns (tabela cancoes). Ordene os resultados pelo nome do artista de forma decrescente.

SELECT art.nome AS artista, alb.titulo AS titulo_album, c.nome AS nome_cancao
FROM artistas art
INNER JOIN albuns alb ON art.id = alb.id_artista
INNER JOIN cancoes c ON alb.id = c.id_album
ORDER BY artista DESC; 

-- 5. Selecione o nome dos gêneros(table generos), o nome das canções deste gênero (table cancoes) e o tipo de arquivo de cada canção (tipos_de_arquivo). Selecione inclusive as musicas que o tipo de arquivo é nulo. Ordene tudo isso pelo nome do gênero de forma decrescente.

SELECT g.nome AS genero, c.nome AS cancao, t.nome AS tipo_de_arquivo
FROM generos g
INNER JOIN cancoes c ON g.id = c.id_genero
LEFT JOIN tipos_de_arquivo t ON c.id_tipo_de_arquivo = t.id
ORDER BY genero DESC;
