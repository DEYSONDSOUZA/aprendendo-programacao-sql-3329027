-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT DISTINCT
  CustomerId, 
  FirstName,
  LastName,
  Address
FROM Customers
WHERE Country = 'Brazil';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT DISTINCT
  CustomerId,
  FirstName,
  UPPER(LastName),
  Address
FROM Customers
WHERE Country = 'Brazil';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT DISTINCT
  CustomerId,
  LOWER(FirstName),
  UPPER(LastName),
  Address
FROM Customers
WHERE Country = 'Brazil';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT DISTINCT
  CustomerId,
  LOWER(FirstName) AS Nome,
  UPPER(LastName) AS Sobrenome,
  FirstName || ' ' || LastName AS NomeCompleto,
  Address
FROM Customers
WHERE Country = 'Brazil';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT DISTINCT
  CustomerId,
  LOWER(FirstName) AS Nome,
  UPPER(LastName) AS Sobrenome,
  FirstName || ' ' || LastName AS NomeCompleto,
  REPLACE(Address, 'Av.', 'Avenida') AS Endereco
FROM Customers
WHERE Country = 'Brazil';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
-- Retorna os países que começam com a letra "B" (Brazil, Belgium, etc.)
SELECT DISTINCT
  CustomerId,
  LOWER(FirstName) AS Nome,
  UPPER(LastName) AS Sobrenome,
  Country AS Pais,
  FirstName || ' ' || LastName AS NomeCompleto,
  REPLACE(Address, 'Av.', 'Avenida') AS Endereco
FROM Customers
WHERE Country LIKE 'B%'; 