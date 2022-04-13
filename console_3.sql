CREATE TABLE products
(
    id           SERIAL PRIMARY KEY,
    productName  VARCHAR(30) NOT NULL,
    company      VARCHAR(20) NOT NULL,
    productCount INT DEFAULT 0,
    price        NUMERIC     NOT NULL,
    isDiscounted BOOL
);
INSERT INTO products (productName, company, productCount, price, isDiscounted)
VALUES ('iPhone X', 'Apple', 3, 76000, false),
       ('iPhone 8', 'Apple', 2, 71000, true),
       ('iPhone 7', 'Apple', 5, 42000, true),
       ('Galaxy S9', 'Samsung', 2, 46000, false),
       ('Galaxy S8 Plus', 'Samsung', 1, 56000, true),
       ('Desire 12', 'HTC', 5, 28000, true),
       ('Nokia 9', 'HMD Global', 6, 38000, true);

SELECT *
FROM products
WHERE products.company != 'HTC';--1

SELECT *
FROM products
WHERE company = 'Apple'
  and price < 75000;--2

SELECT *
FROM products
WHERE price >= 46000;--3

SELECT *
FROM products
order by price desc
limit 2;--4

SELECT productname, price
FROM products
WHERE price = (SELECT min(price) FROM products);--5

SELECT *
FROM products
WHERE isDiscounted = true;--6

SELECT *
FROM products
WHERE isDiscounted = false;--7

SELECT *
FROM products
order by price desc;--8

SELECT SUM(price) FROM products;--9

SELECT DISTINCT company FROM products WHERE productCount<=2;--10