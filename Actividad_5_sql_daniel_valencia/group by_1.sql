SELECT 
YEAR(DATE) AS año,
MONTH(DATE) AS mes,
SUM(VALUE)
FROM sales
GROUP BY año, mes