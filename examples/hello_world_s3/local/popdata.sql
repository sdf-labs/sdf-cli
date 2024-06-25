create table popdata with ( 
  format='csv',
  skip_header_line_count=1, -- skip the first line of the file
  location='local/pop.csv'
);
