/* HackerRank: Basic Select Solutions
   This file contains my solutions for the Basic Select challenges.
*/

-- 1. Query all columns for all American cities in the CITY table with populations larger than 100,000.
SELECT * FROM CITY 
WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';

-- 2. Query the NAME field for all American cities with populations larger than 120,000.
SELECT NAME FROM CITY 
WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA';

-- 3. Query all columns for every row in the CITY table.
SELECT * FROM CITY;

-- 4. Query all columns for a city in CITY with the ID 1661.
SELECT * FROM CITY 
WHERE ID = 1661;

-- 5. Query all attributes of every Japanese city in the CITY table.
SELECT * FROM CITY 
WHERE COUNTRYCODE = 'JPN';

-- 6. Query the names of all Japanese cities in the CITY table.
SELECT NAME FROM CITY 
WHERE COUNTRYCODE = 'JPN';

-- 7. Query a list of CITY and STATE from the STATION table.
SELECT CITY, STATE FROM STATION;

-- 8. Query a list of CITY names from STATION for cities that have an even ID number.
SELECT DISTINCT CITY FROM STATION 
WHERE ID % 2 = 0;

-- 9. Find the difference between the total number of CITY entries and the number of distinct CITY entries.
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

-- 10. Query the two cities with the shortest and longest CITY names with their lengths.
-- Shortest name:
SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY ASC
LIMIT 1;
-- Longest name:
SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC
LIMIT 1;

-- 11. Query the list of CITY names starting with vowels (a, e, i, o, u) from STATION.
SELECT DISTINCT CITY FROM STATION 
WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');

-- 12. Query the list of CITY names ending with vowels from STATION.
SELECT DISTINCT CITY FROM STATION 
WHERE RIGHT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u');

-- 13. Query the list of CITY names starting and ending with vowels. (Using REGEXP for efficiency)
SELECT DISTINCT CITY FROM STATION 
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';

-- 14. Query the list of CITY names NOT starting with vowels.
SELECT DISTINCT CITY FROM STATION 
WHERE LEFT(CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- 15. Query the list of CITY names NOT ending with vowels.
SELECT DISTINCT CITY FROM STATION 
WHERE CITY REGEXP '[^aeiou]$';

-- 16. Query the list of CITY names that either do not start with a vowel OR do not end with a vowel.
SELECT DISTINCT CITY FROM STATION 
WHERE CITY REGEXP '^[^AEIOUaeiou]|[^AEIOUaeiou]$';

-- 17. Query the list of CITY names that do not start with vowels AND do not end with vowels.
SELECT DISTINCT CITY FROM STATION 
WHERE CITY REGEXP '^[^AEIOUaeiou].*[^AEIOUaeiou]$';

-- 18. Query the Name of any student with a score higher than 75 Marks. 
-- Order by the last three characters of each name. If two names end in the same 3 chars, order by ID ASC.
SELECT Name FROM STUDENTS 
WHERE Marks > 75 
ORDER BY RIGHT(Name, 3) ASC, ID ASC;

-- 19. Query a list of employee names from the Employee table in alphabetical order.
SELECT name FROM Employee 
ORDER BY name ASC;

-- 20. Query a list of employee names for employees who have a salary greater than $2000 per month 
-- and have been employees for less than 10 months. Order by employee_id.
SELECT name FROM Employee 
WHERE salary > 2000 AND months < 10 
ORDER BY employee_id ASC;
