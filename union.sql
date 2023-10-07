-- 结合两个或多个选择语句的结果，注意：列数保持一致
SELECT first_name,
  last_name
FROM employees
UNION
SELECT first_name,
  last_name
FROM customers;
-- UNION ALL 属于重复项