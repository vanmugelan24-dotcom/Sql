-- Create Table
-- -- CREATE TABLE Orders (
--     Order_ID NUMBER PRIMARY KEY,
--     Order_Date DATE,
--     Customer_ID VARCHAR2(10),
--     Customer_Name VARCHAR2(100),
--     Product_Category VARCHAR2(100),
--     Product_Name VARCHAR2(150),
--     Quantity NUMBER,
--     Unit_Price NUMBER(10,2),
--     Payment_Mode VARCHAR2(50),
--     Store_Location VARCHAR2(100)
-- );

-- -- Insert Data
-- INSERT ALL
--     INTO Orders VALUES (1001, TO_DATE('2026-02-01','YYYY-MM-DD'), 'C001', 'Ravi Kumar', 'Electronics', 'Wireless Mouse', 2, 799, 'UPI', 'Bangalore')
--     INTO Orders VALUES (1002, TO_DATE('2026-02-02','YYYY-MM-DD'), 'C002', 'Sneha Reddy', 'Grocery', 'Basmati Rice 5kg', 1, 650, 'Credit Card', 'Hyderabad')
--     INTO Orders VALUES (1003, TO_DATE('2026-02-03','YYYY-MM-DD'), 'C003', 'Arjun Mehta', 'Fashion', 'Men''s T-Shirt', 3, 499, 'Cash', 'Chennai')
--     INTO Orders VALUES (1004, TO_DATE('2026-02-04','YYYY-MM-DD'), 'C004', 'Priya Sharma', 'Electronics', 'Bluetooth Speaker', 1, 1499, 'Debit Card', 'Mumbai')
--     INTO Orders VALUES (1005, TO_DATE('2026-02-05','YYYY-MM-DD'), 'C005', 'Kiran Rao', 'Home & Kitchen', 'Mixer Grinder', 1, 2499, 'UPI', 'Bangalore')
--     INTO Orders VALUES (1006, TO_DATE('2026-02-06','YYYY-MM-DD'), 'C006', 'Neha Verma', 'Beauty', 'Face Cream', 4, 299, 'Credit Card', 'Delhi')
--     INTO Orders VALUES (1007, TO_DATE('2026-02-07','YYYY-MM-DD'), 'C007', 'Rahul Das', 'Grocery', 'Cooking Oil 1L', 5, 180, 'Cash', 'Kolkata')
--     INTO Orders VALUES (1008, TO_DATE('2026-02-08','YYYY-MM-DD'), 'C008', 'Anjali Nair', 'Fashion', 'Women''s Jeans', 2, 1199, 'UPI', 'Kochi')
--     INTO Orders VALUES (1009, TO_DATE('2026-02-09','YYYY-MM-DD'), 'C009', 'Suresh Patel', 'Electronics', 'Smartphone', 1, 15999, 'Debit Card', 'Ahmedabad')
--     INTO Orders VALUES (1010, TO_DATE('2026-02-10','YYYY-MM-DD'), 'C010', 'Meena Iyer', 'Home & Kitchen', 'Pressure Cooker', 1, 1899, 'Credit Card', 'Pune');

-- select * from Orders;

-- DATE FUNCTIONS – 20 Questions

-- 1. Extract year from Order_Date

-- SELECT EXTRACT(YEAR FROM Order_Date) AS year_extracted FROM orders;

-- 2. Extract month from Order_Date

-- SELECT EXTRACT(MONTH FROM Order_Date) AS month_extracted FROM orders;

-- 3. Extract day from Order_Date

-- SELECT EXTRACT(DAY FROM Order_Date) AS day_extracted FROM orders;

-- 4. Find current date

-- SELECT SYSDATE AS current_date FROM dual;

-- 5. Find current timestamp

-- SELECT SYSTIMESTAMP AS current_timestamp FROM dual;

-- 6. Add 7 days to Order_Date

-- SELECT Order_Date + 7 AS plus_7_days FROM orders;

-- 7. Subtract 30 days from Order_Date

-- SELECT Order_Date - 30 AS minus_30_days FROM orders;

-- 8. Find difference between two dates

-- SELECT end_date - start_date AS diff_in_days FROM projects;

-- 9. Find number of months between two dates

-- SELECT MONTHS_BETWEEN(end_date, start_date) AS diff_in_months FROM projects;

-- 10. Find last day of the month

-- SELECT LAST_DAY(Order_Date) AS last_day_month FROM orders;

-- 11. Get first day of the year

-- SELECT TRUNC(Order_Date, 'YYYY') AS first_day_year FROM orders;

-- 12. Format date as 'DD-MM-YYYY'

-- SELECT TO_CHAR(Order_Date, 'DD-MM-YYYY') AS formatted_date FROM orders;

-- 13. Convert string to date

-- SELECT TO_DATE('25-02-2026','DD-MM-YYYY') AS converted_date FROM dual;

-- 14. Convert date to string

-- SELECT TO_CHAR(SYSDATE, 'Month DD, YYYY') AS date_string FROM dual;

-- 15. Find week number of the year

-- SELECT TO_CHAR(Order_Date, 'WW') AS week_number FROM orders;

-- 16. Find day name from date

-- SELECT TO_CHAR(Order_Date, 'DAY') AS day_name FROM orders;

-- 17. Find quarter of the year

-- SELECT TO_CHAR(Order_Date, 'Q') AS quarter FROM orders;

-- 18. Calculate age from DOB

-- SELECT TRUNC(MONTHS_BETWEEN(SYSDATE, DOB)/12) AS age_years FROM employees;

-- 19. Check if date is weekend

-- SELECT CASE 
--          WHEN TO_CHAR(Order_Date,'DY') IN ('SAT','SUN') THEN 'Weekend'
--          ELSE 'Weekday'
--        END AS day_type
-- FROM orders;

-- 20. Find next Monday after a given date

-- SELECT NEXT_DAY(Order_Date, 'MONDAY') AS next_monday FROM orders;