SELECT
    DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
    SUM(Revenue) AS Revenue
FROM FactSales
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY Month;