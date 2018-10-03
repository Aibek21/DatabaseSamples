SELECT *
FROM departments;


SELECT *
FROM employees;


ALTER TABLE employees
  ADD COLUMN max_salary INTEGER;


SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 130000;


SELECT *
FROM employees
WHERE department IS NULL;


SELECT *
FROM employees
WHERE salary IS DISTINCT FROM max_salary;


SELECT
  abs(-10.6),
  ceil(-10.6),
  floor(-10.6),
  round(-10.6),
  scale(-10.6),
  sign(-10.6),
  trunc(-10.6),
  random();


SELECT 'Hello' || ' World' || 12;


SELECT
  (name || ' has salary: ' || salary) AS "Text",
  char_length(name || ' has salary: ' || salary)
FROM employees;


SELECT format('INSERT INTO %I VALUES (%L)', 'locations', E'C:\\Program Files');


SELECT *
FROM employees
WHERE name LIKE '%O%';


SELECT *
FROM employees
WHERE name LIKE '%v_';


SELECT
  name,
  salary,
  CASE WHEN salary < 50000
    THEN 'Junior'
  WHEN salary < 140000
    THEN 'Middle'
  ELSE 'Senior'
  END
FROM employees;


SELECT
  salary,
  max_salary,
  COALESCE(salary, max_salary),
  NULLIF(salary, max_salary)
FROM employees;


INSERT INTO employees (name, salary, max_salary) VALUES ('Name1', NULL, 100000), ('Name2', 120000, NULL);


SELECT *
FROM departments d
WHERE EXISTS(SELECT *
             FROM employees
             WHERE department = D.id);


SELECT *
FROM departments d
WHERE id NOT IN (SELECT department
             FROM employees WHERE department IS NOT NULL);










