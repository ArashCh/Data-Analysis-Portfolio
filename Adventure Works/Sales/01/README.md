# Sales Analytics for AdventureWorks

## Project Overview
Hi there! 👋
This is a sales analytics project using T-SQL on the AdventureWorksDW2022.bak (Data Warehouse) database. This is a small but structured project designed to work with SQL queries in SSMS and analyze sales data in a way that answers important business questions. The focus here is to mimic real-world scenarios to help the sales department understand sales performance, top customers, best-selling products, and regional contributions to revenue.

## Scenario: The Sales Manager's Request
I was tasked with analyzing sales data by the Sales Manager at AdventureWorks. They wanted to get insights into how the business is performing in terms of product sales, customer spending, and regional performance. They had a few specific questions they needed answers to, and my job was to use T-SQL to dig into the data and provide those insights.


**Here are the specific questions the Sales Manager asked me to answer:**
1. What is the total sales revenue for each product category in the last year?
2. Who are the top 5 customers by sales revenue?
3. Which product is the top-selling in terms of revenue and units sold?
4. What are the sales trends over the past year (monthly or quarterly)?
5. Which geographic regions are driving the most sales?


## Key Business Questions & SQL Queries
Below is a quick summary of the queries I created to answer the Sales Manager's questions:

0. **Creating a View to merge Internet sales and reseller sales tables**
1. **Total Sales Revenue by Product Category Last Year:** I calculated the total revenue for each product category by joining the sales view and product table.
2. **Top 5 Customers by Sales Revenue:** I used the Window Function RANK() to find the top customers who contributed the most to overall sales.
3. **Top-Selling Product (Revenue & Units Sold):** I identified which product sold the most, in terms of total revenue and units sold separately.
4. **Sales Trends Over the Past Year:** I aggregated the sales of each month of the last year and utilized  CTE and Window Function to calculate the SalesGrowth column as well.
5. **Regional Sales Performance:** I looked into territories to find out which ones contributed the most to the overall sales.



## Project Structure
Here’s how the project is organized in this repository:
**SQL Queries:**
- `00_creating_views.sql` – This file contains the query to create a view to merge sales tables.
- `01_total_sales_by_category.sql` – This file contains the query to calculate total sales by product category.
- `02_top_customers.sql` – Query for identifying the top 5 customers by sales revenue.
- `03_top_selling_products.sql` – Query for finding the top-selling products by revenue and units.
- `04_sales_trends.sql` – Query to analyze sales trends over time (monthly/quarterly).
- `05_regional_sales_performance.sql` – Query to evaluate which geographic regions drove the most sales.
**Documentation:**
- Each query is documented with clear comments on what it does.


## How to Replicate This Project
1. **Database Setup:** You’ll need the AdventureWorksDW2022.bak database. You can download it from Microsoft’s website and restore it in SQL Server Management Studio (SSMS).
2. **SSMS Setup:** Once the database is restored in SSMS, you can run the queries found in the `SQL Queries` section of this repository.
3. **Running the Queries:** Open each `.sql` file and execute the queries in SSMS. Make sure you review the results and compare them with the business questions to see how each query addresses the specific needs.


## Results and Insights
Here are the insights and information as the result of running the queries:

- The **Components** category has generated the most revenue for us among the product categories and Accessories least. However, this is revenue, not the profit.
- **Jordan Turner**, **Willie Xu**, **Emmanuel Patel**, **Maurice Shan**, and **Lacey He** are our top 5 customers in terms of sales amount. I also should mention that we only access the customers who are Internet buyers.
- While the **Mountain-200 Bikes** (in different colors and sizes) are our top-selling products in terms of Sales Revenue, **Water Bottel - 30 oz**, **Patch Kit/B Patches**, and **AWC Logo Cap** are the most popular products.
- The sales trends for 2013 show significant fluctuations throughout the year. There were notable drops in March (-29.99%), June (-26.07%), and a sharp decline in December (-60.52%). However, there were strong recovery periods, particularly in April (+33.71%) and October (+31.81%).
- Australia is the top territory driving the most sales.


## Files in This Repository
- [00_creating_views.sql]
- [01_total_sales_by_category.sql]
- [02_top_customers.sql]
- [03_top_selling_products.sql]
- [04_sales_trends.sql]
- [05_regional_sales_performance.sql]
- README.md (You're reading it now!)

  ---
**Author:** [A. Arash Chitgar](https://www.linkedin.com/in/a-arash-chitgar/)

**Contact:**
- [Telegram](https://t.me/Arash_Chitgar)
- [Email](a.arash.chitgar@gmail.com)
