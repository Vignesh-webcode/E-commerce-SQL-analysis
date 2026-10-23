USE ecommerce_portfolio;

-- ========================================================
-- SECTION 1: DATA VERIFICATION CHECKS
-- ========================================================
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;

-- ========================================================
-- SECTION 2: BUSINESS INSIGHT QUERIES
-- ========================================================

-- Problem 1: Who are our top-spending customers?
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(o.quantity * p.price) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Completed'
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC;

-- Problem 2: Which product categories are driving revenue?
SELECT 
    p.category,
    COUNT(o.order_id) AS total_orders_placed,
    SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Completed'
GROUP BY p.category
ORDER BY total_revenue DESC;

-- View (The Automated Report) is a saved Virtual Table, View automatically creates a clean, real-time master table combining customer names, orders, and total amounts.
USE ecommerce_portfolio;

CREATE OR REPLACE VIEW view_customer_order_details AS
SELECT 
    o.order_id,
    o.order_date,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.country,
    p.product_name,
    p.category,
    o.quantity,
    (o.quantity * p.price) AS total_amount,
    o.status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;


-- To test

SELECT * FROM view_customer_order_details WHERE status = 'Completed';

-- Stored Procedure (The Dynamic Tool), Stored Procedure is a piece of code you can save and run over and over again using parameters

USE ecommerce_portfolio;

DELIMITER //

CREATE PROCEDURE GetOrdersByCountry(IN input_country VARCHAR(50))
BEGIN
    SELECT * 
    FROM view_customer_order_details
    WHERE country = input_country;
END //

DELIMITER ;

-- To test

CALL GetOrdersByCountry('India');
CALL GetOrdersByCountry('USA');
