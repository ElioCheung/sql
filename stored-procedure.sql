-- CREATE
DELIMITER // 
CREATE PROCEDURE get_customers() BEGIN
SELECT *
FROM customers;
END // 
DELIMITER;
--
DELIMITER $$ 
CREATE PROCEDURE find_customer(IN user_id INT) 
BEGIN
  SELECT *
  FROM customers
  WHERE id = user_id;
END $$ 
DELIMITER;
-- USE
CALL get_customers();
-- DROP
DROP PROCEDURE get_customers();