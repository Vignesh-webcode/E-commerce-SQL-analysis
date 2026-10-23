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
