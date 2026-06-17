-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
SELECT 
  cus.CustomerId AS id,
  cus.firstname AS nome,
  SUM(inv.total) AS total_gasto
FROM
  invoices AS inv
  INNER JOIN customers AS cus ON cus.CustomerId = inv.CustomerId
GROUP BY
  cus.CustomerId, cus.firstname
HAVING
  SUM(inv.total) > 30
