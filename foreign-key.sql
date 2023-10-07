-- transactions
-- 使用 “ FOREIGN KEY(表字段) REFERENCES 外表名(外表字段)”
CREATE TABLE IF NOT EXISTS transactions (
  id INT PRIMARY KEY AUTO_INCREMENT,
  amount DECIMAL(5, 2),
  customer_id INT,
  FOREIGN KEY(customer_id) REFERENCES customers(id) -- use FOREIGN KEY linked to other table
);