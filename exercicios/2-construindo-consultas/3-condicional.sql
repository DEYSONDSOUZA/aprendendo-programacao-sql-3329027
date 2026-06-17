-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
    country,
    State,
    CASE 
        WHEN state = 'SP' THEN 'São Paulo'
        WHEN state = 'RJ' THEN 'Rio de Janeiro'
        WHEN state = 'AM' THEN 'Amazonas'
        ELSE state
    END AS Estado
FROM customers
WHERE country = 'Brazil';
