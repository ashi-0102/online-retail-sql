-- Insert Customers
INSERT INTO Customers (name, email, phone, address, city, state) VALUES
('Aman Sharma', 'aman@example.com', '9876543210', 'MG Road', 'Delhi', 'Delhi'),
('Riya Gupta', 'riya@example.com', '9811122233', 'Civil Lines', 'Delhi', 'Delhi'),
('Suresh Mehta', 'suresh@example.com', '9998887776', 'Rajpur Road', 'Dehradun', 'UK'),
('Neha Singh', 'neha@example.com', '9988776655', 'Lavelle Road', 'Bangalore', 'Karnataka');

-- Insert Products
INSERT INTO Products (name, category, price, stock) VALUES
('Laptop', 'Electronics', 55000, 12),
('Headphones', 'Electronics', 1500, 50),
('Shoes', 'Fashion', 2300, 20),
('Smart Watch', 'Electronics', 3500, 18),
('Backpack', 'Accessories', 800, 30);

-- Insert Orders
INSERT INTO Orders (customer_id, status) VALUES
(1, 'Completed'),
(2, 'Completed'),
(3, 'Pending');

-- Insert Order Items
INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 55000),
(1, 2, 2, 1500),
(2, 3, 1, 2300),
(3, 5, 1, 800);

-- Insert Payments
INSERT INTO Payments (order_id, amount, payment_method) VALUES
(1, 58000, 'UPI'),
(2, 2300, 'Card');
