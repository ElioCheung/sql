-- use AND
SELECT *
FROM employees
WHERE hire_date <= "2023-02-01"
  AND job = "cook";
-- use OR
SELECT *
FROM employees
WHERE job = "cook"
  OR job = "cashier";
-- use NOT
SELECT *
FROM employees
WHERE NOT job = "manager"
  AND NOT job = "CTO";
-- use BETWEEN
SELECT *
FROM employees
WHERE hire_date BETWEEN "2023-02-01" AND "2023-02-28";
-- use IN
SELECT *
FROM employees
WHERE job IN ("cook", "manager");