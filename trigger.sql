-- Triger: When a event happens, do something.
-- ex: INSERT/DELETE/UPDATE, checks data, handles errors, auditing tables
-- 准备工作
ALTER TABLE employees
ADD COLUMN salary DECIMAL(10, 2) AFTER hourly_pay;

UPDATE employees
SET
  salary = hourly_pay * 2080;

-- CREATE Trigger with UPDATE
CREATE TRIGGER before_hourly_pay_update BEFORE
UPDATE ON employees FOR EACH ROW
SET
  NEW.salary = (NEW.hourly_pay * 2080);

-- Triggers List
SHOW TRIGGERS;

-- Trigger 
UPDATE employees
SET
  hourly_pay = 50
WHERE
  employee_id = 1;

-- RESULT:
-- +-------------+------------+-----------+------------+-----------+---------------+------------+
-- | employee_id | first_name | last_name | hourly_pay | salary    | job           | hire_date  |
-- +-------------+------------+-----------+------------+-----------+---------------+------------+
-- |           1 | Eugene     | Krabs     |      50.00 | 104000.00 | manager       | 2023-01-02 |
-- |           2 | Squidward  | Tentacles |      15.00 |      NULL | cashier       | 2023-01-03 |
-- |           4 | Patrick    | Star      |      12.50 |      NULL | cook          | 2023-02-01 |
-- |           5 | Sandy      | Cheeks    |      17.50 |      NULL | asst. manager | 2023-03-01 |
-- |           6 | Cheung     | Elio      |      50.25 |      NULL | CTO           | 2023-09-28 |
-- +-------------+------------+-----------+------------+-----------+---------------+------------+
-- CREATE Trigger with INSERT
CREATE TRIGGER before_hourly_pay_insert BEFORE INSERT ON employees FOR EACH ROW
SET
  NEW.salary = (NEW.hourly_pay * 2080);

-- CREATE Trigger with DELETE
CREATE TABLE
  expenses (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    total DECIMAL(10, 2)
  );

CREATE TRIGGER after_salary_delete AFTER DELETE ON employees FOR EACH ROW
UPDATE expenses
SET
  toatl = total - OLD.salary
WHERE
  name = "salaries";