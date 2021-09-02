USE musimundos_V2;

SHOW INDEX FROM cancoes;

EXPLAIN SELECT nome FROM cancoes
WHERE compositor = "AC/DC";

-- EXPLAIN ANALYZE SELECT nome FROM cancoes
-- WHERE compositor = "AC/DC"; (?)

-- ON "NOME_TABELA" (NOME_COLUNA);
CREATE INDEX idx_compositor
ON cancoes(compositor);


-- Exercicio - Índices (tabela cancoes)

-- a) Exiba os índices da tabela. (Show Index).

SHOW INDEX FROM cancoes;

-- b) Execute um explain select selecionando o campo nome da canção “Hero” e observe quantas rows foram percorridas para chegar ao resultado.

EXPLAIN SELECT nome FROM cancoes
WHERE nome = "Hero"; -- rows: 3503, performance: 10%

-- c) Crie um índice chamado `I_cancoes_nome` para a tabela pelo campo nome.

CREATE INDEX I_cancoes_nome
ON cancoes(nome);

-- d) Execute o explain novamente e veja quantas rows foram percorridas agora.

EXPLAIN SELECT nome FROM cancoes
WHERE nome = "Hero"; -- row: 1, performance: 100%

-- e)Exclua este índice.

DROP INDEX I_cancoes_nome ON cancoes;



-- Exercicio - Índices (tabela albuns)

-- a) Exiba os índices da tabela.

SHOW INDEX FROM albuns;
 
-- b) Execute um explain select selecionando o título do álbum chamado “Na Pista” e observe quantas rows foram percorridas para chegar ao resultado.

EXPLAIN SELECT titulo FROM albuns
WHERE titulo = "Na Pista"; -- rows: 347, performance: 10%

-- c) Crie um índice chamado `I_albuns_titulo` para a tabela pelo campo titulo.

CREATE INDEX I_albuns_titulo
ON albuns(titulo);

-- d) Execute o explain novamente e veja quantas rows foram percorridas agora.

EXPLAIN SELECT titulo FROM albuns
WHERE titulo = "Na Pista"; -- row: 1, performance: 100%

-- e) Exclua este índice.

DROP INDEX I_albuns_titulo ON albuns;