CREATE DATABASE logitech;
USE logitech;
-- customers
CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    address TEXT NOT NULL
);

-- suppliers
CREATE TABLE suppliers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    contact VARCHAR(150)
);

-- categories
CREATE TABLE categories (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

-- products
CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sku VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(150) NOT NULL,
    unit_price NUMERIC(10,2) NOT NULL,
    category_id INT REFERENCES categories(id),
    supplier_id INT REFERENCES suppliers(id)
);

-- orders
CREATE TABLE orders (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    transaction_id VARCHAR(50) UNIQUE NOT NULL,
    order_date DATE NOT NULL,
    customer_id INT REFERENCES customers(id)
);

-- order_items
CREATE TABLE order_items (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(id),
    product_id INT REFERENCES products(id),
    quantity INT NOT NULL
);

-- Supplier analysis

SELECT s.name,
       SUM(oi.quantity) as total_items,
       SUM(oi.quantity * p.unit_price) as total_inventory_value
FROM suppliers s
JOIN products p ON p.supplier_id = s.id
JOIN order_items oi ON oi.product_id = p.id
GROUP BY s.name
ORDER BY total_items DESC;

-- Customer purchases history

SELECT o.transaction_id,
       o.order_date,
       p.name,
       oi.quantity,
       (oi.quantity * p.unit_price) as total_spent
FROM orders o
JOIN order_items oi ON oi.order_id = o.id
JOIN products p ON p.id = oi.product_id
JOIN customers c ON c.id = o.customer_id
WHERE c.email = 'customer@email.com'
ORDER BY o.order_date DESC;

-- Top products category

SELECT p.name,
       SUM(oi.quantity) as total_sold,
       SUM(oi.quantity * p.unit_price) as revenue
FROM products p
JOIN categories c ON c.id = p.category_id
JOIN order_items oi ON oi.product_id = p.id
WHERE c.name = 'Electronics'
GROUP BY p.name
ORDER BY revenue DESC;
