-- 1. Get unique customers who placed orders in the last 30 days
SELECT DISTINCT c.*
FROM customers c
JOIN orders o ON c.id = o.customer_id
WHERE o.order_date >= CURDATE() - INTERVAL 30 DAY;


-- 2. Sum total order amounts per customer
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.id;


--  3.Update the price of Product C (Sunscreen)
UPDATE products
SET price = 45.00
WHERE name = 'Sunscreen';


-- 4. Add a discount column to products
ALTER TABLE products
ADD COLUMN discount DECIMAL(5,2);


-- 5. Retrieve the top 3 products with the highest price:
SELECT *
FROM products
ORDER BY price DESC
LIMIT 3;


--  6.Show customers who ordered Product A (Facewash)
SELECT DISTINCT c.name
FROM customers c
JOIN orders o ON c.id = o.customer_id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
WHERE p.name = 'Facewash';


-- 7. Show customer name and order date for every order
SELECT c.name, o.order_date
FROM customers c
JOIN orders o ON c.id = o.customer_id;


-- 8. Show orders where total is over 150
SELECT *
FROM orders
WHERE total_amount > 150.00;


--  9. Normalize the database by creating a separate table for order items and 
--      updating the orders table to reference the order_items table:
CREATE TABLE order_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);


-- 10. Get average order total across all orders
SELECT AVG(total_amount) AS average_order_value
FROM orders;
