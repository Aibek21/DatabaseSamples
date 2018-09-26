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


SELECT DISTINCT ON (manufacturer) name
FROM products; --2


SELECT *
FROM products
LIMIT 3
OFFSET 2; --3


SELECT
  name,
  price
FROM products
WHERE price >= 200; --4


SELECT *
FROM products
WHERE manufacturer = (SELECT code
                      FROM manufacturers
                      WHERE name = 'Fujitsu'); --5

SELECT
  name,
  price
FROM products
WHERE price <= 110
ORDER BY price ASC, manufacturer DESC; --6


SELECT
  manufacturer,
  count(*)
FROM products
GROUP BY manufacturer; --7


DELETE FROM manufacturers
WHERE code IN (SELECT manufacturer
               FROM products
               GROUP BY manufacturer
               HAVING count(*) <= 1)
RETURNING *; --8


UPDATE products
SET price = price + 10
WHERE code = (SELECT code
              FROM products
              ORDER BY price DESC
              LIMIT 1
              OFFSET 2)
RETURNING name, price; --9


ALTER TABLE products
  ALTER COLUMN price SET DEFAULT 0; --10


INSERT INTO products VALUES (DEFAULT, 'Loudspeakers', DEFAULT, 2); --11

UPDATE products
SET price = 0.8 * price
WHERE manufacturer = (SELECT code
                      FROM manufacturers
                      WHERE name = 'Fujitsu'); --12


UPDATE products
SET price = 0.9 * price
WHERE price > 50 AND price < 200; --13















