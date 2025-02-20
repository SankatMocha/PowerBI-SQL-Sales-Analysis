USE AdventureWorksDW2022;
GO

-- Cleansed FACT_InternetSales Table --
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount] 
FROM 
  AdventureWorksDW2022.dbo.FactInternetSales
WHERE 
  (OrderDateKey / 10000) >= YEAR(GETDATE()) - 2 -- Ensures only last two years' data
ORDER BY 
  OrderDateKey ASC;
