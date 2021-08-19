-- Exercício Relatórios II

-- 1) Liste a quantidade de canções existem para cada gênero musical, agrupando a consulta por gênero e ordenando da maior quantidade para a menor.

SELECT cancoes.id_genero, count(cancoes.nome), generos.nome
FROM cancoes
INNER JOIN generos
ON generos.id = cancoes.id_genero
GROUP BY id_genero
ORDER BY count(cancoes.nome) DESC;


-- 2) Liste a quantidade de canções existentes para gênero musical, agrupando por gênero. Exiba apenas os genêros que tem mais de 10 canções.

SELECT generos.nome, count(cancoes.nome)
FROM cancoes
INNER JOIN generos
ON generos.id = cancoes.id_genero
GROUP BY generos.nome
HAVING count(cancoes.nome) > 10 
ORDER BY count(cancoes.nome) DESC;


-- 3) Utilizando as tabelas clientes e faturas, liste os países,a quantidade de clientes e a soma das faturas por país,ordenando do maior para o menor, limitando a consulta a 7 registros.

SELECT clientes.pais, count(DISTINCT clientes.id), 
sum(faturas.valor_total)
FROM clientes
INNER JOIN faturas
ON faturas.id_cliente = clientes.id
GROUP BY clientes.pais
ORDER BY sum(faturas.valor_total) DESC
LIMIT 7;

