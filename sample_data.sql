USE OnlineRetailDB;

-- catregories of products

insert into categories (name, description) values
('Electronics', 'smartphones, laptops and gadgets'),
('cloths', 'mens and womens clothes'),
('food products', 'eatables items'),
('furniture', 'furniture items'),
('stationary', 'stationary items');

select* from categories;


-- customer data

insert into customers (name, email, phone, address, gender) values
('Ram Kumar', 'ram12@example.com', '1234567890', '67 adarsh nagar, Bijnor', 'Male'),
('Dikshant Singh', 'dikshant070602@example.com', '9500000000', 'sector 12, noida', 'Male'),
('Akansha', 'akansha72@example.com', '1134578900', 'sector 40, gurugram', 'Female'),
('shrishti', 'shrishti89example.com', '1112223334', 'adarsh nagar, Bijnor', 'Female'),
('Ravi', 'rav12@example.com', '5566447789', 'sector 12, Noida', 'Male'),
('Aayushi', 'aaayushi@example.com', '9876543210', 'sector 62, greater noida', 'Female'),
('Sonam Chikara', 'chikara@example.com', '8765432109', 'sector 32, noida', 'Female'),
('Kartikey', 'kartikey@example.com', '7654321098', 'sohna, gurugram', 'Male'),
('Bob', 'bboobb@example.com', '6543210987', 'ram vihar colony, Bijnor', 'Male'),
('Alice', 'alice2@example.com', '4321098765', 'adarsh nagar, meerut', 'Male'),
('Claudia', 'claudi@example.com', '3210987654', 'anand vihar, meerut', 'Female'),
('Dhruv', 'dhruv@example.com', '9845760000', 'sector 12, greater noida', 'Male');

select* from customers;


-- products data

insert into products (name, description, price, category_id) values
('iPhone 14', 'Apple smartphone 128GB', 55000.00, 1),
('Dell XPS 13', '13-inch laptop with 16GB RAM', 40000.00, 1),
('Bluetooth Headphones', 'Noise cancelling wireless headphones', 4000.99, 1),
('Cotton T-Shirt', 'Men cotton T-shirt size M', 499.99, 2),
('Chair', 'plastic chair', 700.50, 4),
('table', 'wooden table', 3000.00, 4),
('jam', 'bread jam', 250.00, 3),
('notebook', 'hindi notebook', 50.00, 5),
('Trouser', 'men trouser', 999.00, 2),
('Python Book', 'Advance python book', 2508.00, 5),
('Gaming Chair', 'Most comfortable chair for all purpose', 5400.00, 4),
('Wired earphone', 'Best sound quality wired earphone', 499.00, 1);

select* from products;


-- orders data 

INSERT INTO Orders (customer_id, order_date, status, total_amount) VALUES
(1, '2024-07-01', 'Completed', 55000.00),
(2, '2024-07-02', 'Completed', 40499.99),
(3, '2024-07-03', 'Pending', 499.99),
(4, '2024-07-04', 'Completed', 6250.50),
(5, '2024-07-05', 'Cancelled', 0.00),
(6, '2024-07-06', 'Completed', 2508.00),
(7, '2024-07-06', 'Completed', 6200.00),
(8, '2024-07-07', 'Completed', 4000.99);

select* from orders;

-- items ordered in the order table

INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 55000.00),           -- iPhone 14
(2, 2, 1, 40000.00),           -- Dell XPS 13
(2, 4, 1, 499.99),             -- Cotton T-Shirt
(3, 4, 1, 499.99),             -- Cotton T-Shirt
(4, 5, 2, 700.50),             -- 2 Plastic Chairs
(4, 6, 1, 3000.00),            -- Table
(6, 10, 1, 2508.00),           -- Python Book
(7, 11, 1, 5400.00),           -- Gaming Chair
(7, 8, 1, 50.00),              -- Notebook
(7, 7, 3, 750.00),             -- Jam x3 
(8, 3, 1, 4000.99);            -- Bluetooth Headphones

select* from order_items;

update order_items 
set price = 1401.00
where order_item_id = 5; 


-- payments data

INSERT INTO Payments (order_id, payment_method, payment_date, amount, status) VALUES
(1, 'Credit Card', '2024-07-01', 55000.00, 'Completed'),
(2, 'UPI', '2024-07-02', 40499.99, 'Completed'),
(3, 'Cash on Delivery', NULL, 0.00, 'Pending'),
(4, 'Debit Card', '2024-07-04', 6250.50, 'Completed'),
(5, NULL, NULL, 0.00, 'Cancelled'),
(6, 'Net Banking', '2024-07-06', 2508.00, 'Completed'),
(7, 'Credit Card', '2024-07-06', 7250.00, 'Completed'),
(8, 'UPI', '2024-07-07', 4000.99, 'Completed');

select* from payments;


