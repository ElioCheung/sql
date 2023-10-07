-- 虚拟表，会自动更新
-- CREATE
CREATE VIEW employee_attendance AS
SELECT first_name,
  last_name
FROM employees;
-- QUERY
SELECT *
FROM employee_attendance
ORDER BY last_name;
-- DELETE
DROP VIEW employee_attendance;