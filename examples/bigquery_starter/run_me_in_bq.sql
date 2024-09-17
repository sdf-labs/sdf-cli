CREATE SCHEMA IF NOT EXISTS `sdf_ecommerce_example`;

-- Create customers table
CREATE OR REPLACE TABLE `sdf_ecommerce_example.customers` (
  customer_id INT64,
  customer_name STRING,
  email STRING,
  signup_date DATE
);

-- Insert sample data into customers
INSERT INTO `sdf_ecommerce_example.customers` (customer_id, customer_name, email, signup_date)
VALUES
  (1, 'John Doe', 'johndoe@example.com', '2023-01-15'),
  (2, 'Jane Smith', 'janesmith@example.com', '2023-02-10'),
  (3, 'Sam Johnson', 'samj@example.com', '2023-03-05');

-- Create products table
CREATE OR REPLACE TABLE `sdf_ecommerce_example.products` (
  product_id INT64,
  product_name STRING,
  price FLOAT64,
  category STRING
);

-- Insert sample data into products
INSERT INTO `sdf_ecommerce_example.products` (product_id, product_name, price, category)
VALUES
  (1, 'Laptop', 999.99, 'Electronics'),
  (2, 'Headphones', 199.99, 'Electronics'),
  (3, 'Coffee Maker', 89.99, 'Appliances');

-- Create orders table
CREATE OR REPLACE TABLE `sdf_ecommerce_example.orders` (
  order_id INT64,
  customer_id INT64,
  product_id INT64,
  order_date DATE,
  quantity INT64
);

-- Insert sample data into orders
INSERT INTO `sdf_ecommerce_example.orders` (order_id, customer_id, product_id, order_date, quantity)
VALUES
  (1, 1, 1, '2023-06-15', 1),
  (2, 2, 3, '2023-07-01', 2),
  (3, 3, 2, '2023-08-03', 1);
