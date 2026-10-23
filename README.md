
E-Commerce Sales Performance and Behavior Analysis (SQL):


Project Overview:

This project shows data analytics and SQL development skills by querying an e-commerce database to extract insights on revenue, customer value, and regional performance. It also includes database objects like Views and Stored Procedures to automate reporting.

Database Architecture:

The analysis is built on a 3-table setup containing:
• customers: Demographics and signup tracking.
• products: Pricing metrics and categories.
• orders: Transaction histories and order status logs.

Advanced Database Features (Inside 2_queries.sql)

The project uses advanced SQL techniques to solve business problems and optimize performance:
1. VIP Customer Identification: Uses JOINs and Aggregations to find the highest-spending users for loyalty rewards.
2. Category Performance Tracking: Tracks which product categories drive the highest revenue.
3. Database View (view_customer_order_details): A virtual table that combines customers, products, and orders into a master report for real-time tracking.
4. Stored Procedure (GetOrdersByCountry): A reusable, dynamic query tool that filters order data based on an input country name parameter.

Key Insights and Recommendations:

• Inventory Focus: Electronics dominate sales and yield the highest transaction value. Stock priorities should favor this department.
• Targeted Ad Spending: Variations in regional sales suggest shifting high-value ad campaigns toward top-tier purchasing locations.

How to Deploy and Run:

1. Execute 1_schema.sql in MySQL Workbench to create the tables and add the mock records.
2. Run 2_queries.sql to generate the analytical results, create the view, and compile the stored procedure.
