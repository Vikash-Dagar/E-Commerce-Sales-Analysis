-- FINDING TOTAL REVENUE

CREATE DATABASE IF NOT EXISTS SalesDB;
USE SalesDB;
SHOW databases; 
SHOW tables; 
SELECT * from sales_data_sample; 

SELECT SUM(QUANTITYORDERED * PRICEEACH) AS Total_Revenue
FROM sales_data_sample
WHERE status IN ("shipped");