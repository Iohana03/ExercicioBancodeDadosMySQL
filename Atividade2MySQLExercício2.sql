CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    tamanho VARCHAR(30) NOT NULL,
    borda_recheada BOOLEAN NOT NULL
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sabor VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_pedacos INT NOT NULL,
    id_categoria BIGINT,
    
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, tamanho, borda_recheada)
VALUES
("Salgada", "Grande", true),
("Doce", "Media", true),
("Vegetariana", "Grande", false),
("Especial", "Familia", true),
("Tradicional", "Media", false);

INSERT INTO tb_pizzas(nome, sabor, preco, quantidade_pedacos, id_categoria)
VALUES
("Mussarela", "Queijo e tomate", 42.00, 8, 5),
("Calabresa", "Calabresa e cebola", 48.00, 8, 1),
("Marguerita", "Queijo, tomate e manjericao", 55.00, 8, 1),
("Chocolate", "Chocolate ao leite", 60.00, 8, 2),
("Morango", "Chocolate com morango", 65.00, 8, 2),
("Brocolis", "Brocolis e queijo", 50.00, 8, 3),
("Moda da Casa", "Ingredientes especiais", 85.00, 12, 4),
("Milho", "Milho e queijo", 47.00, 8, 5);

SELECT * FROM tb_pizzas
WHERE preco > 45.00;

SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nome LIKE "%M%";

SELECT tb_pizzas.nome,
tb_pizzas.sabor,
tb_pizzas.preco,
tb_categorias.tipo,
tb_categorias.tamanho
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT tb_pizzas.nome,
tb_pizzas.preco,
tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";
