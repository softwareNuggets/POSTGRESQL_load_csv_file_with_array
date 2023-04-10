---- https://github.com/softwareNuggets/
---- POSTGRESQL_load_csv_file_with_array


--drop table csv_data
--truncate table csv_data
CREATE TABLE csv_data (
  last_name 	varchar(30),
  phone 		varchar(20),
  flag_color 	text ARRAY
);



COPY csv_data 
	FROM '/temp/file.csv' 
	WITH (FORMAT CSV, 
		  DELIMITER ',', 
		  QUOTE '"', 
		  ESCAPE '\');


select *
from csv_data

