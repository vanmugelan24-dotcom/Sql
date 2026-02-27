-- Replace NULL price with 0

--  SELECT COALESCE(Unit_Price, 0) AS Price FROM Orders;

-- 2. Replace NULL Customer_Name with 'Unknown'

-- SELECT COALESCE(Customer_Name, 'Unknown') AS CustomerName FROM Orders;

-- 3. Count NULL values in Product_Name

-- SELECT COUNT(*) AS NullCount FROM Orders WHERE Product_Name IS NULL;

-- 4. Find rows where Order_Date is NULL

-- SELECT *FROM Orders WHERE Order_Date IS NULL;

-- 5. Use COALESCE to return first non-null value

-- SELECT COALESCE(Customer_Name, Product_Name, 'No Value') AS First NonNull FROM Orders;

-- 6. Use NVL to replace NULL values (Oracle)

-- SELECT NVL(Unit_Price, 0) AS Price FROM Orders;

-- 7. Use IFNULL function (MySQL)

-- SELECT IFNULL(Customer_Name, 'Unknown') AS CustomerName FROM Orders;



8. Check if column is NULL
SELECT *
FROM Orders
WHERE Customer_Name IS NULL;

-- 9. Check if column is NOT NULL

-- SELECT * FROM Orders WHERE Customer_Name IS NOT NULL;



-- 10. Use NULLIF between two columns

-- SELECT NULLIF(Quantity, Unit_Price) AS Result FROM Orders;

-- 11. Replace blank values with NULL

-- UPDATE Orders SET Customer_Name = NULL WHERE TRIM(Customer_Name) = '';

-- 12. Count non-null values

-- SELECT COUNT(Customer_Name) AS NonNullCount FROM Orders;

-- 13. Filter records where price is NULL or 0

-- SELECT * FROM Orders WHERE Unit_Price IS NULL OR Unit_Price = 0;

-- 14. Use CASE to handle NULL values

-- SELECT CASE 
-- WHEN Customer_Name IS NULL THEN 'Unknown'
-- ELSE Customer_Name END AS CustomerName FROM Orders;

-- 15. Compare NULL values properly

-- SELECT * FROM Orders WHERE Customer_Name IS NULL;


-- 16. Handle NULL in aggregation

-- SELECT SUM(COALESCE(Unit_Price, 0)) AS TotalSales FROM Orders;

-- 17. Find average excluding NULL values

-- SELECT AVG(Unit_Price) AS AvgPrice FROM Orders;

-- 18. Find sum ignoring NULL values

-- SELECT SUM(Unit_Price) AS TotalPrice FROM Orders;

-- 19. Identify columns containing NULL using metadata

-- SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Orders' AND IS_NULLABLE = 'YES';

-- 20. Convert NULL to default system date

-- SELECT COALESCE(Order_Date, CURRENT_DATE) AS OrderDate FROM Orders;