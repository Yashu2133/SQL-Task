-- Create order_items table
CREATE TABLE order_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Insert order_items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 2), 
(2, 2, 1), 
(2, 3, 1), 
(3, 4, 1);
