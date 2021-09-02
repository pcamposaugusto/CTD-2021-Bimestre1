USE movies_db;

-- Consultas - Alias, Limit e Offset

-- 1. Mostre o título de todas as séries e use alias para que o nome do campo fique em português.
SELECT title AS titulo FROM series;

-- 2. Busque por título de filmes com classificação superior a 3, com mais de 1 prêmio e com data de lançamento entre '01-01-1988' e '31-12-2009'. Classifique os resultados em ordem decrescente.
SELECT title FROM movies
WHERE rating > 3 AND awards > 1 AND '1988-01-01' < release_date < '2009-12-31' -- poderia utilizar BETWEEN
ORDER BY title DESC;

-- 3. Fazer um top 3 com os filmes a partir do 10o registro da consulta anterior.
SELECT title FROM movies
ORDER BY rating
LIMIT 3
OFFSET 9; 

-- 4. Quais são os 3 piores episódios considerando suas classificações?
SELECT title FROM episodes
ORDER BY rating
LIMIT 3;

-- 5. Liste todos os atores.
SELECT first_name AS nome, last_name AS sobrenome FROM actors;

