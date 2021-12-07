CREATE DATABASE profro26_suachance;

USE profro26_suachance;

CREATE TABLE tb_usuario(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(45),
	email VARCHAR(120),
	cpf VARCHAR(14),
	senha VARCHAR(20),
	foto VARCHAR(120),
	status VARCHAR(45)

);

CREATE TABLE tb_contato(
	id INT AUTO_INCREMENT PRIMARY KEY,
	telefone VARCHAR(45),
	bairro VARCHAR(45),
	id_cidade INT,
	id_curriculo INT	
);

CREATE TABLE tb_cidade(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	id_estado INT
);

CREATE TABLE tb_estado(
	id INT AUTO_INCREMENT PRIMARY KEY,
	sigla VARCHAR(2)
);

CREATE TABLE tb_escolaridade(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200),
	id_curriculo INT
);

CREATE TABLE tb_habilidade(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200),
	nivel VARCHAR(45),
	id_curriculo INT
);

CREATE TABLE tb_experiencia(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200),
	dt_inicio DATE,
	dt_termino VARCHAR(45),
	id_curriculo INT
);

CREATE TABLE tb_curriculo(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	id_usuario INT
);

ALTER TABLE tb_contato ADD CONSTRAINT FOREIGN KEY (id_cidade) REFERENCES tb_cidade(id); 

ALTER TABLE tb_contato ADD CONSTRAINT FOREIGN KEY (id_curriculo) REFERENCES tb_curriculo(id); 

ALTER TABLE tb_cidade ADD CONSTRAINT FOREIGN KEY (id_estado) REFERENCES tb_estado(id); 

ALTER TABLE tb_escolaridade ADD CONSTRAINT FOREIGN KEY (id_curriculo) REFERENCES tb_curriculo(id); 

ALTER TABLE tb_habilidade ADD CONSTRAINT FOREIGN KEY (id_curriculo) REFERENCES tb_curriculo(id); 

ALTER TABLE tb_experiencia ADD CONSTRAINT FOREIGN KEY (id_curriculo) REFERENCES tb_curriculo(id);

ALTER TABLE tb_curriculo ADD CONSTRAINT FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id); 
