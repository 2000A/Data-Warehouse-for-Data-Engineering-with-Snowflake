# Data-Warehouse-for-Data-Engineering-with-Snowflake
Data Warehouse Concepts, SnowflakeDB, Dimensional Modeling, Slowly Changing Dimension, ETL, Snowflake Deep-Dive

![DataEngineering](https://github.com/user-attachments/assets/f84cb37c-63d6-4780-a509-d9a52dfcaf8c)


### Generation: Data can be generated from 
            - Web Sites
            - Sensors
            - Forms/Feedback
            - Analytics

#### Ingestion: 
Fetching data from multiple sources for ex. If data is realtime we can use Kafka.

#### Storage: Storing all the data that you fetched from multiple sources like amazon S3 I've used.

#### Transformation: Based on business logic or other requirments, doing a transformation.

*Undercurrents: are also very important course for data engineering life cycle.*
*Security* : Data should be secure as its most important 

*Data Management* : As Data Engineer one can create say data dictionary like which data is where what it is about so others can easily understand.

*DataOps* : Similar to DevOps say if we change tranformation logic then it should reflect to the entire system

*Data architechure*: Choosing the right tools to do the work

*Orchestration*: Order of execution is called orchestration like after ingestion transformation and afterwards serving like that 

*Software Engineering best practice is also important.

#=========================================================================

# *What is Data Warehouse*

A Data warehouse is a **centralized repository** that stores data from <mark>from various sources, such as transactional systems(mysql, sqlserver,postgresql etc), applications (google map, youtube etc,) and external sources( like sensors)</mark>.

It is designed to support business intelligence activites, such as reporting, analysis, and data myining. Unlike transactional databases, which are designed for day-to-day operations,<mark> data warehouses are designed for complex quries and analyis.</mark>


![download](https://github.com/user-attachments/assets/84a62918-82ca-40d5-b6e2-3c31ce255d29)

Buisness collect data to understand what is customer demand what is trending how their buisness is performing.

- Mainly designed for analysis and reporting work.


## Characteristics of Data Warehouse
 Data should be organised based on proper buisness functions such as Sales , Marketing, Accounting, IT department all of these data should be organised for diff functions , so that is right data can used as per requirement.

1. Subject-Oriented
--> drop garbage data and store goal oriented quality data.
   
2. Integrated
--> "Integrated" in a data warehouse means that data from multiple, disparate sources has been combined, cleaned, and standardized into a single, consistent, and unified view
   This process eliminates data silos and ensures that all data within the warehouse is reliable and has a common format for analysis, reporting, and decision-making

3. Time-Variant
--> Enable users to analyse last 5 years data or las 10 years of data,
   so one can analyse trend of previous years considering data warehouse
   contains previours year data.
   
5. Non-Volatile
--> So Data in data warehouse is not updated or deleted frequently instead
   we updat data in batches say hourly basis or yearly bases

## Benefits of Data Warehouse
1. Improved Decision Making 
2. Increased Efficiency - once data is properly structred
3. Enhanced Data Quality - garbage out during building of data pipeline
4. Competitive Advantage - Data Driven decision


# =======================================
# Kimball's Data Warehouse Apporach

This is where we learn to create Data Warehouse.
🟡 **Identify the Buisness Requirements**

🟡 **Design the Dimensional Model**

🟡 **Implement the ETL Processes**

🟡 **Develop Data Access Tools**


 # ==============================================
 # OLTP VS OLAP
 <img width="1161" height="662" alt="Screenshot 2025-11-13 185635" src="https://github.com/user-attachments/assets/e00f6994-d9f9-4fa1-9929-5402166a90cc" />

We have two data systems one is OLTP and OLAP

 Online transactional processing (OLTP)
 ➔ MySQL, PostgreSQL, Oracle, etc are examples
 ➔ for faster create, delete , select and other operations

 Online Analytical Processing (OLAP)
 ➔SnowflakeDB, Redshift, BigQuery, Hive, Synapse, etc.
 ➔ slow processing as we will analyse years and years of data

 On foundation side we have OLTP that interacts with applications side like we have bank website when user creates account stores password name all users data gets stored in OLTP. And then we have OLAP systems for analysis purpose.

 #                  OLTP ----------ETL----------> OLAP

What we do we store all of our data in OLTP and pass this data to OLAP to analysis. 




