CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    elemento VARCHAR(50) NOT NULL,
    arma_principal VARCHAR(50) NOT NULL
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id_classe BIGINT,
    
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(nome_classe, elemento, arma_principal)
VALUES
("Guerreiro", "Fogo", "Espada"),
("Arqueiro", "Vento", "Arco"),
("Mago", "Gelo", "Cajado"),
("Assassino", "Trevas", "Adaga"),
("Paladino", "Luz", "Martelo");

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, id_classe)
VALUES
("Carlos", 25, 2500, 1800, 1),
("Cecilia", 18, 1900, 1200, 2),
("Marcos", 30, 3200, 2100, 3),
("Camila", 22, 1700, 1500, 2),
("Ricardo", 28, 2800, 2300, 5),
("Caio", 15, 1100, 900, 4),
("Cristina", 20, 2200, 1600, 3),
("Pedro", 17, 1400, 1100, 1);

select * from tb_personagens where poder_ataque > 2000;

select * from tb_personagens where poder_ataque between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select tb_personagens.nome,tb_personagens.nivel,
tb_personagens.poder_ataque,tb_personagens.poder_defesa,
tb_classes.nome_classe,tb_classes.elemento
from tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT tb_personagens.nome,
tb_personagens.nivel,
tb_personagens.poder_ataque,
tb_personagens.poder_defesa,
tb_classes.nome_classe
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome_classe = "Arqueiro";

