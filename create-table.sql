-- customers 
-- 使用关键字“CREATE TABLE” + 表名
CREATE TABLE customers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  created_at DATETIME DEFAULT now()
);