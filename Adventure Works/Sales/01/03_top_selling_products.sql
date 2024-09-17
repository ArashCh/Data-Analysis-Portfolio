-- Which product is the top-selling in terms of revenue and units sold?

-- Top 10 Products in Terms of Revenue
SELECT TOP 10
	p.EnglishProductName AS Product,
	FORMAT(SUM(s.StdSalesAmount), '#,###.##') AS SalesRevenue
FROM vFactSales AS s
JOIN DimProduct AS p
	ON s.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY SUM(s.StdSalesAmount) DESC
-- Top 10 Products in Terms of Units Sold
SELECT TOP 10
	p.EnglishProductName AS Product,
	FORMAT(COUNT(*), '#,###') AS UnitsSold
FROM vFactSales AS s
JOIN DimProduct AS p
	ON s.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY COUNT(*) DESC
