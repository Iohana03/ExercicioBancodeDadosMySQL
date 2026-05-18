CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    turma VARCHAR(20),
    responsavel VARCHAR(100),
    nota DECIMAL(3,1)
);

INSERT INTO tb_estudantes(nome, idade, turma, responsavel, nota)
VALUES
("Lucas", 15, "1A", "Marcos", 8.5),
("Fernanda", 16, "2B", "Patricia", 6.0),
("Joao", 14, "1C", "Carlos", 7.5),
("Amanda", 15, "2A", "Roberta", 9.0),
("Gabriel", 16, "3B", "Ricardo", 5.5),
("Bianca", 14, "1B", "Juliana", 7.8),
("Mateus", 15, "2C", "Paulo", 4.0),
("Larissa", 16, "3A", "Sandra", 8.2);

SELECT * FROM tb_estudantes
WHERE nota > 7.0;

SELECT * FROM tb_estudantes
WHERE nota < 7.0;

UPDATE tb_estudantes
SET nota = 7.0
WHERE id = 7;