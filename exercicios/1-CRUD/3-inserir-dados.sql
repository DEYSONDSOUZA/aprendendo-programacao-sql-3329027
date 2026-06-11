-- Insira 3 classes salariais na tabela salario_classe
INSERT INTO salario_classe(id, nivel, salario)
VALUES 
  (1, 'Estagio' , 2150),
  (2, 'Analista TI' , 3500),
  (3, 'Dev front-end jr.' , 5700);

-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT INTO salario_classe(nivel, salario)
VALUES
  ('Dev full-stack jr.', 8000)