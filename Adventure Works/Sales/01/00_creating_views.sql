-- Here I created the view I need for this project
-- Since the sales were in different currencies, I standardized the sales amount by multiplying SalesAmount by AverageRate, considering the currency (obviously) and also the rate of the currency on the date the order occured.
-- I also merged the required columns of the two sales tables (FactInternetSales & FactReselleSales)

IF OBJECT_ID('vFactSales', 'V') IS NOT NULL  -- check if the view exists
	DROP VIEW vFactSales   -- dropping the view
GO
CREATE VIEW vFactSales AS  -- creating the view
	WITH FactSales AS (
		SELECT
			s.ProductKey,
			s.OrderDateKey,
			s.CustomerKey,
			s.CurrencyKey,
			s.SalesTerritoryKey,
			s.SalesAmount
		FROM FactInternetSales AS s
		UNION
		SELECT
			s.ProductKey,
			s.OrderDateKey,
			NULL AS CustomerKey,  -- the FactResellerSales table has not CustomerKey column
			s.CurrencyKey,
			s.SalesTerritoryKey,
			s.SalesAmount
		FROM FactResellerSales AS s
	)
	SELECT
		s.ProductKey,
		s.OrderDateKey,
		s.CustomerKey,
		s.SalesTerritoryKey,
		s.SalesAmount * cr.AverageRate AS StdSalesAmount
	FROM FactSales AS s
	JOIN FactCurrencyRate AS cr
		ON s.OrderDateKey = cr.DateKey AND s.CurrencyKey = cr.CurrencyKey
GO
