# Olist E-Commerce Analysis

## Project Overview

This project analyzes the Olist Brazilian e-commerce dataset, containing roughly 100,000 orders across multiple related tables.

Using SQL, I connected customer, order, product, payment, and delivery data to answer business questions about sales performance, customer markets, and delivery operations.

The final stage of the project will use Power BI to visualize the main findings.

## Business Questions

1. Which product categories generate the most revenue?
2. How has sales performance changed over time?
3. Where are Olist's customers and payments concentrated?
4. How often are orders delivered late?

Future analysis will explore customer reviews, seller performance, and repeat customers.

## Dataset

The Brazilian E-Commerce Public Dataset by Olist includes data on:

- Customers
- Orders and order items
- Products and product categories
- Sellers
- Payments
- Customer reviews
- Delivery information
- Geographic information

The relational structure provides practice with realistic multi-table analysis.

## Tools

- **MySQL** — Data storage and analysis
- **MySQL Workbench** — Query development
- **Power BI** — Dashboard development
- **GitHub** — Project documentation

## Analysis

### 1. Which product categories generate the most revenue?

Health & Beauty generated the highest product revenue at approximately **1.26M**, with **9,670 items sold** at an average price of **130.16**.

Watches & Gifts generated approximately **1.21M** despite selling only **5,991 items**, helped by its much higher average price of **201.14**.

Bed Bath Table sold more items than either category at **11,115**, but generated approximately **1.04M** due to its lower average price of **93.30**.

**Takeaway:** Category performance is influenced by both **sales volume and average product price**.

---

### 2. How has sales performance changed over time?

The main trend analysis covers **January 2017 through August 2018**, excluding sparse periods at the beginning and end of the dataset.

Monthly orders increased from **800 in January 2017** to **6,512 in August 2018**, while total payment value increased from approximately **138K to 1.02M**.

The highest monthly payment value occurred in **November 2017**, when **7,544 orders** generated approximately **1.19M**.

**Takeaway:** Marketplace activity grew substantially during the analysis period, with changes in total payment value driven largely by **order volume**.

---

### 3. Where are Olist's customers and payments concentrated?

São Paulo (SP) was the largest market, with **40,301 unique customers**, **41,745 orders**, and approximately **6.0M** in total payment value.

Despite generating the most total payment value, SP had the **lowest average payment per order at 143.69**.

**Takeaway:** São Paulo's leading payment value is driven primarily by its much larger **customer base and order volume**, rather than higher spending per order.

---

### 4. How often are orders delivered late?

Of the **96,470 delivered orders** with valid delivery dates, **7,826 were delivered late**, resulting in a **late-delivery rate of 8.11%**.

**Takeaway:** Most orders were delivered on time or early, while roughly **1 in 12 orders arrived late**. A future analysis will investigate whether late deliveries are associated with lower customer review scores.

## Key Insights

- Product performance depends on both sales volume and average item price.
- Marketplace activity increased substantially across the main analysis period.
- São Paulo is Olist's largest customer and payment market, primarily because of its high order volume.
- **8.11%** of analyzed deliveries arrived after their estimated delivery date.

## Next Steps

- Analyze the relationship between delivery performance and review scores
- Evaluate seller performance
- Analyze repeat customer behavior
- Build a Power BI dashboard highlighting the main findings

## Recommendations

Business recommendations will be added after the remaining analysis is completed.
