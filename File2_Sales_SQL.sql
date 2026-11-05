-- Find Total_Revenue, Total_orders and Total_Successful_Orders 

SELECT ROUND(SUM(QUANTITYORDERED * PRICEEACH), 2) AS Total_Revenue,
(SELECT count(ordernumber) FROM sales_data_sample) AS Total_orders,
(SELECT COUNT(ordernumber) as TOTAL_SUCCESFUL_ORDER FROM sales_data_sample WHERE status = "shipped") AS Total_Successful_Orders,
(SELECT COUNT(ordernumber) as TOTAL_UNSUCCESFUL_ORDER FROM sales_data_sample WHERE status NOT IN ("shipped")) AS Total_Unsuccessful_Orders
FROM sales_data_sample
WHERE status IN ("shipped");

-- select * from sales_data_sample; 
-- select distinct status from sales_data_sample;