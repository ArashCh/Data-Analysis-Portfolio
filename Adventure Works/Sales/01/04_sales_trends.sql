-- What are the monthly sales trends over the past year?
-- Since the last order date of the database is 2014, I assume that we are in 2014. So the last year would be 2013.

WITH MonthlySales AS (
	SELECT
		d.MonthNumberOfYear,  -- getting month number to help sorting the month
		d.EnglishMonthName,  -- the month name
		SUM(s.StdSalesAmount) AS StandardSalesAmount,  -- aggregating the sales amount (standardized)
		LAG(
			SUM(s.StdSalesAmount)
		)
		OVER (ORDER BY MONTH(DateAdd(MONTH, d.MonthNumberOfYear - 1, '2013-01-01'))
		) AS PreviousMonthSalesAmount  -- getting the previous month's sales amount for each month
	FROM vFactSales AS s
	JOIN DimDate AS d
		ON s.OrderDateKey = d.DateKey
	WHERE d.CalendarYear = 2013  -- filtering for last year
	GROUP BY d.MonthNumberOfYear, d.EnglishMonthName
)
SELECT
	ms.EnglishMonthName AS MonthsOf2013,
	FORMAT(ms.StandardSalesAmount, '#,###.##') AS StandardSalesAmount,
	CASE 
		WHEN ms.PreviousMonthSalesAmount IS NULL THEN NULL
		ELSE FORMAT(
			((ms.StandardSalesAmount - ms.PreviousMonthSalesAmount) / ms.PreviousMonthSalesAmount),
			'##.##%'
		)
	END AS SalesGrowth  -- calculating the sales growth: (Current - Previous) / Previous
FROM MonthlySales AS ms
ORDER BY ms.MonthNumberOfYear  -- sorting the months