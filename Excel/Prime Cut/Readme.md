# Prime Cut Meat Shop - Excel Data Analysis Project
Welcome to the "Prime Cut Meat Shop" data analysis portfolio project! This project involves a detailed analysis of a fictional meat-selling shop's data using Microsoft Excel. The dataset was generated using Python to mimic real-world behavior and statistical characteristics, enabling a comprehensive exploration of various business metrics. The primary focus of this project is to provide insights into customer behavior, product sales, and overall business performance through the use of Excel features and data visualization techniques.

![Dashboard](https://github.com/ArashCh/Data-Analysis-Portfolio/blob/master/Excel/Prime%20Cut/Dashboard%20Screenshot.png)


## Project Overview
- **Objective:** To analyze the sales and customer data of "Prime Cut Meat Shop" and present key insights through a dynamic Excel dashboard.
- **Tools Used:** Microsoft Excel and Python (for dataset generation).


## Dataset Description
The dataset was created using Python with the [Faker](https://faker.readthedocs.io/en/master/) library to generate realistic customer, product, and order data. The structure of the dataset includes three primary tables:
### Customers Table:
- **Customer ID:** Unique identifier for each customer.
- **Customer Name:** Full name of the customer.
- **Email:** Contact email of the customer.
- **Phone Number:** Contact phone number of the customer.
- **Address Line 1:** Address details of the customer.
- **City:** City where the customer resides.
- **Country:** Country of residence.
- **Postcode:** Postal code.
- **Loyalty Card:** Boolean value indicating whether the customer has a loyalty card.
### Products Table:
- **Product ID:** Unique identifier for each product.
- **Meat Type:** Type of meat (e.g., Beef, Chicken, Fish).
- **Cut Type:** Specific cut of the meat (e.g., Ribeye, Breast, Fillet).
- **Size:** Size category of the meat product (e.g., Small, Medium, Large).
- **Unit Price:** Price per unit of the product.
- **Price per 100g:** Standardized price per 100 grams of the product.
- **Profit:** Profit margin per unit.
### Orders Table:
- **Order ID:** Unique identifier for each order.
- **Order Date:** Date when the order was placed.
- **Customer ID:** Reference to the customer who placed the order.
- **Product ID:** Reference to the product ordered.
- **Quantity:** Number of units ordered.
- **Total Price:** Total price of the order (calculated).


## Dashboard Overview
The Excel dashboard provides a high-level view of the business's performance, with insights into key metrics such as total orders, total sales, top customers, sales by meat type, and sales by cut type.
Below is a brief description of the dashboard components:

### Total Orders & Total Sales:
Displays the total number of orders and total sales revenue.
### Top 5 Customers:
Highlights the top 5 customers based on total spending.
### Total Sales by Meat Type:
Shows a bar chart of sales revenue segmented by different types of meat (e.g., Beef, Chicken, Lamb).
### Total Sales by Cut Type:
Illustrates the sales distribution across various meat cuts (e.g., Ribeye, Thigh).
### Total Sales Over Time:
Line chart visualizing the sales trends over the course of the year, segmented by different meat types.
### Size & Loyalty Card Filters:
Allows the user to filter data by product size and whether the customer has a loyalty card.
### Geographical Sales Distribution:
A map visualizing the sales distribution across different regions.


## How to Use This Project
### Download the Dashboard:
Download the Excel file from the repository to explore the dashboard.
### Explore the Data:
Use the interactive filters to explore different aspects of the data and gain insights into customer behavior, product performance, and sales trends.
### Replicate the Analysis:
Follow the steps outlined in the Python script provided in the repository to generate your own fictional dataset and replicate the analysis.


## Repository Contents
- **Prime Cut.xlsx:** The Excel file containing the dashboard.
- **data/:** Folder containing the generated CSV files.
- **README.md:** This README file.


---
**Author:** [A. Arash Chitgar](https://www.linkedin.com/in/a-arash-chitgar/)

**Contact:**
- [Telegram](https://t.me/Arash_Chitgar)
- [Email](a.arash.chitgar@gmail.com)


