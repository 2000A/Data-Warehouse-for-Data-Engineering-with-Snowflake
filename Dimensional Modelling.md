
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












































































