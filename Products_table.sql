-- Create products table
CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  price DECIMAL(10,2),
  description TEXT
);

-- Insert products
INSERT INTO products (name, price, description) VALUES
('Facewash', 80.00, 'For clearing the pores'),
('Moisturizer', 100.00, 'To avoid the dehydration in skins'),
('Sunscreen', 150.00, 'Protects the skin from tanning'),
('Serum', 150.00, 'Helps to get a glowing skin');