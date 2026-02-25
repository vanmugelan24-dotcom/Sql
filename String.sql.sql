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

-- STRING FUNCTIONS – 20 Questions
-- 1. Write a query to convert all customer names to uppercase.

-- select upper(customer_name)as customer_name from ORDERS;

-- 2. Extract the first 5 characters from Product_Name.

-- SELECT SUBSTR(Product_Name, 1, 5) AS first_five_chars
-- FROM Orders;

-- 3. Find the length of each Customer_Name.

-- select length(Customer_Name) from ORDERS;

-- 4. Replace the word "Rice" with "Premium Rice" in Product_Name.

-- SELECT REPLACE(Product_Name, 'Rice', 'Premium Rice') AS Product_name
-- FROM ORDERS;

-- 5. Remove leading/trailing spaces from Customer_Name

-- select trim(customer_name) as Customer_Name from Orders;

-- 6. Concatenate First_Name and Last_Name as Full_Name.

-- SELECT Customer_Name || ' - Customer' AS Full_Name FROM Orders;

-- 7. Find customers whose names start with 'A'.

-- select CUSTOMER_NAME  from ORDERS WHERE CUSTOMER_NAME like 'A%'

-- 8. Extract the domain name from Email_ID.

-- SELECT SUBSTR(Email_ID, INSTR(Email_ID,'@')+1) FROM Orders;


-- 9. Find position of '@' in Email_ID

-- SELECT INSTR(Email_ID,'@') FROM Orders;

-- 10. Reverse Product_Name

-- SELECT REVERSE(Product_Name) FROM Orders;

-- 11. Convert first letter of each word to uppercase

-- SELECT INITCAP(Product_Name) as initial_caps FROM Orders;

-- 12. Extract the last 3 characters from Order_ID

-- select substr(Order_Id,-3) from ORDERS

-- 13. Count how many times letter 'a' appears in Customer_Name.

-- SELECT Customer_Name,
--        (LENGTH(Customer_Name) - LENGTH(REPLACE(Customer_Name, 'a', ''))) AS Count_A
-- FROM Orders;

-- 14. Mask the last 4 digits of a phone number.

-- SELECT Phone,
--        SUBSTR(Phone, 1, LENGTH(Phone) - 4) || 'XXXX' AS Masked_Phone
-- FROM Orders;

-- 15. Split Full_Name into First_Name and Last_Name

-- SELECT SUBSTR(Customer_Name,1,INSTR(Customer_Name,' ')-1) AS First_Name,
-- SUBSTR(Customer_Name,INSTR(Customer_Name,' ')+1) AS Last_Name
-- FROM Orders;

-- 17. Compare two columns ignoring case

-- SELECT *
-- FROM Orders
-- WHERE UPPER(Product_Category) = UPPER(Product_Category);

-- 18. Customers whose name contains 'kumar'

-- SELECT Customer_Name FROM Orders
-- WHERE LOWER(Customer_Name) LIKE '%kumar%';

-- 19. Pad Order_ID with leading zeros (6 digits)

-- SELECT LPAD(Order_ID,6,'0') FROM Orders;

-- 20. Extract substring between two characters

-- SELECT SUBSTR(Customer_Name,
-- INSTR(Customer_Name,' ')+1) FROM Orders;