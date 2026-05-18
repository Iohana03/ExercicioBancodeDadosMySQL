create database servicosRH
use servicosRH

create table tb_colaboradores(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(55) NOT NULL,
cargo VARCHAR(55) NOT NULL,
telefone VARCHAR(20),
salario DECIMAL(10,2) NOT NULL
);
INSERT INTO tb_colaboradores (nome,cargo,telefone,salario)
VALUES("Gabriel Souza", "Gerente de Vendas" , "(11) 98676-6746", 5000.00),
("Juliana Fonseca", "Vendedora" , "(11) 95890-3895", 3500.00),
("Gabriela Paiva", "Assitente Administrativa" , "(11) 94985-9688", 1500.00),
("Paula Cardoso", "Recepcionista" , "(11) 92536-9463", 1800.00),
("Thiago Oliveira", "Vendedor" , "(11) 98748-8364", 2500.00);

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set salario = 2200.00 where id=4;
select * from tb_colaboradores 

