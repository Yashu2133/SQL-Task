-- Create orders table
CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Insert orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2025-04-25', 430.00),
(2, '2025-04-20', 290.00),
(3, '2025-04-16', 90.00);