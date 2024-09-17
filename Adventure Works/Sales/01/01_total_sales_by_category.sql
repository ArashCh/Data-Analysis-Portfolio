-- What is the total sales revenue for each product category in the last year?
-- Since the last order date of the database is 2014, I assume that we are in 2014. So the last year would be 2013.

SELECT
	pc.EnglishProductCategoryName AS ProductCategory,  -- the product categories
	FORMAT(SUM(s.StdSalesAmount), '#,###.##') AS StandardSalesAmount  -- standardized sales amount from the created view
FROM vFactSales AS s
JOIN DimDate AS d
	ON s.OrderDateKey = d.DateKey  -- getting the date using DimDate
JOIN DimProduct AS p
	ON s.ProductKey = p.ProductKey  -- getting the product to access product subcategories
JOIN DimProductSubcategory AS psc
	ON p.ProductSubCategoryKey = psc.ProductSubcategoryKey  -- getting the product subcategories to access product categories
JOIN DimProductCategory AS pc
	ON psc.ProductCategoryKey = pc.ProductCategoryKey  -- getting the product category
WHERE d.CalendarYear = 2013  -- filtering for last year (assuming we're is 2014)
GROUP BY pc.EnglishProductCategoryName  -- grouping by the product categories
ORDER BY pc.EnglishProductCategoryName DESC  -- ordering to get the best selling category first

