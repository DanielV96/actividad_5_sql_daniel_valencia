SELECT 
customers.name, age AS edad,
YEAR(DATE) AS año,
MONTH(DATE) AS mes,
MIN(value)
FROM customers, sales
GROUP BY año

