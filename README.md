
# sql-challenge

*a research project about people whom a company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.*

## Data Modeling

*Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables.*

![ER_Diagram copy](https://github.com/sullivanshave/sql-challenge/assets/136047062/6b6355d1-60d7-4ce6-b744-244c11a3bc59)

## Data Engineering

*Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:*

1. Remember to specify the data types, primary keys, foreign keys, and other constraints.

2. For the primary keys, verify that the column is unique. Otherwise, create a composite key, which takes two primary keys to uniquely identify a row.

3. Be sure to create the tables in the correct order to handle the foreign keys.

## Data Analysis

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
