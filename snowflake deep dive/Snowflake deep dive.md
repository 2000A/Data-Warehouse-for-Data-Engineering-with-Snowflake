STAGE & COPY

Loading Data: 
- BULK LOADING
1. Most frequent method
2. Uses warehouses
3. Loading from stages
4. COPY command
5. Tranformation possible 

-CONTINUOUS LOADING
1. Designed to load small volumes of data.
2. Automatically once they are added to stages.
3. Lates results for nanalysis
4. Snowpipe (Serverless feature)

- Understanding Stages

External Stage
- External cloud provider
   S3
   Google Cloud Platform
   Microsoft Azure
- Database object created in Schema
- CREATE STAGE(url, access settings)
 Note: Additional costs may apply if region/platforms differs

Internal Stage
- Local Storage maintained by Snowflake.


Copy Options:
Way to load data onto target system using Copy command

COPY INTO <table_name>
FROM externalStage
FILES = ('<file_name>', '<file_name2>')
FILE_FORMAT = <file<format_name>
copyOptions
-----------------------------------lesson -4-----------------------
Performance Optimization
-> Usually snowflake does optimizes a lot from backend but we can also add few things 
to optimise our database.

Why performance optimization:
- Make queries run faster
- Save costs

Earliler Performance Optimization done on databases were(Which on snowflake we dont have to worry about:
- Add Indexes, primary keys,
- Create table partitions
- Analyze the query execution table plan
- Remove unnecessary full table scans


What is our job?
1. Assigning appropriate data types
2. Sizing virtual warehouses
3. Cluster keys

<img width="705" height="491" alt="Screenshot 2026-02-08 113342" src="https://github.com/user-attachments/assets/9ae913f7-2a70-4790-9d26-288950ef682b" />

1. Dedicated virtual warehouses of individual teams
<img width="756" height="517" alt="Screenshot 2026-02-08 113826" src="https://github.com/user-attachments/assets/11c64b50-327f-4394-88b7-60f7b9f7e923" />

Providing Dedicated virtual warehouses to different teams based on their processing
needs is one way of performnce optimization.

2. Scaling Up & Scaling Out
   Scaling Up:
   Increasing the size of virtual warehouse
   Say if compute heavy query takes long time to process on 10GB increasing the size
   to say 50GB helps faster query processing.

   Scaling Out :
   Insteading of increasing size we add hardware say on 10GB we add another 10GB 

<img width="731" height="343" alt="Screenshot 2026-02-08 120640" src="https://github.com/user-attachments/assets/dca3409b-2375-4b63-9173-2b71c2b4bed2" />


3. Caching
   1. Automatical process to speed up the queries
   2. If query is executed twice, results are cached and can be re-used
   3. Results are cached for 24hrs or until underlaying data has changed


4. Clustering in Snowflake






















