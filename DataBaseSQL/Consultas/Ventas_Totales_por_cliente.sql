SELECT 
    C.CustomerName, 
    SUM(OD.Quantity * P.Price) AS TotalSales
FROM 
    Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
JOIN OrderDetails OD ON O.OrderID = OD.OrderID
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY C.CustomerName
ORDER BY TotalSales DESC;
