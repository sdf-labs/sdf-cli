select 
    DISTINCT('Hello World!') AS message,
    num / 100.0 AS "num%", 
    num AS "NUM", 
    my_table.cool_col
FROM my_table
WHERE bool_col = 'TRUE'
ORDER BY 1, cool_col
; 