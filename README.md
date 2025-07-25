 ## 📋 E-Commerce Database
This project contains SQL scripts to create and manage a simple E-commerce database which  includes the tables of

1. Customers
2. Orders
3. Products
4. Order Items (Order Details)

---

## 📦 Tools Used

- **MySQL**
- **MySQL Workbench**

---


##  🗂️ Table Structure

1.Customers

| Field   | Type             | Description                       |
|---------|------------------|-----------------------------------|
| id      | INT (PK, AI)     | Unique ID for each customer       |
| name    | VARCHAR(50)      | Customer's full name              |
| email   | VARCHAR(50)      | Customer's email address          |
| address | TEXT             | Customer's shipping address       |

---

2.Orders

| Field        | Type             | Description                               |
|--------------|------------------|-------------------------------------------|
| id           | INT (PK, AI)     | Unique ID for each order                  |
| customer_id  | INT (FK)         | Refers to `customers(id)`                 |
| order_date   | DATE             | Date of the order                         |
| total_amount | DECIMAL(10,2)    | Total price for the order                 |

---

3.Products

| Field       | Type             | Description                             |
|-------------|------------------|-----------------------------------------|
| id          | INT (PK, AI)     | Unique ID for each product              |
| name        | VARCHAR(50)      | Product name                            |
| price       | DECIMAL(10,2)    | Product price                           |
| description | TEXT             | Description of the product              |

---

4.Order_items

| Field      | Type         | Description                            |
|------------|--------------|----------------------------------------|
| id         | INT (PK, AI) | Unique ID for each item in an order    |
| order_id   | INT (FK)     | Refers to `orders(id)`                 |
| product_id | INT (FK)     | Refers to `products(id)`               |
| quantity   | INT          | Number of units ordered                |

---

## 📦 Setup Instructions

1. Open **MySQL Workbench** or your SQL GUI
2. Run the script in the following order:
   - Create database and tables
   - Insert sample data
   - Run queries and tasks

---



