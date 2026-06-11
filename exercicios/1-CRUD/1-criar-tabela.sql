-- Crie uma nova tabela no banco de dados
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(20)
);
CREATE TABLE remuneracao (
    id CPF PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(20) NOT NULL,
    salario INTEGER NOT NULL
);
CREATE TABLE salario_classe (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nivel TEXT,
    salario INTEGER
);