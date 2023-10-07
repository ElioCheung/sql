-- INDEX 索引
-- 减少搜索的时间
--
-- SHOW INDEXES
SHOW INDEXES
FROM customers;
-- CREATE
CREATE INDEX last_name_idx ON customers(last_name);
-- CREATE INDEXES
CREATE INDEX last_name_first_name_idx ON customers(last_name, first_name);
-- DELETE INDEX
ALTER TABLE customers DROP INDEX last_name_idx;