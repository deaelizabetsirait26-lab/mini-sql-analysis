# TheLook E-commerce — SQL Mini Project

## Project Overview
This mini project explores the public **TheLook E-commerce** dataset using SQL in Google BigQuery. The project is designed from the perspective of a Junior Data Analyst supporting business teams with product, customer, and sales analysis.

The goal is to answer five business questions using basic SQL concepts through simple joins.

## Dataset
- **Source:** `bigquery-public-data.thelook_ecommerce`
- **Platform:** Google BigQuery
- **Tables used:**
  - `products`
  - `users`
  - `orders`
  - `order_items`

Check the table schemas in BigQuery if you need to confirm column names.

## Business Questions & SQL Concepts

### 1. Product Analysis
**Business question:** What are the characteristics of the products being sold?

Display the first 20 products with their product name, category, department, brand, and retail price.

**SQL concepts:** `SELECT`, `FROM`, `LIMIT`

### 2. Identify Premium Products
**Business question:** Which products have a retail price above 100?

Display product name, category, brand, and retail price, ordered from the highest price to the lowest.

**SQL concepts:** `WHERE`, `ORDER BY`, `DESC`

### 3. Evaluate Product Categories
**Business question:** Which categories contain the most products?

Count the products in each category and sort the results from the largest count to the smallest.

**SQL concepts:** `COUNT`, `GROUP BY`, `ORDER BY`

### 4. Explore Customers and Orders
**Business question:** Which customers have placed orders, and what are the details of those orders?

Join `users` and `orders` to display order ID, order status, order creation date, customer first name, and customer last name.

**SQL concepts:** `INNER JOIN`, `ON`, table aliases

### 5. Sales Analysis by Product Category
**Business question:** Which product categories generate the highest sales value?

Join `order_items` and `products`, calculate total sales value for each category using `order_items.sale_price`, and sort from highest to lowest total sales.

**SQL concepts:** `JOIN`, `SUM`, `GROUP BY`, `ORDER BY`

## Business Insights
Add at least **two insights** based on the actual query results for Questions 3 and 5.

1. **Product category insight:** `[Add an insight based on the product-count results from Question 3.]`
2. **Sales category insight:** `[Add an insight based on the sales totals from Question 5.]`

Replace the placeholders above with findings from your BigQuery results. Do not report conclusions until you have checked the actual query output.

## Tools
- SQL
- Google BigQuery
- GitHub for project versioning and portfolio presentation

## How to Run
1. Open Google BigQuery.
2. Locate the public dataset `bigquery-public-data.thelook_ecommerce`.
3. Check the schemas of the `products`, `users`, `orders`, and `order_items` tables as needed.
4. Run the SQL queries for the five business questions.
5. Review the query results and add at least two business insights to the **Business Insights** section.
6. Upload the README and SQL file to a GitHub repository that can be accessed by reviewers.

## Scope
This project focuses on basic SQL queries and simple joins. The README describes the tasks in the project brief; actual insights should be completed after running the queries and reviewing their results.
This project focuses on basic SQL queries and simple joins. The README describes the tasks in the project brief; actual insights should be completed after running the queries and reviewing their results.
