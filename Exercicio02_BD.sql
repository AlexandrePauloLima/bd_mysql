-- criando o banco de dados

CREATE DATABASE e_commerce;

-- selecionar banco de dados

CREATE TABLE tb_produtos (
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
valor int ,
material varchar (255) NOT NULL,
cor varchar (255) NOT NULL,
fabricante varchar (255) NOT NULL,
PRIMARY KEY (id)
);

-- inserir dados na tabela
INSERT INTO tb_produtos (nome,valor,material,cor,fabricante)
VALUES ("fucinheira",99,"tecido","preto","zig");

INSERT INTO tb_produtos (nome,valor,material,cor,fabricante)
VALUES ("coleira",60,"tecido","vermelha","zig");

INSERT INTO tb_produtos (nome,valor,material,cor,fabricante)
VALUES ("arranhador", 120,"pano e madeira","bege/marron","doguitos");

INSERT INTO tb_produtos (nome,valor,material,cor,fabricante)
VALUES ("manta",39,"pano","azul","doguitos");

INSERT INTO tb_produtos (nome,valor,material,cor,fabricante)
VALUES ("comedouro",69,"plastico","cinza","lolcat");

INSERT INTO tb_produtos (nome,valor,material,cor,fabricante)
VALUES ("bebedouro",72,"metal/acrilico","branco","lolcat");

INSERT INTO tb_produtos (nome,valor,material,cor,fabricante)
VALUES ("puleiro",120,"madeira","marron","bikey");

INSERT INTO tb_produtos (nome,valor,material,cor,fabricante)
VALUES ("gaiola",270,"metal","cinza/preto","bikey");


-- Listar todos os produtos 
SELECT * FROM tb_produtos;


-- buscando salaeio > 500
SELECT * FROM tb_produtos WHERE valor > 500;
-- buscando salario < 500
SELECT * FROM tb_produtos WHERE valor < 500;

-- excluindo um dado da tabela 

SELECT nome , CONCAT('R$', FORMAT(valor,2,'pt_BR'))AS valor FROM tb_produtos;









