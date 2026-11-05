-- Revenue by country

SELECT country, ROUND(SUM(QUANTITYORDERED * PRICEEACH), 2) as TotalRevenue, sum(QUANTITYORDERED) as Units_Sold
FROM sales_data_sample
WHERE status IN ("shipped")
GROUP BY country
ORDER BY TotalRevenue DESC
;

