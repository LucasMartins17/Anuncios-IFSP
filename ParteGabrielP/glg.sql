-- Exclusão do banco de dados glg
DROP DATABASE glg;

-- Criação do banco de dados glg
CREATE DATABASE glg;

-- Selecionar o banco de dados glg
USE glg;

-- Criação da tabela Form
CREATE TABLE Form (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL UNIQUE,
    Descricao VARCHAR(255) NOT NULL,
    DataInicio DATETIME NOT NULL,
    HrIni DATETIME NOT NULL,
    DataFinal DATETIME NOT NULL,
    HoraFinal DATETIME NOT NULL,
    Tipo VARCHAR(255) NOT NULL,
    pubAlv VARCHAR(255) NOT NULL
);

-- Criação da tabela Artes
CREATE TABLE Artes (
    Id INT,
    Titulo VARCHAR(255),
    Img BLOB,
    PRIMARY KEY (Id),
    FOREIGN KEY (Id) REFERENCES Form(Id),
    FOREIGN KEY (Titulo) REFERENCES Form(Titulo)
);
