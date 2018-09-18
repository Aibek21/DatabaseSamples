INSERT INTO departments VALUES
  (DEFAULT, 'IT'),
  (DEFAULT, 'R&D'),
  (DEFAULT, 'Management'),
  (DEFAULT, 'HR'),
  (DEFAULT, 'Marketing'),
  (DEFAULT, 'Purchasing'),
  (DEFAULT, 'Production');

INSERT INTO employees VALUES
  (DEFAULT, 'Bob', 100000, 10, now(), now()),
  (DEFAULT, 'John', 120000, 11, now(), now()),
  (DEFAULT, 'Sam', 150000, 12, now(), now()),
  (DEFAULT, 'John', 200000, 13, now(), now()),
  (DEFAULT, 'David', 130000, 10, now(), now()),
  (DEFAULT, 'Sally', 130000, 11, now(), now()),
  (DEFAULT, 'Bob', 120000, 15, now(), now()),
  (DEFAULT, 'Mark', 100000, 11, now(), now()),
  (DEFAULT, 'Steve', 170000, 16, now(), now());

SELECT *
FROM departments;


INSERT INTO employees VALUES
  (DEFAULT, 'Sam', 100000, 12, now(), now()),
  (DEFAULT, 'Sam', 100000, 12, now(), now()),
  (DEFAULT, 'Sam', 100000, 12, now(), now());


SELECT ALL *
FROM employees;


SELECT DISTINCT *
FROM employees;

SELECT DISTINCT ON (department, name) *
FROM employees;


SELECT *
FROM employees
WHERE salary > 110000 AND department = 11;

SELECT
  department,
  count(salary)
FROM employees
GROUP BY department;

SELECT
  department,
  count(*)
FROM employees
GROUP BY department
HAVING count(*) > 1;


SELECT *
FROM employees
WHERE salary > 150000
UNION SELECT *
      FROM employees
      WHERE salary < 170000;


SELECT *
FROM employees
WHERE salary > 150000
INTERSECT SELECT *
      FROM employees
      WHERE salary <= 170000;


SELECT *
FROM employees
WHERE salary > 150000
EXCEPT SELECT *
      FROM employees
      WHERE salary < 190000;



SELECT *
FROM employees
ORDER BY salary ASC, department DESC, id DESC;


INSERT INTO employees (name) VALUES ('Sam');

SELECT * FROM employees ORDER BY department ASC NULLS FIRST;


SELECT * FROM employees ORDER BY department LIMIT 3 OFFSET 5;