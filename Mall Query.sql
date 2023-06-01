SELECT 
    S.StoreName,
    E.FirstName AS EmployeeFirstName,
    E.LastName AS EmployeeLastName,
    C.FirstName AS CustomerFirstName,
    C.LastName AS CustomerLastName,
    P.ProductName,
    T.TransactionDate,
    T.TotalAmount
FROM
    Stores S
    JOIN Employees E ON S.StoreID = E.StoreID
    JOIN Customers C ON S.StoreID = C.StoreID
    JOIN Transactions T ON S.StoreID = T.StoreID
    JOIN Products P ON T.ProductID = P.ProductID
WHERE
    S.FloorNumber = 1
    AND E.JobTitle = 'Sales Associate'
    AND T.TransactionDate BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY
    T.TransactionDate DESC;
