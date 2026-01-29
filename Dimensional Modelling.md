
# Dimensional Modelling
Method of organizing data in a data warehouse

-> In data model data was normalized accros tables so we convert this data
  model into dimensional model

-> Dimesional modelling contains two things: 1.Fact 2.Dimension

Converting normalize data which is spread accross tables into denormalize form ie. we reduce the no. of tables together for better analysis.

*Note : Normalization in SQL is a systematic process of organizing data in a database to reduce data redundancy and improve data integrity. It involves breaking down large tables into smaller, more manageable tables and establishing relationships between them based on a set of rules called "normal forms."*
--------------------------------------------------------------

<img width="896" height="526" alt="Screenshot 2025-11-14 174334" src="https://github.com/user-attachments/assets/c7c614e5-49f8-40c9-bfc0-efdabf4d09b1" />

- **Facts are generally considered as numerical column**
  
- **Facts are Measurements like profit, price**(Facts are actual meseaurable value)
  
- **Dimensions are Categorical values like product category, product name
     these things are not numerical or non computational.**
  
- ** We need Facts and Dimensions together to calculate something.**
  
- Like Profit by year

- Profit by category


<img width="671" height="441" alt="Screenshot 2025-11-14 180303" src="https://github.com/user-attachments/assets/ad9590e7-7b9b-4659-b1c4-76a58d3d8859" />

In dimensional modelling facts table sits in middle and we have multiple dimensions available. Facts table contains PK, FK for all dimension and also contains measurement information like profits, price etc.

✔ Unique techinque of structering data
✔ Commonly used in DWH
✔ Optimized for faster data retrieval
✔ Oriented around performance & usability
✔Designed Reposrting/ OLAP

----------------------------------------------------------------------

# Why Dimensional Modelling

✔ Goal: Fast data retrieval
✔ Oriented around performance & usability

✔ Below is table which we will convert to dimension model

<img width="678" height="417" alt="Screenshot 2025-11-14 191955" src="https://github.com/user-attachments/assets/1a2c5c7d-2644-4fb5-8aee-eeaabd956cf8" />


✔ We will keep profit column in *Fact Table* and take name column out and 
  create customer_dimension which will contain customer_id, name, and age etc.
  ● through customer_id both fact table and customer-dim table can be   linked.
  
  <img width="713" height="211" alt="Screenshot 2025-11-14 192824" src="https://github.com/user-attachments/assets/d0db9f70-c40f-468e-821f-110754c713b3" />

✔ In similar fashion we can take out product and category coloum as separate dimension(product dim) which will contain product_id , product, category like that.

<img width="663" height="211" alt="Screenshot 2025-11-14 193112" src="https://github.com/user-attachments/assets/5ba4304b-17fa-4346-ba01-d0265eff1290" />

✔ same goes with date column

<img width="655" height="192" alt="Screenshot 2025-11-14 193314" src="https://github.com/user-attachments/assets/1ebfc513-c6cc-4638-9794-673d9293634c" />

● Performance ↑   and  Usability ↑ Using dimensional modelling

● How does it increaces performance and usability ?

Normally If we qurey say 
SELECT
category,
AVG(profit)
FROM TABLE NAME
GROUP BY category

  So this query will access whole table and goes row by row this task is taking time as we include non necessary data.
But using dimensional modelling we can directly connect the fact table with required dimensional table required and query it fast.

See say we need avg of price of each product and we write query on simple table which will result in fetching of the table then columns will be fetched it takes time. Now we have dimensions so connecting product dimension table and price fact table will result in faster quering of desiered result. Therefore dimensional modelling is go to for datawarehousing.
--------------------------------------------------------------------
# Fact Table Deep-Dive

<img width="833" height="463" alt="Screenshot 2025-11-15 115848" src="https://github.com/user-attachments/assets/1d3d70c2-8832-494e-a8e0-2e567be2786b" />

<img width="499" height="461" alt="Screenshot 2025-11-15 115901" src="https://github.com/user-attachments/assets/62c8cf71-b364-45e0-8ebf-48fff432eb8d" />

----------------------------------------------------------------------
# Dimension Table Deep-Dive
-> Dimensions don't change often 
-> So We put those information that don't change often into dimension tables.

<img width="865" height="546" alt="Screenshot 2025-11-15 122057" src="https://github.com/user-attachments/assets/393321d8-df54-43a3-9d51-a9e9591b5116" />

<img width="522" height="493" alt="Screenshot 2025-11-15 122329" src="https://github.com/user-attachments/assets/83d33c9d-06bc-4ce8-a0d1-fbfa91c4b3c1" />

-----------------------------------------------------------------------

# Star Schema Vs Snoflake Schema

note: snoflake schema is not associated with snowflake database.

Star Schema:
<img width="400" height="450" alt="Screenshot 2026-01-29 181940" src="https://github.com/user-attachments/assets/e29577a6-7318-4b2b-9210-20d2761809b6" />

1:n ( one to n relationship)
-> one product will have multiple sales.

We generally have Normalized form in relational database and in Data warehouse we use Denormalized form.

In Star Schema we use Denormalized for faster data retrieval where we will get data redundancy(data repeated) because of storing a lot of information in a single table but it ensures faster data retreival like instead of joining five table we can use single table.

Denormalized:
💠 There is data redundancy!
-> Redundancy becuase here we are storing lot of information in single      table we can encounter data duplicacy as well 

💠Optimized to get data out
->data warehouse are good for reading large data.

💠 Query performance (read)
->since DW is good for reading large amount of data say we can analyse last 5 years of data 

💠 User experiece
-> can get results in seconds be it monthly or years of analysis.


Star Schema: 
⭐ Most common schema in Data mart

⭐ Simplest form (vs. snowflake schema)

⭐ Work best for specific needs( simple set of queries vs complex queries)

⭐ Usability + Performance for specific (read) use-case


Snowflake Schema:
Snowflake Schema is a star schema but extended version of it.

Below we can see we have further divided the Dimension table of above star schema for category.

<img width="794" height="504" alt="Screenshot 2026-01-29 193118" src="https://github.com/user-attachments/assets/ce324e36-aeec-4b04-8386-61ba9c3444a1" />

When we normalize star schema it becomes snowflake schema.

<img width="714" height="408" alt="Screenshot 2026-01-29 193327" src="https://github.com/user-attachments/assets/8b7c2db0-4261-4997-b853-2b8c5cc16916" />


♦️Types of Fact Tables:
video to be watched for recap

Steps to create a fact table:
<img width="709" height="496" alt="Screenshot 2026-01-29 231035" src="https://github.com/user-attachments/assets/fc7faa97-95bd-4880-89ef-a0aa5ade8c6f" />

Factless Fact table:
<img width="809" height="424" alt="Screenshot 2026-01-29 233105" src="https://github.com/user-attachments/assets/401754f1-945a-4909-a248-a53495a4ab0b" />

<img width="887" height="474" alt="Screenshot 2026-01-29 233300" src="https://github.com/user-attachments/assets/3fabd592-1488-411d-8145-c828193af857" />

Surrogate Key (important for interviews)

We have Natural key vs. Surrogate key
usually Natural key comes out of source system i.e, Primary key
But on data warehouse level we generate artifical key for our understanding through which we have faster retrival called as Surrogate key.

Usually we create Surrogate key during ETL and also FK 
<img width="760" height="429" alt="Screenshot 2026-01-29 233420" src="https://github.com/user-attachments/assets/e36f68d1-9f67-4fdc-83c4-190949f46fa3" />

<img width="692" height="435" alt="Screenshot 2026-01-29 233740" src="https://github.com/user-attachments/assets/3dede617-b993-478b-b9e0-187aef93cd54" />

<img width="683" height="463" alt="Screenshot 2026-01-29 233918" src="https://github.com/user-attachments/assets/43acfb36-0909-43a0-b062-9de18e329920" />

<img width="707" height="498" alt="Screenshot 2026-01-29 234143" src="https://github.com/user-attachments/assets/64ba0388-ec4e-4492-81d2-3e0cda14c654" />


<img width="876" height="514" alt="Screenshot 2026-01-29 234750" src="https://github.com/user-attachments/assets/60b81a7c-41af-49d0-84d7-e14944fe912f" />

<img width="811" height="397" alt="Screenshot 2026-01-29 234927" src="https://github.com/user-attachments/assets/2c22d487-43f7-402e-99f3-b9b4030e34b8" />








































