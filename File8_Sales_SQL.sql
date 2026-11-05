-- Revenue by City

SELECT city, ROUND(SUM(QUANTITYORDERED * PRICEEACH), 2) as TotalRevenue, sum(QUANTITYORDERED) as Units_Sold
FROM sales_data_sample
WHERE status IN ("shipped")
GROUP BY city
ORDER BY TotalRevenue DESC
;

