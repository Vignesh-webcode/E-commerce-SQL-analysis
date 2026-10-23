-- 1. Create a fresh database
CREATE DATABASE IF NOT EXISTS ecommerce_portfolio;
USE ecommerce_portfolio;

-- 2. Create the Customers Table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    country VARCHAR(50),
    signup_date DATE
);

-- 3. Create the Products Table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- 4. Create the Orders Table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
-- Insert Mock Customers
INSERT INTO customers (first_name, last_name, country, signup_date) VALUES
('Amit', 'Sharma', 'India', '2026-01-05'),
('John', 'Doe', 'USA', '2026-01-12'),
('Sarah', 'Connor', 'UK', '2026-01-15'),
('Priya', 'Patel', 'India', '2026-01-20'),
('Carlos', 'Santana', 'Brazil', '2026-02-02');

-- Insert Mock Products
INSERT INTO products (product_name, category, price) VALUES
('Wireless Mouse', 'Electronics', 1500.00),
('Mechanical Keyboard', 'Electronics', 4500.00),
('Running Shoes', 'Apparel', 3200.00),
('Cotton T-Shirt', 'Apparel', 800.00),
('Coffee Mug', 'Home Decor', 450.00);

-- Insert Mock Orders (Jan & Feb 2026)
INSERT INTO orders (customer_id, product_id, order_date, quantity, status) VALUES
(1, 1, '2026-01-06', 1, 'Completed'),
(1, 4, '2026-01-10', 2, 'Completed'),
(2, 2, '2026-01-14', 1, 'Completed'),
(3, 3, '2026-01-16', 1, 'Cancelled'),
(4, 1, '2026-01-22', 2, 'Completed'),
(2, 5, '2026-01-25', 4, 'Completed'),
(5, 3, '2026-02-03', 1, 'Completed'),
(4, 2, '2026-02-10', 1, 'Completed'),
(1, 2, '2026-02-14', 1, 'Completed'),
(3, 4, '2026-02-18', 3, 'Completed');