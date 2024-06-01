SELECT 
  t.table_ref, 
  t.description, 
  t.dialect
FROM 
  sdf.information_schema.tables t
JOIN 
  sdf.information_schema.columns c ON t.table_ref = c.table_ref
WHERE c.classifiers LIKE '%PII%'
GROUP BY 1,2,3;