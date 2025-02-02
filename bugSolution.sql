--Improved query with explicit type conversion
SELECT * FROM employees WHERE CAST(department_id AS UNSIGNED) = 123 AND salary > 100000;

--Improved query with index optimization
CREATE INDEX idx_category_price ON products (category, price);
SELECT * FROM products WHERE category LIKE '%Electronics%' AND price > 1000;

--Improved query with index optimization
CREATE INDEX idx_order_date ON orders (order_date);
SELECT COUNT(*) FROM orders WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31';

--Preventing SQL injection
--Use parameterized queries or prepared statements instead of directly embedding user input into SQL queries.
--Example using parameterized query (the specific syntax depends on the database system):
PREPARE stmt FROM 'SELECT * FROM users WHERE username = ?';
SET @username = 'user_input';
EXECUTE stmt USING @username;
DEALLOCATE PREPARE stmt;