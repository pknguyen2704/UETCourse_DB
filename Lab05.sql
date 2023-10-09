#section 1
SELECT SUBSTRING(productDescription,1,50) AS "Title of products"
FROM products;

#section 2
SELECT CONCAT(firstName, ' ', lastName, ', ', jobTitle) AS "Descriptions of employees"
FROM employees;

#section 3
UPDATE employees
SET jobTitle = REPLACE(jobTitle, 'Sales Rep', 'Sales Representative');

#section 4
SELECT *,
DATEDIFF(requiredDate, shippedDate) AS 'daysLeft'
FROM orders
ORDER BY daysLeft DESC
LIMIT 5;

#section 5
SELECT *
FROM orders
WHERE YEAR(orderDate) = 2005 AND MONTH(orderDate) = 5 AND shippedDate IS NULL;



