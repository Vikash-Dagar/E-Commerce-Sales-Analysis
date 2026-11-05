-- Top 2 Most Cancelled Product

select PRODUCTLINE, count(STATUS) as Cancelled_product
FROM sales_data_sample
WHERE status IN ("Cancelled")
group by PRODUCTLINE
order by count(STATUS) desc
LIMIT 3;