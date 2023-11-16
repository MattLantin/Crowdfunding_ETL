# Crowdfunding_ETL
Project 2 for Data Analytics Boot Camp

## Group Members:
  - Matt Lantin
  - Michael Chiaramonte

For the ETL mini project, you will work with a partner to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After you transform the data, you'll create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, you’ll upload the CSV file data into a Postgres database.

## Repository Guide:
In the main repository folder we have:
  - Two SQL files:
      - 'crowdfunding_schema.sql' which creates the four tables we need in our postgress database. The four tables are: contacts, category, subcategory, and campaign
      - 'crowdfunding_query.sql' which contains four 'SELECT *' statements for each of the tables to query all the data from each table
  - A Jupyter Notebook (.ipynb) file called 'ETL_Mini_Project_Starter_Code_MChiaramonte_MLantin.ipynb' which contains the python code to extract the data from the provided xlsx files and transform it into 4 csv files that are ready to load into our postgress database. 
  - a png file called 'ERD_Crowdfunding_ETL.png' which is the ERD of our database
  - A Resources folder containing 4 CSV files (contacts.csv, campaign.csv, category.csv, and subcategory.csv) ready to load into our postgress database as well as 2 xlsx files (contacts.xlsx and crowdfunding.xlsx) which contains the raw data we transformed.
