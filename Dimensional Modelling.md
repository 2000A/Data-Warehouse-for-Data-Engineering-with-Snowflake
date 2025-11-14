# Dimensional Modelling
Method of organizing data in a data warehouse

-> In data model data was normalized accros tables so we convert this data
  model into dimensional model

-> Dimesional modelling contains two things: 1.Fact 2.Dimension

Converting normalize data which is spread accross tables into denormalize form ie. we reduce the no. of tables together for better analysis.

**Note : Normalization in SQL is a systematic process of organizing data in a database to reduce data redundancy and improve data integrity. It involves breaking down large tables into smaller, more manageable tables and establishing relationships between them based on a set of rules called "normal forms."**
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






























































































