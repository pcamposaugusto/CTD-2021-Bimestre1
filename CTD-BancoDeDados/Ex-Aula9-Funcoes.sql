USE musimundos_V2;

-- Exercício - Funções de agregação

SELECT * FROM faturas;

-- 1 - O valor da fatura mais alta cujo a cidade de cobrança é “Oslo”. 
SELECT MAX(valor_total) FROM faturas WHERE cidade_cobranca = "oslo";

-- 2 - O valor da fatura mais baixa de todas.
SELECT MIN(valor_total) FROM faturas;

-- 3 - O valor médio das faturas que o país de cobrança é “Canada”.
SELECT AVG(valor_total) FROM faturas WHERE pais_cobranca = "canada";

-- 4 - A quantidade de faturas que o país de cobrança é “Canada”.
SELECT COUNT(*) FROM faturas WHERE pais_cobranca = "canada";

-- 5 - O valor total somado de todas as faturas. 
SELECT SUM(valor_total) FROM faturas;

-- 6 - Selecione o id, a data e valor das faturas com valor abaixo da média.
SELECT id, data_fatura, valor_total FROM faturas 
WHERE valor_total < (SELECT AVG(valor_total) FROM faturas);

-- Na tabela empregados:
-- 7 - A data de nascimento do funcionário mais jovem da empresa. 
SELECT MAX(data_nascimento) FROM empregados;

-- 8 - A data de nascimento do funcionário mais velho da empresa.
SELECT MIN(data_nascimento) FROM empregados;

-- 9 - Formate a data do nascimento dos funcionários no formato ex: "02 May 2020"(DATE_FORMAT)
SELECT DATE_FORMAT(data_nascimento, "%d %M %Y") FROM empregados; -- m mês em número, y aparece só 21 em vez de 2021, D ordinal

-- Na tabela cancoes:
-- 10 - O numero de cancoes que tem como compositor “AC/DC”.
SELECT COUNT(*) FROM cancoes WHERE compositor = "AC/DC";

-- 11 - A duração média das músicas em milisegundos. 
SELECT AVG(duracao_milisegundos) FROM cancoes;

-- 12 - O tamanho médio em bytes das músicas que como compositor “AC/DC”.
SELECT AVG(bytes) FROM cancoes WHERE compositor = "AC/DC";

-- Na tabela clientes:
-- 13 - Quantidade de clientes que moram na cidade de “São Paulo”.
SELECT COUNT(cidade) FROM clientes WHERE cidade = "Sao Paulo";

-- 14 - Quantidade de clientes que moram na cidade “Paris”. 
SELECT COUNT(cidade) FROM clientes WHERE cidade = "Paris";

-- 15 - Quantidade de clientes que tenham email do “yahoo”. 
SELECT COUNT(email) FROM clientes WHERE email LIKE "%@yahoo%";


SELECT nome, sobrenome, data_nascimento FROM empregados
WHERE data_nascimento = (SELECT MAX(data_nascimento) FROM empregados);

SELECT nome, sobrenome, data_nascimento FROM empregados
WHERE data_nascimento = (SELECT MIN(data_nascimento) FROM empregados);

