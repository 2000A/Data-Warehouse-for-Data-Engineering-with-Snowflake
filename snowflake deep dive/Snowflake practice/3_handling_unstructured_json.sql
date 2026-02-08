CREATE OR REPLACE stage MANAGE_DB.EXTERNAL_STAGES.JSONSTAGE
    url = 's3://bucketsnowflake-jsondemo';

CREATE OR REPLACE file format MANAGE_DB.FILE_FORMATS.JSONFORMAT
    TYPE = JSON

//Creating new database to store JSON data
CREATE DATABASE OUR_FIRST_DB;

CREATE OR REPLACE table OUR_FIRST_DB.PUBLIC.JSON_RAW(
    raw_file variant);

COPY INTO OUR_FIRST_DB.PUBLIC.JSON_RAW
    FROM @MANAGE_DB.EXTERNAL_STAGES.JSONSTAGE
    file_format = MANAGE_DB.FILE_FORMATS.JSONFORMAT
    files = ('HR_data.json');

SELECT * FROM OUR_FIRST_DB.PUBLIC.JSON_RAW;

SELECT RAW_FILE:city, RAW_FILE:first_name FROM OUR_FIRST_DB.PUBLIC.JSON_RAW;
//OR
SELECT $1:city City, $1:first_name::string FirstName FROM OUR_FIRST_DB.PUBLIC.JSON_RAW;


SELECT 
    RAW_FILE:id::int as id,
    RAW_FILE:first_name::string as first_name,
    RAW_FILE:last_name::string as last_name,
    RAW_FILE:gender::string as gender,
FROM OUR_FIRST_DB.PUBLIC.JSON_RAW

// Handling nested data
SELECT RAW_FILE:job.salary as salary, RAW_FILE:job.title as title FROM OUR_FIRST_DB.PUBLIC.JSON_RAW;

// Handling array 
SELECT 
    RAW_FILE:prev_company[0]::STRING as prev_company
FROM OUR_FIRST_DB.PUBLIC.JSON_RAW


SELECT 
    RAW_FILE:spoken_languages as spoken_languages
FROM OUR_FIRST_DB.PUBLIC.JSON_RAW


CREATE OR REPLACE TABLE Languages AS
select
    RAW_FILE:first_name::STRING first_name,
    f.value:language::STRING language,
    f.value:level::STRING level,
from OUR_FIRST_DB.PUBLIC.JSON_RAW, table(flatten(RAW_FILE:spoken_languages)) f

SELECT * FROM Languages