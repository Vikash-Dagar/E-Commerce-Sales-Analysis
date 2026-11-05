-- Average Order Value AOV

SELECT ROUND(AVG(QUANTITYORDERED * PRICEEACH), 2) AS Average_Order_Value 
FROM sales_data_sample
WHERE status = "shipped";

--  SELECT avg(sales) from sales_data_sample WHERE status = "shipped"; 


