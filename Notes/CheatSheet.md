# SQL Comprehensive Cheat Sheet 📝

A structured reference guide covering essential SQL commands and advanced data analysis techniques.

---

## 1. Basic Data Retrieval
* **SELECT**: Specifies the columns to be retrieved from the database.
* **SELECT ***: Retrieves all columns from a table.
* **DISTINCT**: Removes duplicate results and returns only unique records.
* **WHERE**: Filters data based on a specific condition.
* **AND / OR / NOT**: Used to combine multiple conditions or negate them.
* **ORDER BY**: Sorts the results in ascending (ASC) or descending (DESC) order.
* **LIMIT**: Limits the number of rows returned (Top N results).

## 2. Filtering Operators
* **IN**: Matches a column value against any value in a list (shorthand for multiple ORs).
* **BETWEEN**: Selects values within a specific range (start and end values included).
* **LIKE**: Searches for a pattern using wildcards:
  * `%`: Represents zero, one, or multiple characters.
* **IS NULL / IS NOT NULL**: Checks if a field is empty or contains a value.
* **COALESCE**: Provides a default value if the data is NULL.

## 3. Aggregate Functions & Formatting
* **MIN() / MAX()**: Returns the smallest or largest value in a column.
* **COUNT()**: Returns the total number of rows or records.
* **SUM() / AVG()**: Calculates the total sum or the average value of a numeric column.
* **ALIASES (AS)**: Renames a column or table temporarily for better readability.
* **UPPER / LOWER**: Converts text to uppercase or lowercase.
* **CONCAT**: Joins two or more strings together.

## 4. Grouping & Joins
* **GROUP BY**: Groups rows that have the same values into summary rows.
* **HAVING**: Filters grouped data (unlike WHERE, it works after grouping).
* **INNER JOIN**: Returns records that have matching values in both tables.
* **LEFT JOIN**: Returns all records from the left table and matched records from the right.
* **RIGHT JOIN**: Returns all records from the right table and matched records from the left.
* **FULL OUTER JOIN**: Returns all records when there is a match in either table.
* **SELF JOIN**: Joins a table with itself (e.g., employee-manager relationships).

## 5. Advanced Analysis
* **Subqueries**: A query nested inside another SQL query.
* **Window Functions**: Analyzes data row-by-row without collapsing groups (e.g., RANK()).
* **CTE (Common Table Expressions)**: Uses the `WITH` command to make complex queries more readable.
* **PIVOT**: Rotates table data from rows into columns for reporting.

## 6. Data Manipulation (DML)
* **INSERT INTO**: Adds new records to a table.
* **UPDATE**: Modifies existing records (Warning: Always use WHERE to avoid unintended updates).
* **DELETE**: Removes records from a table (Warning: Always use WHERE to avoid clearing the table).
