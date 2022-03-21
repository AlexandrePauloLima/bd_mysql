-- criar banco de dados
CREATE DATABASE db_rh;
-- selecionar bancos de dados
CREATE TABLE tb_atributos (
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
idade int,
cidade varchar (255) NOT NULL,
formacao varchar (255) NOT NULL,
cargo varchar (255),
salario int ,
PRIMARY KEY (id)
);

-- inserir dados na tabela 
INSERT INTO tb_atributos ( nome,idade,cidade,formacao,cargo,salario)
VALUES ("Alexandre",24,"Sao_Roque","administraçao","analista_de_rh",3500);

INSERT INTO tb_atributos ( nome,idade,cidade,formacao,cargo,salario)
VALUES ("Priscila",25,"Osasco","administracao","analista_de_rh",3500);

INSERT INTO tb_atributos ( nome,idade,cidade,formacao,cargo,salario)
VALUES ("Henrique",19,"Barueri","ensino_medio","auxiliar_de_rh",1800);

INSERT INTO tb_atributos ( nome,idade,cidade,formacao,cargo,salario)
VALUES ("Isabel",14,"Barueri","Ensino_fundamental","jovem_aprendiz",1000);

INSERT INTO tb_atributos ( nome,idade,cidade,formacao,cargo,salario)
VALUES ("Paulo",14,"Barueri","ensino_medio","jovem_aprendiz",1000);

-- Listar todos os produtos 
SELECT * FROM tb_atributos;

-- buscando salaeio > 2000
SELECT * FROM tb_atributos WHERE salario > 2000;
-- buscando salario < 2000
SELECT * FROM tb_atributos WHERE salario < 2000;

-- excluindo um dado da tabela 

SELECT nome , CONCAT('R$', FORMAT(salario,2,'pt_BR'))AS salario FROM tb_atributos;












