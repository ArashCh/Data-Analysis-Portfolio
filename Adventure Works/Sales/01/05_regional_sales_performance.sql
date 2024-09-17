-- Which geographic regions are driving the most sales?

SELECT top 10
	g.EnglishCountryRegionName,
	g.StateProvinceName,
	g.City,
	FORMAT(SUM(s.StdSalesAmount), '#,###.##') AS StdTotalRevenue
FROM vFactSales AS s
LEFT JOIN DimGeography AS g
	ON s.SalesTerritoryKey = g.GeographyKey
GROUP BY g.EnglishCountryRegionName, g.StateProvinceName, g.City
ORDER BY SUM(s.StdSalesAmount) DESC
