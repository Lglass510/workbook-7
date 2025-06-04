-- How many suppliers are there?
SELECT COUNT(*) AS supplierCount FROM suppliers;

-- What is the sum of all employee salaries?
SELECT SUM(salary) FROM employees;

-- Cheapest item price?
SELECT MIN(unitPrice) FROM products;

-- Average price
SELECT AVG(unitPrice) FROM products;

-- Most expensive item
SELECT MAX(unitPrice) FROM products;

-- Supplier ID and number of items they supply
SELECT supplierID, COUNT(*)
FROM products
GROUP By supplierID;

-- Category ID and average price
SELECT categoryID, AVG(unitPrice)
FROM products
GROUP By categoryID;

-- Suppliers with 5+ items
SELECT supplierID, COUNT(*)
FROM products
GROUP BY supplierID
HAVING COUNT(*) >=5;`
