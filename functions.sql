-- COUNT
-- 用法： COUNT(表字段)
-- 使用“AS”，进行重命名
SELECT COUNT(amount) AS count
FROM transactions
WHERE customer_id IS NOT NULL;
-- +---------------+
-- | count |
-- +---------------+
-- |     3 |
-- +---------------+
--
-- MAX
SELECT MAX(amount) as maximum
FROM transactions;
-- +---------+
-- | maximum |
-- +---------+
-- |    7.32 |
-- +---------+
--
-- MIN
SELECT MIN(amount) AS minimun
FROM transactions;
-- +---------+
-- | minimun |
-- +---------+
-- |    2.89 |
-- +---------+
--
-- AVG
SELECT AVG(amount) AS average
FROM transactions;
-- +----------+
-- | average  |
-- +----------+
-- | 4.745000 |
-- +----------+
--
-- SUM
SELECT SUM(amount) AS sum
FROM transactions;
-- +-------+
-- | sum   |
-- +-------+
-- | 18.98 |
-- +-------+
--
-- CONCAT
SELECT CONCAT(first_name, " ", last_name) AS full_name
FROM employees;
-- +--------------------+
-- | full_name          |
-- +--------------------+
-- | Eugene Krabs        |
-- | Squidward Tentacles |
-- | Patrick Star        |
-- | Sandy Cheeks        |
-- | Cheung Elio         |
-- +--------------------+