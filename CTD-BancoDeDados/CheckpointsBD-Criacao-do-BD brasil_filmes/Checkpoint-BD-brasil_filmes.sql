-- Checkpoint 2 - Paula Oliveira Campos Augusto
-- Avaliação da disciplina: Criação de um BD, a partir de modelagem do DER feita anteriormente no drawio.

-- Criação do Banco de dados brasil_filmes

CREATE SCHEMA brasil_filmes DEFAULT CHARACTER SET utf8;
USE brasil_filmes;


-- Criação das Tabelas

CREATE TABLE generos (
	id_genero INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_do_genero VARCHAR(50) NOT NULL
);

CREATE TABLE filmes_nacionais (
	id_filme INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    diretor VARCHAR(100) NOT NULL,
    elenco VARCHAR(200) NOT NULL,
    id_genero INT NOT NULL,
    FOREIGN KEY (id_genero) REFERENCES generos (id_genero),
    ano CHAR(4) NOT NULL,
    classificacao TINYINT(2) NOT NULL,
    sinopse TEXT NOT NULL,
    duracao INT(5) NOT NULL
);

CREATE TABLE premios (
	id_premio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_do_premio VARCHAR(100) NOT NULL,
    id_filme INT NOT NULL,
    FOREIGN KEY (id_filme) REFERENCES filmes_nacionais (id_filme)
);

CREATE TABLE categorias (
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_da_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE premios_categorias (
	id_premio_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_premio INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_premio) REFERENCES premios (id_premio),
    FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria),
    ano CHAR(4) NOT NULL
);

CREATE TABLE planos (
	id_plano INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_do_plano VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE pagamentos (
	id_pagamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    numero_do_cartao CHAR(16) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_de_validade CHAR(5) NOT NULL,
    codigo_de_seguranca CHAR(3) NOT NULL,
    id_plano INT NOT NULL,
    FOREIGN KEY (id_plano) REFERENCES planos (id_plano)
);

CREATE TABLE usuarios (
	id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(13) NOT NULL,
    senha CHAR(12) NOT NULL,
    id_plano INT NOT NULL,
    FOREIGN KEY (id_plano) REFERENCES planos (id_plano)
);

CREATE TABLE usuarios_filmes (
	id_usuario_filme INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_filme INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),
    FOREIGN KEY (id_filme) REFERENCES filmes_nacionais (id_filme),
    pontuacao DECIMAL(2,1) NOT NULL,
    favorito TINYINT(1) NOT NULL -- booleano
);


-- Inserção de dados em todas as tabelas (INSERT INTO)

INSERT INTO generos (nome_do_genero) VALUES
("Ação"),
("Aventura"),
("Cinema de arte"),
("Chanchada"),
("Comédia"),
("Comédia de ação"),
("Comédia de terror"),
("Comédia dramática"),
("Comédia romântica"),
("Musical"),
("Documentário"),
("Docuficção"),
("Drama"),
("Faroeste"),
("Fantasia"),
("Ficção científica"),
("Animação"),
("Romance"),
("Suspense"),
("Terror"),
("Thriller");

INSERT INTO filmes_nacionais (titulo, diretor, elenco, id_genero, ano, classificacao, sinopse, duracao) VALUES
("Bacurau", "Kleber Mendonça Filho, Juliano Dornelles", "Sônia Braga, Udo Kier, Bárbara Colen, Thomás Aquino, Silvero Pereira, Karine Teles.", 21, "2019", 16, "Num futuro próximo, Bacurau, uma pequena cidade brasileira no oeste de Pernambuco, lamenta a perda de sua matriarca, Carmelita (Lia de Itamaracá), que viveu até os 94 anos. Dias depois, seus habitantes aos poucos percebem algo estranho acontecer na região: enquanto drones passeiam pelos céus, estrangeiros chegam pela primeira vez na cidade com planos de exterminar toda a população ali residente, carros são atingidos por tiros e cadáveres começam a aparecer. Os habitantes chegam à conclusão de que estão sendo atacados. Resta identificar o inimigo e criar coletivamente um meio de defesa.", 132),
("O Animal Cordial", "Gabriela Amaral Almeida", "Murilo Benício, Luciana Paes, Irandhir Santos, Camila Morgado, Jiddu Pinheiro, Ernani Moraes, Humberto Carrão, Ariclenes Barroso.", 20, "2017", 18, "São Paulo. Inácio (Murilo Benício) é o dono de um restaurante de classe média, por ele gerenciado com mão de ferro. Tal postura gera atritos com os funcionários, em especial com o cozinheiro Djair (Irandhir Santos). Quando o estabelecimento é assaltado por Magno (Humberto Carrão) e Nuno (Ariclenes Barroso), Inácio e a garçonete Sara (Luciana Paes) precisam encontrar meios para controlar a situação e lidar com os clientes que ainda estão na casa: o solitário Amadeu (Ernani Moraes) e o casal endinheirado Bruno (Jiddu Pinheiro) e Verônica (Camila Morgado).", 98),
("Depois a Louca Sou Eu", "Julia Rezende", "Débora Falabella, Yara de Novaes, Gustavo Vaz, Cristina Pereira, Débora Lamm, Elizângela, Rômulo Arantes Neto", 8, "2021", 16, "Dani (Débora Falabella) é uma jovem publicitária que lida desde sua infância com crises de ansiedade. Já adulta, ela recorre a várias alternativas de terapias e medicamentos para lidar com esse problema e e todos ao seu redor, incluindo sua mãe superprotetora Sílvia (Yara de Novaes).", 86),
("Santiago", "João Moreira Salles", "João Moreira Salle, Santiago", 11, "2007", 12, "Em 1992 o diretor João Moreira Salles planejou o documentário 'Santiago', baseado na vida do mordomo da casa de sua família. Devido à sua incapacidade em editar as cenas filmadas, o longa-metragem nunca foi concluído. Em 2005 o diretor voltou a trabalhar sobre as cenas gravadas, encontrando outro foco no material rodado.", 80),
("A Vida Invisível", "Karim Aïnouz", "Fernanda Montenegro, Carol Duarte, Julia Stockler, Gregório Duvivier", 13, "2019", 16, "Rio de Janeiro, 1950. Eurídice, 18, e Guida, 20, são duas irmãs inseparáveis que moram com os pais em um lar conservador. Ambas têm um sonho: Eurídice o de se tornar uma pianista profissional e Guida de viver uma grande história de amor. Mas elas acabam sendo separadas pelo pai e forçadas a viver distantes uma da outra. Sozinhas, elas irão lutar para tomar as rédeas dos seus destinos, enquanto nunca desistem de se reencontrar.", 139);

INSERT INTO premios (nome_do_premio, id_filme) VALUES
("Festival de Cannes", 5),
("Festival de Cinema de Munique", 5),
("Grande Prêmio do Cinema Brasileiro", 5),
("Grande Prêmio do Cinema Brasileiro", 4),
("Festival de Cinema Real de Paris", 4),
("Festival Internacional de Cinema de Miami ", 4),
("Festival de Cinema Latinoamericano de Lima", 4),
("Prêmio Contigo de Cinema Nacional", 4),
("Festival Internacional de Cinema do Rio", 2),
("Fantaspoa - Festival Internacional de Cinema Fantástico de Porto Alegre", 2),
("Festival de Cannes", 1),
("Festival de Cinema de Munique", 1),
("Festival de Cinema Latinoamericano de Lima", 1),
("Troféu APCA", 1),
("Neuchâtel International Fantastic Film Festival", 1),
("Montréal Festival of New Cinema", 1),
("Grande Prêmio do Cinema Brasileiro", 1),
("Prêmio ABC de Cinematografia", 1),
("Grande Prêmio do Cinema Brasileiro", 1);

INSERT INTO categorias (nome_da_categoria) VALUES
("Un Certain Regard"),
("CineCoPro"),
("Melhor Ator"),
("Melhor Atriz"),
("Melhor Atriz Coadjuvante"),
("Melhor Ator Coadjuvante"),
("Melhor Roteiro Adaptado"),
("Melhor Direção de Fotografia"),
("Melhor Direção de Arte"),
("Melhor Documentário"),
("Melhor Edição de Documentário"),
("Melhor Direção de Documentário"),
("Melhor Direção"),
("Melhor Filme"),
("Prêmio do Júri"),
("Melhor Roteiro Original"),
("Melhor Montagem"),
("Melhores Efeitos Visuais"),
("Melhor Som"),
("Melhor Figurino");

INSERT INTO premios_categorias (id_premio, id_categoria, ano) VALUES
(1, 1, "2019"),
(2, 2, "2019"),
(3, 5, "2020"),
(3, 7, "2020"),
(3, 8, "2020"),
(3, 9, "2020"),
(3, 20, "2020"),
(4, 10, "2008"),
(4, 11, "2008"),
(5, 10, "2007"),
(6, 10, "2008"),
(7, 10, "2007"),
(9, 3, "2017"),
(10, 4, "2018"),
(10, 13, "2018"),
(11, 15, "2019"),
(12, 14, "2019"),
(13, 14, "2019"),
(13, 13, "2019"),
(14, 14, "2019"),
(14, 13, "2019"),
(15, 14, "2019"),
(16, 14, "2019"),
(17, 14, "2020"),
(17, 3, "2020"),
(17, 13, "2020"),
(17, 16, "2020"),
(17, 17, "2020"),
(17, 18, "2020"),
(18, 8, "2020"),
(18, 17, "2020"),
(18, 9, "2020"),
(18, 19, "2020");

INSERT INTO planos (nome_do_plano, descricao) VALUES
("Básico", "Boa qualidade de vídeo em SD (480p). Assista em celulares, tablets, computadores ou TVs, em apanas 1 aparelho por vez. Preço: R$21,90/mês"),
("Padrão", "Ótima qualidade de vídeo em Full HD (1080p). Assista em celulares, tablets, computadores ou TVs, bem como em 2 aparelhos ao mesmo tempo. Preço: R$32,90/mês"),
("Premium", "Nossa melhor qualidade de vídeo em Ultra HD (4K) e HDR. Assista em celulares, tablets, computadores ou TVs, bem como em 4 aparelhos ao mesmo tempo. Preço: R$45,90/mês");

INSERT INTO usuarios (nome_completo, email, telefone, senha, id_plano) VALUES
("Silvia Ferreira", "silviaferreira@email.com", "(71)984632163", "************", 2),
("Roberto Araújo", "robertoaraujo@email.com", "(11)982778663", "************", 3),
("Aline Esteves", "alineesteves@email.com", "(71)985656855", "************", 1),
("Thiago Lima", "thiagolima@email.com", "(71)981223216", "************", 2);

INSERT INTO pagamentos (numero_do_cartao, nome, data_de_validade, codigo_de_seguranca, id_plano) VALUES
("************7688", "Silvia O Ferreira", "06/23", "***", 2),
("************4532", "Roberto Araújo Nogueira", "02/25", "***", 3),
("************4422", "Aline Campos Esteves", "10/26", "***", 1),
("************6375", "Thiago Lima Siqueira", "11/24", "***", 2);

INSERT INTO usuarios_filmes (id_usuario, id_filme, pontuacao, favorito) VALUES
(3, 1, 9.3, 1),
(1, 5, 9.0, 1),
(2, 3, 7.0, 0),
(4, 4, 6.0, 0); 


-- Uso do UPDATE

UPDATE filmes_nacionais SET elenco = "João Moreira Salles, Santiago Badariotti Merlo, Eduardo Escorel, Fernando Alves Pinto, Fernando Moreira Salles" WHERE elenco = "João Moreira Salle, Santiago";


-- Uso do DELETE

DELETE FROM premios WHERE id_premio = 8;

DELETE FROM premios WHERE id_premio = 19;


-- Uso do SELECT

SELECT * FROM categorias;

SELECT * FROM filmes_nacionais;

SELECT * FROM generos;

SELECT * FROM pagamentos;

SELECT * FROM planos;

SELECT * FROM premios;

SELECT * FROM premios_categorias;

SELECT * FROM usuarios;

SELECT * FROM usuarios_filmes;

SELECT titulo, pontuacao
FROM filmes_nacionais
INNER JOIN usuarios_filmes ON filmes_nacionais.id_filme = usuarios_filmes.id_filme
WHERE pontuacao >= 9.0;

SELECT * FROM usuarios WHERE nome_completo LIKE "A%";

SELECT * FROM generos LIMIT 5;

SELECT titulo, nome_do_premio, nome_da_categoria
FROM filmes_nacionais
INNER JOIN premios ON filmes_nacionais.id_filme = premios.id_filme
INNER JOIN premios_categorias ON premios.id_premio = premios_categorias.id_premio
INNER JOIN categorias ON premios_categorias.id_categoria = categorias.id_categoria;
