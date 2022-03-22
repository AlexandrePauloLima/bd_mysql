-- criando bancos de dados
CREATE DATABASE db_pizza_legal;

USE db_pizza_legal;

-- criando tabela 

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar (255) NOT NULL,
borda varchar (255) NOT NULL ,
tamanho varchar (255) NOT NULL,
PRIMARY KEY (id)
);
INSERT INTO tb_categoria (nome ,borda, tamanho)
VALUES ("marguerita","recheada","grande");

INSERT INTO tb_categoria (nome ,borda, tamanho)
VALUES ("portuguesa","recheada","grande");

INSERT INTO tb_categoria (nome ,borda, tamanho)
VALUES ("muçarela","vulcão","familia");

INSERT INTO tb_categoria (nome ,borda, tamanho)
VALUES ("california","recheada","grande");

INSERT INTO tb_categoria (nome ,borda, tamanho)
VALUES ("calabresa","simples","grande");

SELECT * FROM tb_categoria;
CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT NOT NULL,
sabor varchar  (255) NOT NULL,
valor FLOAT NOT NULL,
ingredientes varchar (255) NOT NULL,
saborBorda varchar (255) NOT NULL,
pizza_id bigint,
PRIMARY KEY (id),
 FOREIGN KEY (pizza_id) REFERENCES tb_pizzas (id) 
    );
    
   
    INSERT INTO tb_pizzas ( sabor, valor, ingredientes,saborBorda,pizza_id)
    VALUES ("marguerita",39.90,"muçarela,tomate,manjericao,azeitona","chedar",1);
    
	INSERT INTO tb_pizzas ( sabor, valor, ingredientes,saborBorda,pizza_id)
    VALUES ("portuguesa",39.90,"muçarela,presunto,tomate,pimentao,ovo,cebola,molho","chedar",2);
    
     INSERT INTO tb_pizzas ( sabor, valor, ingredientes,saborBorda,pizza_id)
    VALUES ("muçarela",54.90,"muçarela,oregamo,azeitona","chedar",3);
    
     INSERT INTO tb_pizzas ( sabor, valor, ingredientes,saborBorda,pizza_id)
    VALUES ("california",39.90,"peru,muçarela,zeitona","chedar",4);
    
     INSERT INTO tb_pizzas ( sabor, valor, ingredientes,saborBorda,pizza_id)
    VALUES ("calabresa",39.90,"calabresa","chedar",4);
    
    SELECT * FROM tb_pizzas ;
    SELECT * FROM tb_pizzas WHERE  Valor > 45.00; 
    SELECT * FROM tb_pizzas WHERE  valor BETWEEN 29.00 AND 60.00;
    SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
    
    
    
    
    
    
    
    
    
    