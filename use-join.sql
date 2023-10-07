-- DEMO INNER JOIN
SELECT *
FROM transactions
  INNER JOIN customers ON transactions.customer_id = customers.id;
--   +----+--------+-------------+----+------------+-----------+---------------------+
-- | id | amount | customer_id | id | first_name | last_name | created_at          |
-- +----+--------+-------------+----+------------+-----------+---------------------+
-- |  1 |   4.99 |           3 |  3 | Bubble     | Bass      | 2023-10-01 14:02:36 |
-- |  2 |   2.89 |           2 |  2 | Larry      | Lobster   | 2023-10-01 14:02:36 |
-- |  3 |   3.78 |           1 |  1 | Fred       | Fish      | 2023-10-01 14:02:36 |
-- +----+--------+-------------+----+------------+-----------+---------------------+
-- DEMO LEFT JOIN
SELECT *
FROM transactions
  LEFT JOIN customers ON transactions.customer_id = customers.id;
--   +----+--------+-------------+------+------------+-----------+---------------------+
-- | id | amount | customer_id | id   | first_name | last_name | created_at          |
-- +----+--------+-------------+------+------------+-----------+---------------------+
-- |  1 |   4.99 |           3 |    3 | Bubble     | Bass      | 2023-10-01 14:02:36 |
-- |  2 |   2.89 |           2 |    2 | Larry      | Lobster   | 2023-10-01 14:02:36 |
-- |  3 |   3.78 |           1 |    1 | Fred       | Fish      | 2023-10-01 14:02:36 |
-- |  4 |   7.32 |        NULL | NULL | NULL       | NULL      | NULL                |
-- +----+--------+-------------+------+------------+-----------+---------------------+
-- DEMO RIGHT JOIN
SELECT *
FROM transactions
  RIGHT JOIN customers ON transactions.customer_id = customers.id;
-- +------+--------+-------------+----+------------+-----------+---------------------+
-- | id   | amount | customer_id | id | first_name | last_name | created_at          |
-- +------+--------+-------------+----+------------+-----------+---------------------+
-- |    3 |   3.78 |           1 |  1 | Fred       | Fish      | 2023-10-01 14:02:36 |
-- |    2 |   2.89 |           2 |  2 | Larry      | Lobster   | 2023-10-01 14:02:36 |
-- |    1 |   4.99 |           3 |  3 | Bubble     | Bass      | 2023-10-01 14:02:36 |
-- | NULL |   NULL |        NULL |  4 | Poppy      | Puff      | 2023-10-05 12:10:43 |
-- +------+--------+-------------+----+------------+-----------+---------------------+
