CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    necessita_receita BOOLEAN NOT NULL,
    setor VARCHAR(50) NOT NULL
);
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria BIGINT,
    
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias(nome_categoria, necessita_receita, setor)
VALUES
("Medicamentos", true, "Remedios"),
("Cosmeticos", false, "Beleza"),
("Higiene", false, "Cuidados pessoais"),
("Vitaminas", false, "Suplementos"),
("Infantil", false, "Bebe");

INSERT INTO tb_produtos(nome, marca, preco, estoque, id_categoria)
VALUES
("Paracetamol", "Medley", 15.00, 50, 1),
("Creme Hidratante", "Nivea", 35.00, 30, 2),
("Shampoo", "Pantene", 28.00, 40, 3),
("Vitamina C", "Centrum", 55.00, 25, 4),
("Colonia Infantil", "Johnson", 65.00, 15, 5),
("Condicionador", "Elseve", 32.00, 20, 3),
("Base Facial", "Ruby Rose", 58.00, 18, 2),
("Dipirona", "Neo Quimica", 8.00, 60, 1);

SELECT * FROM tb_produtos
WHERE preco > 50.00;

SELECT * FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos
WHERE nome LIKE "%C%";

SELECT tb_produtos.nome,
tb_produtos.marca,
tb_produtos.preco,
tb_categorias.nome_categoria,
tb_categorias.setor
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;

SELECT tb_produtos.nome,
tb_produtos.preco,
tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Cosmeticos";