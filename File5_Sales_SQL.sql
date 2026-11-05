-- Daily Sales Trend

SELECT DATE_FORMAT(STR_TO_DATE(ORDERDATE, '%m/%d/%Y'), '%Y-%m-%d') as Months, ROUND(SUM(QUANTITYORDERED * PRICEEACH), 2) as SalesAmount
FROM sales_data_sample
WHERE status IN ("shipped")
GROUP BY DATE_FORMAT(STR_TO_DATE(ORDERDATE, '%m/%d/%Y'), '%Y-%m-%d')
ORDER BY DATE_FORMAT(STR_TO_DATE(ORDERDATE, '%m/%d/%Y'), '%Y-%m-%d')
;

