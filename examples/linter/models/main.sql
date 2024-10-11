SELECT 
    DISTINCT('Hello World!') as message,
    num / 100.0 AS "num%", 
    num as "NUM", 
    my_table.cool_col,
    NULL as null_col,
    true AS true_col
from my_table
WHERE bool_col = 'TRUE'
Order By 1, cool_col
;