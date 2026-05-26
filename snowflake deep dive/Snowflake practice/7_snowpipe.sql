// Create table first
Create OR REPLACE TABLE OUR_FIRST_DB.PUBLIC.employees (
  id INT,
  frist_name STRING,
  last_name STRING,
  email STRING,
  location STRING,
  department STRING
)

// Create file format object
CREATE OR REPLACE file format MANAGE_DB.file_formats.csv_fileformat
    type = csv
    field_delimeter = ','
    skip_header = 1
    null_if = ('NULL','null')
    empty_field_as_null = TRUE;

// Create stage object with integration object & file format object
CREATE OR REPLACE stage MANAGAE_DB.external_stages.csv_folder
    URL = 's3://snowflakes3bucket123/csv/snowpipe'
    STORATE_INTEGRATION = s3_init
    FILE_FORMAT = MANAGE_DB.file_formats.csv_fileformat

// Create stage object with integration object & file format object
LIST @MANAGE_DB.external_stages.csv_folder

// Create schema to keep things organized
CREATE OR REPLACE SCHEMA 
