
E-Commerce Sales Performance and Behavior Analysis (SQL)


Project Overview:

This project shows data analytics skills by querying an e-commerce database to extract actionable insights on revenue, customer value, and regional performance.

Database Architecture:

The analysis is built on a 3-table setup containing:
• customers: Demographics and signup tracking.
• products: Pricing metrics and categories.
• orders: Transaction histories and order status logs.

Business Metrics Analyzed (Inside 2_queries.sql)

The project uses JOINs, CTEs, Window Functions, and Aggregations to answer these main questions:
1. VIP Customer Identification: Finds the top highest-spending users for loyalty program rewards.
2. Category Performance Tracking: Identifies which product categories drive the highest revenue.
3. Regional Average Order Value (AOV): Maps customer order values by country to assist marketing budget distribution.
4. Running Total Tracking: Monitors day-by-day revenue growth using advanced window functions.

Key Insights and Recommendations:

• Inventory Focus: Electronics dominate sales and yield the highest transaction value. Stock priorities should favor this department.
• Targeted Ad Spending: Variations in regional AOV suggest shifting high-value ad campaigns toward top-tier purchasing locations.

How to Deploy and Run:
1. Execute 1_schema.sql in MySQL Workbench to create the tables and add the mock records.
2. Run 2_queries.sql to generate analytical result tables.
