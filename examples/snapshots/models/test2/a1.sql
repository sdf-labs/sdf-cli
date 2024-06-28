select * from values 
  (1, CAST('Jack' AS VARCHAR), '2022-01-01'),
  (2, 'Bob', '2022-01-01'),
  (3, 'Jane', '2022-01-01')
as T(id, name, "event time")
