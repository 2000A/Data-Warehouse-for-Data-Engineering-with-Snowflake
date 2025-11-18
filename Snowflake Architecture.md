# Snowflake Architecture

Below figure is Tradional data architeture looks like:

<img width="720" height="414" alt="Screenshot 2025-11-17 230014" src="https://github.com/user-attachments/assets/caee819e-9326-4213-9e05-80af7f8f6ad0" />

- Data Stored in single disk only in shared-disk architecture.
- need to increase size of server as size of data increases.


  Below figuire is shared-nothing architecture.
  
  <img width="694" height="426" alt="Screenshot 2025-11-17 230325" src="https://github.com/user-attachments/assets/5d6db193-baff-49e1-acde-f1011c58fa07" />


## Snowflake Architecture (Modern Data Architecture)
<img width="644" height="544" alt="Screenshot 2025-11-17 230703" src="https://github.com/user-attachments/assets/c0ccb27d-e0cd-48ce-9da3-771cbb8a0c96" />

-Divided into three layers
1. Cloud services layer
---> User Interface, Its a brain of snowflake database
   
   i. Authentication and access contrl:
       -> User is checked for authenticity means he/she is actual user             or not. According to your role in company then you will get              data based on your need only( giving limited access)
   
   ii. Infrastrucrue manager:
         -> Scale up or scale down the server as per need using web UI

   iii. Optimizer:
         -> When a query is run the snowflake automatically optimise
            the query, it creates query plan and finds the best way to                execute query.

   iv. Transaction Manager:
         -> Manages all data stored inside snowflake db.

   v. Security: Ensuring data security.

   vi. Results Cache:
         -> When you run one query the snowflake will store the result of
             that particular qurey somewhere in cache , so when you run               the same query again , so instead of running that query                 again it will pull ther result from cache which saves costs.
             Its a smater way snowflake gives faster results.
   
   vii. Metadata Storage (cache):
         -> When a new table is created in snowflake Metadata storage               will store the information about each and every table like               how many rows, columns present. We saw orders table inside               orders we had order price so snowflake stores the min max                mean meadian prices so next time instead calculating we can
           use these metadata sotred by snowflake db.

*When choose cloud platforms say in our case AWS so Snoflake in backend will store S3 or EC2 instance to run query on top it.*

2.Compute Layer
    -> Snowflake computer server is called as virtual warehouse               (combination of different compute resourses and temporary storage)
    -> Beautiful part is compute layer and and data storage layer are          separate.
    -> In compute layer we have multiple warehouses and based on query
        requirements snowflake will alocate different servers to query           to complete the entiere task

3.Data Storage Layer: 
    -> This is mystery where snowflake store data , Warehouses can choose any storage to store data. Again it depends on which cloud platform user chooses.
























































































