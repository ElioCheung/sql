-- 子查询语句
SELECT first_name,
  last_name,
  hourly_pay
FROM employees
WHERE hourly_pay > (
    SELECT AVG(hourly_pay)
    FROM employees
  );
-- +------------+-----------+------------+
-- | first_name | last_name | hourly_pay |
-- +------------+-----------+------------+
-- | Eugene     | Krabs     |      25.50 |
-- | Cheung     | Elio      |      50.25 |
-- +------------+-----------+------------+