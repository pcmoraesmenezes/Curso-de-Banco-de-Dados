
CREATE TABLE tipos_produto(
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL
);

CREATE TABLE produtos(
	id SERIAL PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL,
	preco MONEY NOT NULL,
	id_codigo INT REFERENCES tipos_produto(codigo)
);

INSERT INTO tipos_produto (descricao) VALUES ('Computador'), ('Impressora');

INSERT INTO produtos (descricao, preco, id_codigo) VALUES 
	('Desktop', 1200, 1),
	('Laptop', 1800, 1),
	('Impr. Laser', 500, 2),
	('Impr. Jato de Tinta', 300, 2);
	
-- FILTRANDO CONSULTAS COM WHERE 

SELECT * FROM tipos_produto WHERE codigo = 1;

SELECT * FROM produtos WHERE descricao = 'Laptop';

SELECT *
FROM produtos
WHERE preco > CAST('500' AS MONEY);

SELECT * FROM produtos ORDER BY preco ASC;


-- CONSULTAS DE MULTIPLAS TABELAS

SELECT * FROM tipos_produto;

SELECT * FROM produtos;

SELECT p.id AS Código, p.descricao AS Descrição, p.preco AS Preço,
	tp.descricao AS Descrição_Produto, tp.codigo AS Código_Tipo
	FROM produtos as p, tipos_produto AS tp
	WHERE p.id_codigo = tp.codigo;
	
-- 

SELECT p.id AS Código, p.descricao AS Descrição, p.preco AS Preço,
	tp.descricao AS "Descrição Produto", tp.codigo AS "Código Tipo"
	FROM produtos as p, tipos_produto AS tp
	WHERE p.id_codigo = tp.codigo;
	
-- É POSSÍVEL SEPARAR ATRAVÉS DAS ASPAS DUPLAS, ASPAS SIMPLES NÃO FUNCIONA