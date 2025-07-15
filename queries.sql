USE OnlineRetailDB;

-- Total number of orders
SELECT COUNT(*) AS total_orders 
FROM Orders;

-- Total number of unique customers
SELECT COUNT(DISTINCT customer_id) AS total_customers 
FROM Orders;

-- List of all orders with customer name and status
SELECT o.order_id, c.name AS customer_name, o.order_date, o.status, o.total_amount
FROM Orders o
left JOIN Customers c ON o.customer_id = c.customer_id
ORDER BY o.order_date DESC;

-- Total money from sales
SELECT ROUND(SUM(amount), 2) AS total_revenue
FROM Payments
WHERE status = 'Completed';

-- money collected per product with limit clause top3
SELECT p.name AS product_name, SUM(oi.quantity * oi.price) AS total_sales
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sales DESC
limit 3;

-- Top selling products by quantity
SELECT p.name AS product_name, SUM(oi.quantity) AS total_quantity_sold
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_quantity_sold DESC
LIMIT 5;


-- Category-wise sales summary
SELECT 
    cat.name AS category_name,
    ROUND(SUM(oi.quantity * oi.price), 2) AS total_sales
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories cat ON p.category_id = cat.category_id
GROUP BY cat.name
ORDER BY total_sales DESC;



