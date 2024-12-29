SELECT 
    P.ProductID, 
    P.ProductName, 
    SUM(OD.Quantity) AS TotalSold,
    SUM(OD.Quantity * P.Price) AS TotalRevenue
FROM 
    OrderDetails OD
JOIN 
    Products P ON OD.ProductID = P.ProductID
JOIN 
    Orders O ON OD.OrderID = O.OrderID
WHERE 
    strftime('%Y', O.OrderDate) = '1996' 
GROUP BY 
    P.ProductID, P.ProductName
ORDER BY 
    TotalSold DESC;