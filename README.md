# SQL-Challenge

![9544010](https://github.com/KrissinaW/sql-challenge/assets/162597320/70203fb8-8377-440e-9f0b-fcf862f0f0b0)


I will perform data modeling, data engineering, and data analysis, respectively.

# Background
It’s been two weeks since I was hired as a new data engineer at Pewlett Hackard (a fictional company). My first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I will design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. 

# Data Modeling 

In the Images file included in this repository you will find the: 

- Entity Relationship Diagram (ERD) for all tables.
  
- Screen shot displaying the Schema Pane or Table List.

  - I included this to provide a structured overview of all the tables defined in the database diagram, along with their columns, primary keys, foreign keys, and relationships to other tables.


# Data Engineering 

In the [PGAdmin](subdirectory/example.txt) included in this repository you will find the Emp_schema.sql file and also the Emp_SQL.sql file. 

In the Emp_schema.sql file you will find the following: 

- All required columns are defined for each table 

- Columns set to the correct data type 

- Primary Keys set for each table
  
- Correctly referenced related tables 

- Tables are correctly related using Foreign Keys 

- Correctly uses NOT NULL condition on necessary columns 

- Accurately defined value lengths for columns


# Data Analysis: 

In the [PGAdmin](subdirectory/example.txt) included in this repository you will find the Emp_schema.sql file and also the Emp_SQL.sql file. 

In the  Emp_SQL.sql file the following has been completed: 

- List the employee number, last name, first name, sex, and salary of each employee.

- List the first name, last name, and hire date for the employees who were hired in 1986.

- List the manager of each department along with their department number, department name, employee number, last name, and first name.

- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

- List each employee in the Sales department, including their employee number, last name, and first name.

- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

  # Resources Used:

 ChatGPT by OpenAI, version GPT-4, accessed May 2024. Available from: https://www.openai.com/chatgpt 

 -Chat GPT 4 was used in helping me fix errors that were coming up in my SQL Query.
