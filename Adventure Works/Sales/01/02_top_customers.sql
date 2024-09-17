-- Who are the top 5 customers by sales revenue?

SELECT TOP 5  -- getting the top 5
	RANK() OVER(ORDER BY SUM(s.StdSalesAmount) DESC) AS CustomerRank,  -- using Window Function to calculate the rank of customer based on revenue generated
	CONCAT(c.Title, ' ', c.FirstName, ' ', c.LastName) AS CustomerName,  -- getting the full name of the customers along with their titles
	FORMAT(SUM(s.StdSalesAmount), '#,###.##') AS StandardRevenueGenerated  -- formatting the sales amount
FROM vFactSales AS s
JOIN DimCustomer AS c
	ON s.CustomerKey = c.CustomerKey  -- getting the customers who ordered
GROUP BY CONCAT(c.Title, ' ', c.FirstName, ' ', c.LastName)  -- grouping by the customer

