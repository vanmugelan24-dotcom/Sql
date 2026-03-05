-- ANALYTICAL FUNCTIONS (WINDOW FUNCTIONS) – 20 Questions

-- 1. Assign row numbers to each order
-- SELECT Order_ID, Order_Date,ROW_NUMBER() OVER (ORDER BY Order_Date) AS row_num
-- FROM Orders;

-- 2. Rank products by price
-- SELECT Product_Name, Unit_Price,RANK() OVER (ORDER BY Unit_Price DESC) AS price_rank
-- FROM Orders;

-- 3. Dense rank products by quantity sold
-- SELECT Product_Name, Quantity,DENSE_RANK() OVER (ORDER BY Quantity DESC) AS qty_rank
-- FROM Orders;

-- 4. Find running total of sales
-- SELECT Order_ID, Order_Date,SUM(Quantity * Unit_Price) OVER (ORDER BY Order_Date) AS running_total
-- FROM Orders;

-- 5. Calculate cumulative sum by month
-- SELECT TO_CHAR(Order_Date, 'YYYY-MM') AS month,SUM(Quantity * Unit_Price) OVER (PARTITION BY TO_CHAR(Order_Date, 'YYYY-MM')ORDER BY Order_Date) AS cum_sales
-- FROM Orders;

-- 6. Find moving average of last 3 days
-- SELECT Order_Date,AVG(Quantity * Unit_Price) OVER (ORDER BY Order_Date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg
-- FROM Orders;

 -- 7. Calculate lag of previous day sales
-- SELECT Order_Date, Quantity * Unit_Price AS sales,LAG(Quantity * Unit_Price) OVER (ORDER BY Order_Date) AS prev_day_sales
-- FROM Orders;

-- 8. Calculate lead of next day sales
-- SELECT Order_Date, Quantity * Unit_Price AS sales,LEAD(Quantity * Unit_Price) OVER (ORDER BY Order_Date) AS next_day_sales
-- FROM Orders;

-- 9. Find difference between current and previous sale
-- SELECT Order_Date, Quantity * Unit_Price AS sales,(Quantity * Unit_Price) - LAG(Quantity * Unit_Price) OVER (ORDER BY Order_Date) AS diff_prev
-- FROM Orders;

-- 10. Partition sales by region (Store_Location)
-- SELECT Store_Location, Order_ID,SUM(Quantity * Unit_Price) OVER (PARTITION BY Store_Location) AS region_sales
-- FROM Orders;