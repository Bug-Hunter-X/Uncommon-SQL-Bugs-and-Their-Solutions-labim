SELECT * FROM employees WHERE department_id = '123' AND salary > 100000; -- This query will return unexpected results if the department_id is not an integer.

SELECT * FROM products WHERE category LIKE '%Electronics%' AND price > 1000;
-- The above SQL query can be slow if you have a large number of products, especially if the category column is not indexed.

SELECT COUNT(*) FROM orders WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31';
-- This is a very common type of query and it is important to make sure that the order_date column is indexed properly. Otherwise, the query may perform slowly.

--SQL injection vulnerability example
SELECT * FROM users WHERE username = '