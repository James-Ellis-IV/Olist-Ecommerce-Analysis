-- Question 1:
-- Which product categories generate the most revenue?

select
	product_category_name_english,
	sum(price) as Total_Revenue,
    count(order_item_id) as Number_of_Items,
    round(avg(price),2) as Average_Price
from orders as tb1
	join order_items as tb2
		on tb1.order_id = tb2.order_id 
	join products as tb3
		on tb2.product_id = tb3.product_id
	join category_translation as tb4
		on tb3.product_category_name = tb4.product_category_name
group by product_category_name_english
order by Total_Revenue desc
limit 10;

-- Question 2:
-- How has sales performance changed over time?

SELECT
    YEAR(tb1.order_purchase_timestamp) AS Year,
    MONTH(tb1.order_purchase_timestamp) AS Month,
    COUNT(DISTINCT tb1.order_id) AS Number_of_Orders,
    ROUND(SUM(tb2.payment_value), 2) AS Total_Payment_Value
FROM orders AS tb1
JOIN order_payments AS tb2
    ON tb1.order_id = tb2.order_id
WHERE tb1.order_purchase_timestamp >= '2017-01-01'
  AND tb1.order_purchase_timestamp < '2018-09-01'
GROUP BY
    YEAR(tb1.order_purchase_timestamp),
    MONTH(tb1.order_purchase_timestamp)
ORDER BY
    Year,
    Month;