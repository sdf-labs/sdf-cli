SELECT 
  o.customer_id,
  c.customer_name,
  COUNT(o.order_id) AS total_orders,
  SUM(o.quantity * p.price) AS total_spent
FROM 
  orders o
JOIN 
  customers c ON o.customer_id = c.customer_id
JOIN 
  products p ON o.product_id = p.product_id
GROUP BY 
  o.customer_id, c.customer_name;
