-- criando o banco de dados

CREATE DATABASE db_escola;

-- selecionar banco de dados

CREATE TABLE tb_estudantes(
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
idade int ,
curso varchar (255) NOT NULL,
semestre varchar (255) NOT NULL,
nota int,
PRIMARY KEY (id)
);

-- inserir dados na tabela
INSERT INTO tb_estudantes (nome,idade,curso,semestre,nota)
VALUES ("ALexandre",24,"administraçao","quarto semestre",8);

INSERT INTO tb_estudantes(nome,idade,curso,semestre,nota)
VALUES ("Cristiane",45,"nutriçao","sexto semestre",10);

INSERT INTO tb_estudantes(nome,idade,curso,semestre,nota)
VALUES ("Laerte",50,"engenharia civil","decimo semestre",10);

INSERT INTO  tb_estudantes (nome,idade,curso,semestre,nota)
VALUES ("isabel",19,"medicina","primeiro semestre",9);

INSERT INTO  tb_estudantes (nome,idade,curso,semestre,nota)
VALUES ("hnerique",19,"logistica","primeiro semestre",6);

INSERT INTO  tb_estudantes (nome,idade,curso,semestre,nota)
VALUES ("Priscila",25,"Administraçao","oitavo semestre",7);

INSERT INTO  tb_estudantes(nome,idade,curso,semestre,nota)
VALUES ("Paulo",35,"tecnologia da informaçao","terceiro semestre",5);

INSERT INTO tb_estudantes (nome,idade,curso,semestre,nota)
VALUES ("Bryan",22,"desing","primeiro semestre",4);

-- Listar todos os produtos 
SELECT * FROM tb_estudantes;

-- buscando nota > 7
SELECT * FROM tb_estudantes WHERE nota > 7;
-- buscando nota < 7
SELECT * FROM tb_estudantes WHERE nota < 7;


ALTER TABLE tb_estudantes DROP semestre ;





