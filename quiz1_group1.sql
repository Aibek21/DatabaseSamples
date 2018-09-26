CREATE TABLE manufacturers (
  code SERIAL PRIMARY KEY,
  name VARCHAR(255)
);


CREATE TABLE products (
  code         SERIAL PRIMARY KEY,
  name         VARCHAR(255),
  price        NUMERIC,
  manufacturer INTEGER REFERENCES manufacturers (code)
); --1


SELECT name AS "Product Name"
FROM products; --2


SELECT
  name,
  price
FROM products; --3


SELECT
  name,
  price
FROM products
WHERE price <= 200; --4


SELECT price
FROM products
WHERE price > 40 AND price < 120; --5


SELECT
  name,
  price
FROM products
WHERE price >= 180
ORDER BY price DESC, name ASC; --6


SELECT
  manufacturer,
  avg(price)
FROM products
GROUP BY manufacturer; --7


SELECT
  manufacturer,
  avg(price)
FROM products
GROUP BY manufacturer
HAVING avg(price) >= 120; --8


SELECT
  name,
  price
FROM products
ORDER BY price ASC
LIMIT 1
OFFSET 2; --9


INSERT INTO products VALUES (DEFAULT, 'Loudspeakers', 70, 2); --10


UPDATE products
SET name = 'Laser Printer'
WHERE code = 10; --11


UPDATE products
SET price = price * 0.9
WHERE manufacturer = (SELECT code
                      FROM manufacturers
                      WHERE name = 'Sony'); --12

UPDATE products
SET price = price * 0.9
WHERE price <= 120; --13

