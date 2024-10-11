SELECT 
  customer_id,
  customer_name,
  total_orders,
  total_spent
FROM 
  aggregate_orders
WHERE 
  total_spent > 100
ORDER BY 
  total_spent DESC;