select * from values 
  (1, CAST('Jacob' AS VARCHAR), 10, '2022-01-02'),
  (3, 'Mary Jane', 20, '2022-01-01'),
  (44, 'Cloe', 30, '2022-01-02')
as T(id, name, age, "event time")
