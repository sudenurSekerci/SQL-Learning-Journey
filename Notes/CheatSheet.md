# SQL Comprehensive Cheat Sheet 📝

A structured reference guide covering everything from basic queries to advanced data analysis techniques.

---

## 1. Basic Commands (Data Retrieval)
* [cite_start]**SELECT**: Specifies which columns to retrieve[cite: 3, 6].
    * [cite_start]`SELECT column1, column2 FROM table_name;` [cite: 7]
* [cite_start]**SELECT ***: Retrieves all columns from a table[cite: 10, 13].
* [cite_start]**DISTINCT**: Removes duplicate values and returns only unique records[cite: 15].
* [cite_start]**WHERE**: Filters data based on specific conditions[cite: 14, 17].
* **Logical Operators**:
    * [cite_start]`AND`: All conditions must be true[cite: 20, 21, 23].
    * [cite_start]`OR`: At least one condition must be true[cite: 20, 21, 25].
    * [cite_start]`NOT`: Filters records that do not meet the condition[cite: 20, 21, 27].
* [cite_start]**ORDER BY**: Sorts results in ascending (`ASC`) or descending (`DESC`) order[cite: 28, 29].
* [cite_start]**LIMIT**: Restricts the number of rows returned in the result set[cite: 33, 34].

## 2. Filtering Operators
* [cite_start]**IN**: Checks if a value matches any value in a specified list[cite: 38, 40].
* [cite_start]**BETWEEN**: Selects values within a given range (inclusive)[cite: 42, 43].
* [cite_start]**LIKE**: Searches for a specific pattern in a column using wildcards[cite: 45, 46].
    * [cite_start]`'A%'`: Starts with "A"[cite: 47, 48].
    * [cite_start]`'%met'`: Ends with "met"[cite: 49, 50].
* [cite_start]**IS NULL / IS NOT NULL**: Checks for empty (NULL) values[cite: 51, 52].
* [cite_start]**COALESCE**: Returns a default value if the data is NULL[cite: 55, 56].

## 3. Aggregate Functions & Formatting
* [cite_start]**MIN() / MAX()**: Returns the smallest and largest values[cite: 58, 59, 60, 62].
* [cite_start]**COUNT()**: Returns the total number of rows[cite: 64, 65].
* [cite_start]**SUM()**: Calculates the total sum of a numeric column[cite: 67, 69].
* [cite_start]**AVG()**: Calculates the average value of a numeric column[cite: 68, 71].
* [cite_start]**ALIASES (AS)**: Provides a temporary, readable name for columns or tables[cite: 73, 74].
* **String Functions**:
    * [cite_start]`CONCAT()`: Joins two or more strings together[cite: 75, 76].
    * [cite_start]`UPPER() / LOWER()`: Converts text to uppercase or lowercase[cite: 78, 79].

## 4. Grouping & Joins
* [cite_start]**GROUP BY**: Groups rows that have the same values into summary rows[cite: 87, 89].
* [cite_start]**HAVING**: Filters grouped data (used after `GROUP BY`)[cite: 88, 92].
* **JOINS**:
    * [cite_start]**INNER JOIN**: Returns records with matching values in both tables[cite: 96, 98].
    * [cite_start]**LEFT JOIN**: Returns all records from the left table and matched records from the right[cite: 103, 105].
    * [cite_start]**RIGHT JOIN**: Returns all records from the right table and matched records from the left[cite: 112, 113].
    * [cite_start]**FULL OUTER JOIN**: Returns all records when there is a match in either table[cite: 114, 115].
    * [cite_start]**SELF JOIN**: A table joined with itself[cite: 116, 118].

## 5. Advanced Techniques
* [cite_start]**Subqueries**: A query nested inside another query[cite: 145, 147].
* [cite_start]**Window Functions**: Analyzes data row-by-row without grouping (e.g., `RANK() OVER`)[cite: 152, 153, 154].
* [cite_start]**CTE (Common Table Expressions)**: Simplifies complex queries using the `WITH` command[cite: 159, 160].
* [cite_start]**PIVOT**: Rotates table data from a state of rows to columns[cite: 166, 167].

## 6. Data Manipulation (DML)
* [cite_start]**INSERT INTO**: Adds new records to a table[cite: 134, 135].
* [cite_start]**UPDATE**: Modifies existing records (always use `WHERE`!)[cite: 137, 139].
* [cite_start]**DELETE**: Removes records from a table (always use `WHERE`!)[cite: 138, 142].


