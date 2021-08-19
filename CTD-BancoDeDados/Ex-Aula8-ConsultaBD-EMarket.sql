USE EMarket;

-- Consultas Parte I
-- Vamos praticar consultas SELECT, com foco em: Select, Where, Operadores; e condições como: E, OR, Between, Like, IN, Others.

-- Para realizar a prática, baixe a base Emarkt.

-- Categorias e Produtos
-- 1) Apresente uma lista de todas as categorias.
SELECT *
FROM categorias;

-- 2) Como as categorias não possuem imagens, obtenha uma lista de CategoriaNom e Descrição. 
SELECT CategoriaNombre, Descripcion
FROM categorias;

-- 3) Obtenha uma lista de produtos.
SELECT *
FROM productos;

-- 4) Existem produtos descontinuados? Não.
SELECT discontinuado FROM productos WHERE discontinuado > 0;

-- 5) Você deve se encontrar com o Fornecedor 8. Quais produtos você fornece? Teatime Chocolate Biscuits, Sir Rodney's Marmalade, Sir Rodney's Scones e Scottish Longbreads.
SELECT ProductoNombre FROM productos WHERE proveedorID = 8;

-- 6) Apresente todos os produtos cujo preço unitário está entre 10 e 22.
SELECT ProductoNombre FROM productos WHERE 10 > PrecioUnitario < 22;

-- 7) Defina que um produto deve ser encomendado ao fornecedor, se suas unidades em estoque forem inferiores ao Nível de Reordenação.
SELECT ProductoNombre FROM Productos WHERE UnidadesStock < NivelReorden;

-- 8) Detalhe todos os produtos listados acima, considerando que há Unidades Encomendadas iguais a zero.
SELECT ProductoNombre FROM Productos WHERE UnidadesStock < NivelReorden AND UnidadesPedidas >= 0;

-- Clientes
-- 1) Obtenha uma lista de todos os clientes com Contato, Empresa,Título, País. Classifique a listagem por País.
SELECT Contacto, Compania, Titulo, Pais FROM Clientes ORDER BY Pais;

-- 2) Apresente todos os clientes que têm o título "Proprietário".
SELECT Contacto FROM Clientes WHERE Titulo LIKE "Owner";

-- 3)	A secretária que atendia um cliente não se lembra do nome dele. Ela só sabe que começa com "C". Como podemos ajudá-la a obter uma lista de todos os contatos que começam com C?
SELECT Contacto FROM Clientes WHERE Contacto LIKE "C%";

-- Contas
-- 1) Obtenha uma lista de todas as faturas, classificadas pela data da fatura upstream.
SELECT * FROM Facturas ORDER BY FechaFactura;

-- 2) Uma lista de faturas com o país de transporte "EUA" agora é necessária, e seu e-mail (Envio) é diferente de 3. Como você pode apresentá-la?
SELECT * FROM Facturas WHERE PaisEnvio = "USA" AND EnvioVia != 3;

-- 3) O cliente 'GOURL' fez um pedido? Sim, 9 pedidos.
SELECT * FROM Facturas WHERE ClienteID = "GOURL";

-- 4) Exiba todas as faturas dos funcionários 2, 3, 5, 8 e 9.
SELECT * FROM Facturas WHERE EmpleadoID IN (2, 3, 5, 8, 9);



-- Consultas - Parte 2
-- Nesta segunda parte, intensificaremos a prática de consultas SELECT, adicionando ALIAS, LIMIT e OFFSET.

-- Produtos
-- 1) Obtenha a lista de todos os produtos classificados em ordem decrescente por Preço Unitário.
SELECT * FROM Productos ORDER BY PrecioUnitario DESC;

-- 2) Obtenha a lista top 5 de produtos P cujo preço unitário é o mais "caro".
SELECT ProductoNombre FROM Productos WHERE ProductoNombre LIKE "P%" ORDER BY PrecioUnitario DESC LIMIT 5;

-- 3) Obtenha um top 10 dos produtos com mais unidades em Stock.
SELECT ProductoNombre, UnidadesStock FROM Productos ORDER BY UnidadesStock DESC LIMIT 10;

-- FaturaDetalhe
-- 1) Obtenha uma lista de InvoiceID, Produto, Quantidade.
SELECT FacturaID, ProductoID, Cantidad FROM FacturaDetalle;

-- 2) Classifique a lista acima por Quantidade descendente.
SELECT FacturaID AS InvoiceID, ProductoID, Cantidad FROM FacturaDetalle ORDER BY Cantidad DESC;

-- 3) Filtre a lista apenas para os produtos no qual a quantidade está entre 50 e 100.
SELECT * FROM FacturaDetalle WHERE Cantidad BETWEEN 50 AND 100;

-- 4) Em outra nova listagem, obtenha uma lista com os seguintes nomes de coluna: InvoiceID, Product (ProductID),Total (UnitPrice*Quantity) 
SELECT FacturaID AS InvoiceID, ProductoID AS Product, PrecioUnitario*Cantidad AS Total FROM FacturaDetalle;



-- Extras!

-- 1) Obtenha uma lista de todos os clientes que moram no "Brasil" ou no “México”, ou que tenham um título que comece com "Vendas". 
SELECT * FROM Clientes WHERE Pais = "Brazil" OR Pais = "Mexico" OR Titulo LIKE "Sales%";

-- 2) Obtenha uma lista de todos os clientes que pertencem a uma empresa que inicia com "A".
SELECT * FROM Clientes WHERE Compania LIKE "a%";

-- 3) Obtenha uma lista com os seguintes dados: Cidade, contato e renomeie-o como Sobrenome e Nome.
SELECT Ciudad AS Sobrenome, Contacto AS Nome FROM Clientes;

-- 4) Obtenha uma lista de todas as faturas com 10000 e 10500.
SELECT * FROM Facturas WHERE FacturaID BETWEEN 10000 AND 10500;

-- 5) Obtenha uma lista de todas as faturas com IDs entre 10000 e 10500, ou clientes com IDs começando com "B".
SELECT * FROM Facturas WHERE FacturaID BETWEEN 10000 AND 10500 OR ClienteID LIKE "b%" ;

-- 6) Existem faturas em que a cidade envia "Vancouver" ou que usam o correio 3? Sim!)
SELECT * FROM Facturas WHERE CiudadEnvio = "Vancouver" OR EnvioVia = 3;

-- 7) Qual é a ID do empregado de "Buchanan"? 5
SELECT * FROM Empleados WHERE Apellido LIKE "Buchanan";

-- 8) Existem “Faturas employ” e ID para o empregado do item anterior? Sim, 42.
SELECT * FROM Facturas WHERE EmpleadoID = 5;
