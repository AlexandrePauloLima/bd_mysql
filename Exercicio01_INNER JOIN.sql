CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar (255) NOT NULL,
habilidade varchar(255),
arma varchar(255),
PRIMARY KEY (id)
);
INSERT INTO tb_classes( nome,habilidade,arma)
VALUES ( "Guerreiro","corte fantasma","espada");
INSERT INTO tb_classes( nome,habilidade,arma)
VALUES ("escudeiro","impenetravel","escudo");
INSERT INTO tb_classes( nome,habilidade,arma)
VALUES ("ladra","roubo","adaga");
INSERT INTO tb_classes( nome,habilidade,arma)
VALUES ("feiticeiro","elemento","cajado" );
INSERT INTO tb_classes( nome,habilidade,arma)
VALUES ("arqueiro","mil flexa","arco e frexa" );

SELECT *FROM  tb_classes;
CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar (255) NOT NULL,
nivel int,
ataque int,
defesa int,
classe_id bigint,
	PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes (id) 
    );
    INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
    VALUES ("Riruno", 100, 3000, 1000, 1);
     INSERT INTO tb_personagens (nome,nivel,ataque,defesa,classe_id)
    VALUES ("Esla",80,1000,3000,2);
     INSERT INTO tb_personagens (nome,nivel,ataque,defesa,classe_id)
    VALUES ("Reina",90,2000,1500,3);
     INSERT INTO tb_personagens (nome,nivel,ataque,defesa,classe_id)
    VALUES ("Sthefan",100,3000,1300,1);
     INSERT INTO tb_personagens (nome,nivel,ataque,defesa,classe_id)
    VALUES ("Arthur",100,2000,2000,4);
     INSERT INTO tb_personagens (nome,nivel,ataque,defesa,classe_id)
    VALUES ("flower",50,2500,800,5);
    
    
    SELECT * FROM tb_personagens;
    SELECT * FROM tb_personagens WHERE ataque  > 2000;
    SELECT * FROM tb_personagens WHERE  DEFESA BETWEEN 1000 AND 2000;
    SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
	SELECT * FROM tb_personagens INNER JOIN tb_classes
	ON tb_personagens.classe_id =  tb_classes.id;
    
    
    
    
    
    