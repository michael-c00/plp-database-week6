-- ============================================================================
-- PLP Academy: Database Systems
-- Week 6 Assignment: SQL Joins and Relationships
-- Student: Michael Myeko
-- ============================================================================

-- Question 1: INNER JOIN – Employees and Offices
-- Retrieves employee contact info and their corresponding office code using an INNER JOIN.
SELECT 
    firstName, 
    lastName, 
    email, 
    officeCode
FROM 
    employees
INNER JOIN 
    offices USING (officeCode);


-- Question 2: LEFT JOIN – Products and Product Lines
-- Retrieves product details alongside their product lines, preserving all products using a LEFT JOIN.
SELECT 
    productName, 
    productVendor, 
    productLine
FROM 
    products
LEFT JOIN 
    productlines USING (productLine);


-- Question 3: RIGHT JOIN – Customers and Orders
-- Retrieves order details for the first 10 orders joined with customer records using a RIGHT JOIN.
SELECT 
    orderDate, 
    shippedDate, 
    status, 
    customerNumber
FROM 
    customers
RIGHT JOIN 
    orders USING (customerNumber)
LIMIT 10;
