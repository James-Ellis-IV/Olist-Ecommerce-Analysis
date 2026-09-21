-- =====================================================
-- OLIST E-COMMERCE ANALYSIS
-- =====================================================


-- =====================================================
-- Question 1:
-- Which product categories generate the most revenue?
-- =====================================================

SELECT
    ct.product_category_name_english AS Product_Category,
    ROUND(SUM(oi.price), 2) AS Total_Revenue,
    COUNT(oi.order_item_id) AS Number_of_Items,
    ROUND(AVG(oi.price), 2) AS Average_Price
FROM orders AS o
JOIN order_items AS oi
    ON o.order_id = oi.order_id
JOIN products AS p
    ON oi.product_id = p.product_id
JOIN category_translation AS ct
    ON p.product_category_name = ct.product_category_name
GROUP BY ct.product_category_name_english
ORDER BY Total_Revenue DESC
LIMIT 10;


-- =====================================================
-- Question 2:
-- How has sales performance changed over time?
-- =====================================================

SELECT
    YEAR(o.order_purchase_timestamp) AS Year,
    MONTH(o.order_purchase_timestamp) AS Month,
    COUNT(DISTINCT o.order_id) AS Number_of_Orders,
    ROUND(SUM(op.payment_value), 2) AS Total_Payment_Value
FROM orders AS o
JOIN order_payments AS op
    ON o.order_id = op.order_id
WHERE o.order_purchase_timestamp >= '2017-01-01'
  AND o.order_purchase_timestamp < '2018-09-01'
GROUP BY
    YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp)
ORDER BY
    Year,
    Month;


-- =====================================================
-- Question 3:
-- Where are Olist's customers and payments concentrated?
-- =====================================================

SELECT
    c.customer_state AS State,
    COUNT(DISTINCT c.customer_unique_id) AS Number_of_Customers,
    COUNT(DISTINCT o.order_id) AS Number_of_Orders,
    ROUND(SUM(op.payment_value), 2) AS Total_Payment_Value,
    ROUND(SUM(op.payment_value) / COUNT(DISTINCT o.order_id), 2) AS Average_Payment_Per_Order
FROM customers AS c
JOIN orders AS o
    ON c.customer_id = o.customer_id
JOIN order_payments AS op
    ON o.order_id = op.order_id
GROUP BY c.customer_state
ORDER BY Total_Payment_Value DESC;


-- =====================================================
-- Question 4:
-- How often are orders delivered late?
-- =====================================================

SELECT
    COUNT(*) AS Number_of_Orders,
    SUM(CASE
        WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date THEN 1
        ELSE 0
    END) AS Late_Orders,
    ROUND(
        SUM(CASE
            WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date THEN 1
            ELSE 0
        END) / COUNT(*) * 100,
        2
    ) AS Late_Order_Percentage
FROM orders AS o
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL
  AND o.order_estimated_delivery_date IS NOT NULL;