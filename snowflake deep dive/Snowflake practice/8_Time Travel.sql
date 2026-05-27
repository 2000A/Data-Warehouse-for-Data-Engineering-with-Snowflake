// Setting up table

CREATE OR REPLACE TABLE OUR_FIRST_DB.public.test(
    id int,
    first_name string,
    last_name string,
    email string,
    gender string,
    job string,
    phone string
)

CREATE OR REPLACE FILE FORMAT MANAGE_DB.file_formats.csv_file
    type = csv
    field_delimiter = ','
    skip_header = 1

CREATE OR REPLACE STAGE MANAGE_DB.external_stage.time_travel_stage
  URL = 's3://data-snowflake-fundamentals/time-travel/'
  file_format = MANAGE_DB.file_formats.csv_file;

LIST @MANAGE_DB.external_stages.time_travel_stage

COPY INTO OUR_FIRST_DB.public.test
from @MANAGE_DB.external_stages.time_travel_stage
files = ('customers.csv')


SELECT * FROM OUR_FIRST_DB.public.test

// Use case: Update data (by mistake)

UPDATE OUR_FIRST_DB.public.test
SET FIRST_NAME = 'Joyen'

// // // Using time travel: Method 1 - 2 minutes back
SELECT * from OUR_FIRST_DB.public.test at (OFFSET => -60*1.5)


// // // Using time travel: Method 2 - before timestamp
SELECT * FROM  OUR_FIRST_DB.public.test befor( timestamp => '2021-04-15 17:47:50.581'::timestamp)

--Setting up table
CREATE OR REPLACE TABLE OUR_FIRST_DB.public.test (
    id int,
    first_name string,
    last_name string,
    email string,
  gender string,
  job string,
  phone string
);






