-- ADD referral_id column
ALTER TABLE customers
ADD referral_id INT;
-- UPDATE referral_id
UPDATE customers
SET referral_id = 1
WHERE id = 2;
-- 
SELECT a.id,
  CONCAT(a.first_name, " ", a.last_name) AS "customer",
  CONCAT(b.first_name, " ", b.last_name) AS "referred_by"
FROM customers AS a
  INNER JOIN customers AS b ON a.referral_id = b.id;
--   +----+---------------+---------------+
-- | id | customer      | referred_by   |
-- +----+---------------+---------------+
-- |  2 | Larry Lobster | Fred Fish     |
-- |  3 | Bubble Bass   | Larry Lobster |
-- |  4 | Poppy Puff    | Larry Lobster |
-- +----+---------------+---------------+
--
