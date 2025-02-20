SELECT 
  c.customerkey AS CustomerKey, 
  c.firstname AS [First Name], 
  c.lastname AS [Last Name], 
  c.firstname + ' ' + c.lastname AS [Full Name], 
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
  c.datefirstpurchase AS DateFirstPurchase, 
  g.city AS [Customer City] 
FROM 
  AdventureWorksDW2022.dbo.DimCustomer AS c
  LEFT JOIN AdventureWorksDW2022.dbo.DimGeography AS g 
    ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  c.CustomerKey ASC;
