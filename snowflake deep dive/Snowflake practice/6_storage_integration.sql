// Create connection to S3

CREATE OR REPLACE STORAGE INTEGRATION s3_init
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER = S3
    ENABLED = TRUE
    STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::454781577653:role/snowflake-s3-connection'
    STORAGE_ALLOWED_LOCATIONS = ('s3://snowflake-db-dimensional-modelling/instacart/')
    COMMENT = 'Creating connection to s3'

DESC INTEGRATION s3_init  

CREATE OR REPLACE TABLE OUR_FIRST_DB.PUBLIC.ORDERS_S3_INT(
    ORDER_ID VARCHAR(30),
    AMOUNT INT,
    PROFIT INT,
    QUANTITY INT,
    CATEGORY VARCHAR(30),
    SUBCATEGORY VARCHAR(30)
)

//CREATE FILE FORMAT OBJECT
CREATE OR REPLACE file format MANAGE_DB.file_formats.csv_fileformat
    type = csv
    field_delimiter = ','
    skip_header = 1
    null_if = ('NULL', 'null')
    empty_field_as_null = TRUE;

// Create stage object with integration object & file format object
CREATE OR REPLACE stage MANAGE_DB.external_stages.csv_folder
    URL = 's3://snowflake-db-dimensional-modelling/instacart/orders.csv'
    STORAGE_INTEGRATION = s3_init
    FILE_FORMAT = MANAGE_DB.file_formats.csv_fileformat

COPY INTO OUR_FIRST_DB.PUBLIC.ORDERS_S3_INT
    FROM @MANAGE_DB.external_stages.csv_folder;

