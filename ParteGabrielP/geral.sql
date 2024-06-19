-- Exclusão do banco de dados glg
DROP DATABASE geral;

-- Criação do banco de dados glg
CREATE DATABASE geral;

-- Selecionar o banco de dados glg
USE geral;

-- Criação da tabela funcao
CREATE TABLE funcao (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    nomeFunc VARCHAR(255) NOT NULL,
    perm_Adm_FB Boolean NOT NULL,
    perm_Adm_An Boolean NOT NULL,
    perm_Adm_Ar Boolean NOT NULL,
    perm_Adm_Geral Boolean NOT NULL
);

-- Criação da tabela usuario
CREATE TABLE usuario (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    id_func INT NOT NULL,
    CPF INT NOT NULL,
    nome VARCHAR(255) NOT NULL UNIQUE,
    email DATETIME NOT NULL,
    senha DATETIME NOT NULL,
    prontuario DATETIME NOT NULL,
    funcao DATETIME NOT NULL,
    dataInscricao VARCHAR(255) NOT NULL,
    FOREIGN KEY (Id_func) REFERENCES funcao(Id)
);



----------------------------------- Parte do Grupo dos Anuncios -----------------------------------

-- Criação da tabela Form
CREATE TABLE Form (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    DtInicio DATETIME NOT NULL,
    DtFinal DATETIME NOT NULL,
    HrIni DATETIME NOT NULL,
    HrFinal DATETIME NOT NULL,
    Tipo VARCHAR(255) NOT NULL,
    pubAlv VARCHAR(255) NOT NULL
);

-- Criação da tabela Artes
CREATE TABLE Artes (
    Id_artes INT,
    Titulo VARCHAR(255),
    caminhoImg VARCHAR(255),
    PRIMARY KEY (Id_artes),
    FOREIGN KEY (Id_artes) REFERENCES Form(Id)
);


----------------------------------- Fim da parte do Grupo dos Anuncios -----------------------------------

----------------------------------- Parte do Grupo dos Armarios -----------------------------------

-- Criação da tabela Form
CREATE TABLE Armario (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Estado Boolean NOT NULL,
    Id_usuario INT NOT NULL,
    Nome VARCHAR (255) NOT NULL,
    Dt_Emprestimo DATETIME NOT NULL,
    FOREIGN KEY (Id_usuario) REFERENCES usuario(Id)
);

----------------------------------- Fim da parte do Grupo dos Armarios -----------------------------------