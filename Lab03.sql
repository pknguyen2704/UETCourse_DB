#section 1
SELECT *
FROM employees
WHERE reportsTo IS NULL;

#section 2
SELECT DISTINCT customerNumber
FROM payments;

#section 3
SELECT *
FROM orders
WHERE shippedDate = "2003-01-18";

#section 4
SELECT *
FROM orders
WHERE YEAR(orderDate) = 2005 AND MONTH(orderDate) = 4 AND status = "Shipped";

#section 5
SELECT *
FROM products
WHERE productLine = "Classic Cars";