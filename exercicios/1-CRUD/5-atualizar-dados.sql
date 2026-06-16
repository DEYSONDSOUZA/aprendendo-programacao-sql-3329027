-- Atualize a classe salarial para a pessoa cujo EmployeeId é igual a 6. Lembre-se que a classe salarial deve corresponder o id_salario da tabela salario_classe
UPDATE employees
SET Id_salario = 5,
    LastName = 'Souza',
    FirstName = 'Deyson'
WHERE EmployeeId = 6;
-- Atualize a classe salarial e o LastName da pessoa cujo EmployeeId é igual a 2. Lembre-se que a classe salarial deve corresponder o id_salario da tabela salario_classe
UPDATE  employees
SET Id_salario = 4,
    LastName = 'Silva'
WHERE EmployeeId = 2;
-- Atualize a classe salarial 1 para as pessoas cuja coluna id_salario continua NULL. Lembre-se que a classe salarial deve corresponder o id_salario da tabela salario_classe
UPDATE employees
SET Id_salario = 1
WHERE Id_salario IS NULL;