-- criando banco de dados 
CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

-- criando tabela 

CREATE TABLE tb_categoria (
id bigint AUTO_INCREMENT NOT NULL,
nome varchar (255) NOT NULL ,
generico varchar (255) NOT NULL,
comprimido varchar ( 255) NOT NULL,
PRIMARY KEY (id) 
);
INSERT INTO tb_categoria ( nome ,generico,comprimido)
VALUES ("Losatana Potássica","sim","sim");

INSERT INTO tb_categoria ( nome ,generico, comprimido)
VALUES ("Acido Acetilsalicilico","sim","sim");

INSERT INTO tb_categoria ( nome ,generico,comprimido)
VALUES ("simeticona","sim","sim");

INSERT INTO tb_categoria ( nome ,generico,comprimido)
VALUES ("Dipirona Sodica","sim","sim");

INSERT INTO tb_categoria ( nome ,generico, comprimido)
VALUES ("Paracetamol","sim","sim");

SELECT * FROM tb_categoria;
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT NOT NULL,
valor BOOLEAN NOT NULL,
indicacao varchar (255) NOT NULL,
contra_indicacao varchar (255) NOT NULL,
precaucoes varchar (255) NOT NULL ,
categorias_id bigint,
PRIMARY KEY (id),
 FOREIGN KEY (categorias_id) REFERENCES tb_categoria(id) 
 );

 INSERT INTO tb_produtos ( valor, indicacao,contra_indicacao,precaucoes,categorias_id)
 VALUES (2.70,"tratamento de impertensao","hipersensibilidade","nao ultilizado por gravidas",1);

 INSERT INTO tb_produtos ( valor, indicacao,contra_indicacao,precaucoes,categorias_id)
 VALUES (1.87,"dor de cabeça leve ","nao tem","nao tem",2);
 
INSERT INTO tb_produtos ( valor, indicacao,contra_indicacao,precaucoes,categorias_id)
 VALUES (4.29,"excesso de gases","alergicos","nao ultilizado por mulheres gravidas",3);
 
INSERT INTO tb_produtos ( valor, indicacao,contra_indicacao,precaucoes,categorias_id)
 VALUES (2.90,"analgessico ","alergicos","evitar lactaçao",4);
 
INSERT INTO tb_produtos ( valor, indicacao,contra_indicacao,precaucoes,categorias_id)
 VALUES (5.79,"dor e febre","alergicos","pode causar reaçoes alergica",5);
 
SELECT * FROM tb_produtos ;
SELECT * FROM tb_produtos WHERE  Valor > 50.00; 
SELECT * FROM tb_produtos WHERE  valor BETWEEN 3.00 AND 60.00;
SELECT * FROM tb_categoria INNER JOIN tb_produtos
	ON tb_categoria.produto_id =  tb_produtos.id;


