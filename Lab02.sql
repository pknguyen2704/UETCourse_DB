CREATE DATABASE My_Classicmodels;
USE My_Classicmodels;

#section 1
CREATE TABLE orders(
    orderNumber INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    orderDate DATETIME NOT NULL,
    requiredDate DATETIME NOT NULL,
    shippedDate DATETIME,
    status VARCHAR(15) NOT NULL,
    comments TEXT,
    customerNumber INT(11) NOT NULL
);

CREATE TABLE productlines(
    productLine VARCHAR(50) NOT NULL PRIMARY KEY,
    textDescription VARCHAR(4000),
    htmlDescription MEDIUMTEXT,
    image MEDIUMBLOB
);

CREATE TABLE orderdetails(
    orderNumber INT(11) NOT NULL AUTO_INCREMENT,
    productCode VARCHAR(15) NOT NULL,
    quantityOrdered INT(11) NOT NULL,
    priceEach DOUBLE NOT NULL,
    orderLineNumber SMALLINT(6) NOT NULL,
    PRIMARY KEY (orderNumber, productCode)
);

CREATE TABLE products(
    productCode VARCHAR(15) NOT NULL PRIMARY KEY,
    productName VARCHAR(70) NOT NULL,
    productLine VARCHAR(50) NOT NULL,
    productScale VARCHAR(10) NOT NULL,
    productVendor VARCHAR(50) NOT NULL,
    productDescription TEXT NOT NULL,
    quantityInSock SMALLINT(6) NOT NULL,
    buyPrice DOUBLE NOT NULL
);

#section 2
ALTER TABLE products ADD CONSTRAINT fk_products_productlines FOREIGN KEY (productLine) REFERENCES productlines(productLine) ON UPDATE CASCADE;
ALTER TABLE orderdetails ADD CONSTRAINT fk_orderdetails_products FOREIGN KEY (productCode) REFERENCES products (productCode) ON UPDATE CASCADE;
ALTER TABLE orderdetails ADD CONSTRAINT fk_orderdetails_orders FOREIGN KEY (orderNumber) REFERENCES orders (orderNumber) ON UPDATE CASCADE;