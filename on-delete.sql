-- ON DELETE SET NULL: When a foreign key is deleted, replace foreign key with NULL
-- STEP 1: 声明
ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES customers(id) ON DELETE
SET NULL;
-- STEP 2: DELETE customer
DELETE FROM customers
WHERE id = 1;
-- STEP 3: QUERY
SELECT *
FROM transactions;
-- +----+--------+-------------+---------------------+
-- | id | amount | customer_id | order_date          |
-- +----+--------+-------------+---------------------+
-- |  1 |   4.99 |           3 | 2023-01-01 00:00:00 |
-- |  2 |   2.89 |           2 | 2023-01-01 00:00:00 |
-- |  3 |   3.78 |        NULL | 2023-01-02 00:00:00 | 删除id为1的客户后，交易表中的关联的用户id置为NULL
-- |  4 |   7.32 |        NULL | 2023-01-02 00:00:00 |
-- |  5 |   2.49 |           4 | 2023-01-03 00:00:00 |
-- |  6 |   5.48 |        NULL | 2023-01-03 00:00:00 |
-- +----+--------+-------------+---------------------+
--
-- DELETE CONSTRAINT
ALTER TABLE transactions DROP CONSTRAINT fk_customer_id;
-- ON DELETE CASCADE: When a foreign key is deleted, delete row.
ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES customers(id) ON DELETE CASCADE;
--
-- 区别：ON DELETE SET NULL，仅当外键关联的数据删除时，置为NULL；而 ON DELETE CASCADE，会将整行记录删除