-- Create the database
CREATE DATABASE ecommerce;
USE ecommerce;

-- Create customers table
CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50),
  address VARCHAR(50)
);

-- Insert customers
INSERT INTO customers (name, email, address) VALUES
('vaishak', 'murali@gmail.com', '12 Pollachi'),
('raswant', 'perumal@gmail.com', '36 Udumalpettai'),
('ragunath', 'berry@gmail.com', '69 Ganapathy');