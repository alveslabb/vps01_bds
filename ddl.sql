CREATE DATABASE atendimento_chamados;

USE atendimento_chamados;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    departamento VARCHAR(100),
    carga VARCHAR(20),
    status VARCHAR(20)
);

CREATE TABLE tecnico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    especialidade VARCHAR(100),
    status VARCHAR(20)
);

CREATE TABLE categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao VARCHAR(255)
);

CREATE TABLE chamado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150),
    descricao VARCHAR(500),
    data_abertura DATETIME,
    data_fechamento DATETIME,
    status VARCHAR(30),
    prioridade VARCHAR(30),
    id_usuario INT,
    id_categoria INT,
    id_tecnico INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id),
    FOREIGN KEY (id_tecnico) REFERENCES tecnico(id)
);

CREATE TABLE historico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_chamado INT,
    id_usuario INT,
    data_hora DATETIME,
    descricao VARCHAR(500),
    tipo VARCHAR(50),
    FOREIGN KEY (id_chamado) REFERENCES chamado(id),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);