#section 1.1
SELECT *
FROM customers
WHERE city IN("Nantes", "Lyon");

#section 1.2
SELECT *
FROM customers
WHERE city = "Nantes" OR city = "Lyon";

#section 2.1
SELECT *
FROM orders
WHERE shippedDate BETWEEN "20030110" AND "20030310";

#section 2.2
SELECT *
FROM orders
WHERE shippedDate >= "20030110" AND shippedDate <= "20030310";

#section 3
SELECT *
FROM productlines
WHERE productLine LIKE "%CARS%";

#section 4
SELECT *
FROM products
ORDER BY quantityInStock DESC
LIMIT 10;

