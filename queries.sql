-- 1. Top 5 lowest stock products
SELECT name, stock
FROM Products
ORDER BY stock ASC
LIMIT 5;

-- 2. Total revenue
SELECT SUM(amount) AS total_revenue
FROM Payments;

-- 3. Customer-wise total spending
SELECT c.name, SUM(p.amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payments p ON o.order_id = p.order_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;

-- 4. Order details with items
SELECT o.order_id, c.name, p.name AS product_name, oi.quantity, oi.price
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id;

-- 5. Pending orders list
SELECT order_id, customer_id, status
FROM Orders
WHERE status = 'Pending';
