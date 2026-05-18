CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    marca VARCHAR(50),
    estoque INT,
    preco DECIMAL(10,2) NOT NULL
);

INSERT INTO tb_produtos(nome, categoria, marca, estoque, preco)
VALUES
("Notebook", "Informatica", "Dell", 10, 3500.00),
("Mouse", "Perifericos", "Logitech", 50, 120.00),
("Teclado", "Perifericos", "Redragon", 30, 250.00),
("Celular", "Eletronicos", "Samsung", 15, 2200.00),
("Monitor", "Informatica", "LG", 12, 900.00),
("Fone", "Audio", "JBL", 25, 450.00),
("Smartwatch", "Eletronicos", "Xiaomi", 18, 600.00),
("Carregador", "Acessorios", "Baseus", 40, 80.00);

SELECT * FROM tb_produtos
WHERE preco > 500;

SELECT * FROM tb_produtos
WHERE preco < 500;

UPDATE tb_produtos
SET preco = 500.00
WHERE id = 6;
