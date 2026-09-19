# Olist E-Commerce Analysis

## Project Overview

This project explores the Olist Brazilian e-commerce dataset, which contains roughly 100,000 orders across multiple connected tables.

The goal of the project is to analyze the company's sales and operations using SQL and turn the results into useful business insights. The analysis will look at areas such as product performance, customers, sellers, delivery performance, and customer reviews.

Rather than analyzing each table separately, I use SQL joins to connect the different parts of the business and investigate how they relate to one another.

Once the SQL analysis is complete, the main findings will be presented in a Power BI dashboard.

## Business Questions

The project focuses on questions such as:

- Which product categories generate the most revenue?
- What factors are driving revenue differences between categories?
- How does sales performance change over time?
- Where are Olist's customers and sales concentrated?
- How often are orders delivered late?
- Does delivery performance affect customer review scores?
- Which sellers generate the most sales?
- How much business comes from repeat customers?

Additional questions may be added as patterns in the data are discovered.

## Dataset

The project uses the Brazilian E-Commerce Public Dataset by Olist.

Instead of one large table, the dataset is split across several related tables containing information about:

- Customers
- Orders
- Order items
- Products
- Sellers
- Payments
- Customer reviews
- Product category translations
- Geographic information

Working with the relational structure of the dataset allows the project to demonstrate SQL joins, aggregation, filtering, data validation, and business analysis on a realistic dataset.

## Tools

**MySQL** — Data storage and SQL analysis  
**MySQL Workbench** — Query development  
**Power BI** — Data visualization and dashboard development  
**GitHub** — Project documentation and portfolio presentation

## Analysis

### 1. Which product categories generate the most revenue?

I started by comparing product revenue across categories while also looking at the number of items sold and average item price. This helped determine whether high-performing categories were being driven primarily by sales volume or higher-priced products.

#### Findings

Health & Beauty generated the highest product revenue at approximately **1.26M**, with **9,670 items sold** at an average item price of **130.16**.

Watches & Gifts ranked closely behind at approximately **1.21M** in product revenue despite selling only **5,991 items**. Its average item price was much higher at **201.14**, allowing the category to generate similar revenue with considerably fewer items sold.

Bed Bath Table provides the opposite example. It sold **11,115 items**, more than Health & Beauty, but generated approximately **1.04M** in product revenue because its average item price was lower at **93.30**.

#### Takeaway

High revenue does not necessarily mean a category sells the most products. Revenue performance in this dataset appears to be influenced by a combination of **sales volume and average product price**.

Health & Beauty benefits from strong sales volume combined with a moderately high average price, while Watches & Gifts relies more heavily on higher-priced products.

---

## Dashboard

A Power BI dashboard will be developed after the SQL analysis is complete to visualize the project's most important findings.

## Key Insights

This section will be updated as the analysis progresses.

## Recommendations

Business recommendations will be developed after the full analysis is completed.