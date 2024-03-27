CREATE DATABASE pizzaria;
USE pizzaria;

CREATE TABLE bordas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);
SELECT * FROM bordas;

CREATE TABLE massas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
    );
    SELECT * FROM massas;
    
    CREATE TABLE sabores (
		id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        nome VARCHAR(100)
        );
        SELECT * FROM sabores;
        
	CREATE TABLE pizzas (
		id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        borda_id INT NOT NULL,
        massa_id INT NOT NULL,
        FOREIGN KEY (borda_id) REFERENCES bordas(id),
        FOREIGN KEY (massa_id) REFERENCES massas(id)
        );
        SELECT * FROM pizzas;

	CREATE TABLE pizza_sabor (
		id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
		pizza_id INT NOT NULL,
		sabor_id INT NOT NULL,
		FOREIGN KEY (pizza_id) REFERENCES pizzas(id),
		FOREIGN KEY (sabor_id) REFERENCES sabores(id)
		);
SELECT * FROM pizza_sabor;

CREATE TABLE status (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
    );
    SELECT * FROM status;
    
CREATE TABLE pedidos (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    pizza_id INT NOT NULL,
    status_id INT NOT NULL,
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id),
    FOREIGN KEY (status_id) REFERENCES status(id)
    );
SELECT * FROM pedidos;

-- INSERIR OS DADOS DO SISTEMA
INSERT INTO status (tipo) VALUES ("Em produção");
INSERT INTO status (tipo) VALUES ("Em entrega");
INSERT INTO status (tipo) VALUES ("Concluido");
SELECT * FROM status;

INSERT INTO massas (tipo) VALUES ("Massas comum");
INSERT INTO massas (tipo) VALUES ("Massas integral");
INSERT INTO massas (tipo) VALUES ("Massas temperada");
SELECT * FROM massas;

INSERT INTO bordas (tipo) VALUES ("Cheddar");
INSERT INTO bordas (tipo) VALUES ("Catupiry");
SELECT * FROM bordas;

INSERT INTO sabores (nome) VALUES ("4 Queijos");
INSERT INTO sabores (nome) VALUES ("Frago com Catupiry");
INSERT INTO sabores (nome) VALUES ("Calabresa");
INSERT INTO sabores (nome) VALUES ("Lombinho");
INSERT INTO sabores (nome) VALUES ("Filé com Cheddar");
INSERT INTO sabores (nome) VALUES ("Portuguesa");
INSERT INTO sabores (nome) VALUES ("Margherita");
SELECT * FROM sabores;

SELECT * FROM pizzaria.pedidos;



