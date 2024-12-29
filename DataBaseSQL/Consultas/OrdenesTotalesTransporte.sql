SELECT 
    S.ShipperName, 
    COUNT(O.OrderID) AS TotalOrders
FROM 
    Shippers S
JOIN Orders O ON S.ShipperID = O.ShipperID
GROUP BY S.ShipperName
ORDER BY TotalOrders DESC;
