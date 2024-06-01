SELECT 
    t.table_ref
FROM 
    sdf.information_schema.tables t
JOIN 
    sdf.information_schema.columns c ON t.table_ref = c.table_ref
WHERE 
    c.classifiers LIKE '%PII%' AND t.schema_name = 'external'
GROUP BY t.table_ref;
