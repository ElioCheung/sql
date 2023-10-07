-- ADD COLUMN
ALTER TABLE employees
ADD COLUMN job VARCHAR(25)
AFTER hourly_pay;
-- UPDATE TABLE
UPDATE employees
SET job = "manager"
WHERE employee_id = 1;