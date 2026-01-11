/* HackerRank: Aggregation Solutions
   This file contains solutions for mathematical and aggregate function challenges.
*/

-- 1. Query a count of the number of cities in CITY with populations larger than 100,000.
SELECT COUNT(NAME) FROM CITY 
WHERE POPULATION > 100000;

-- 2. Query the total population of all cities in CITY where District is 'California'.
SELECT SUM(POPULATION) FROM CITY 
WHERE DISTRICT = 'California';

-- 3. Query the average population of all cities in CITY where District is 'California'.
SELECT AVG(POPULATION) FROM CITY 
WHERE DISTRICT = 'California';

-- 4. Query the average population for all cities in CITY, rounded down to the nearest integer (FLOOR).
SELECT FLOOR(AVG(POPULATION)) FROM CITY;

-- 5. Query the sum of the populations for all Japanese cities in CITY.
SELECT SUM(POPULATION) FROM CITY 
WHERE COUNTRYCODE = 'JPN';

-- 6. Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(POPULATION) - MIN(POPULATION) FROM CITY;

-- 7. Error Correction: Calculate the difference between the actual average salary and the miscalculated average (without zeros).
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) FROM EMPLOYEES;

-- 8. Find the maximum total earnings (Salary * Months) and the number of employees who have those earnings.
SELECT (Salary * Months) AS earnings, COUNT(*) FROM Employee 
GROUP BY earnings 
ORDER BY earnings DESC 
LIMIT 1;

-- 9. Query the sum of LAT_N and LONG_W from STATION, rounded to 2 decimal places.
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;

-- 10. Query the sum of Northern Latitudes (LAT_N) between 38.7880 and 137.2345, truncated to 4 decimal places.
SELECT TRUNCATE(SUM(LAT_N), 4) FROM STATION 
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

-- 11. Query the greatest value of Northern Latitudes (LAT_N) less than 137.2345, truncated to 4 decimal places.
SELECT TRUNCATE(LAT_N, 4) FROM STATION 
WHERE LAT_N < 137.2345 
ORDER BY LAT_N DESC LIMIT 1;

-- 12. Query the Western Longitude (LONG_W) for the largest LAT_N less than 137.2345, rounded to 4 decimal places.
SELECT ROUND(LONG_W, 4) FROM STATION 
WHERE LAT_N < 137.2345 
ORDER BY LAT_N DESC LIMIT 1;

-- 13. Query the smallest Northern Latitude (LAT_N) greater than 38.7780, rounded to 4 decimal places.
SELECT ROUND(MIN(LAT_N), 4) FROM STATION 
WHERE LAT_N > 38.7780;

-- 14. Query the Western Longitude (LONG_W) for the smallest Northern Latitude (LAT_N) greater than 38.7780, rounded to 4 decimal places.
SELECT ROUND(LONG_W, 4) FROM STATION 
WHERE LAT_N > 38.7780 
ORDER BY LAT_N ASC LIMIT 1;

-- 15. Manhattan Distance: Calculate the distance between two points (min/max of lat/long) using absolute differences.
SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)), 4) FROM STATION;

-- 16. Euclidean Distance: Calculate the distance between two points using the square root of the sum of squared differences.
SELECT ROUND(SQRT(POW(MIN(LAT_N) - MAX(LAT_N), 2) + POW(MIN(LONG_W) - MAX(LONG_W), 2)), 4) FROM STATION;

-- 17. Median Calculation: Query the median of Northern Latitudes (LAT_N) from STATION.
SET @rowindex := -1;
SELECT ROUND(AVG(d.LAT_N), 4)
FROM (
    SELECT @rowindex := @rowindex + 1 AS rowindex, LAT_N
    FROM STATION
    ORDER BY LAT_N
) AS d
WHERE d.rowindex IN (FLOOR(@rowindex / 2), CEIL(@rowindex / 2));
