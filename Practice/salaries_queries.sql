-- Table: SALARIES
-- Columns:
-- Professor_Name (TEXT)
-- Department (TEXT)
-- Salary (INT)

-- 1. Return all rows
SELECT * FROM SALARIES;

-- 2. Return all professor names
SELECT Professor_Name FROM SALARIES;

-- 3. Return all unique departments
SELECT DISTINCT Department FROM SALARIES;

-- 4. Count professors earning more than 150000
SELECT COUNT(*) 
FROM SALARIES
WHERE Salary > 150000;

-- 5. Return departments and their total salaries
SELECT Department, SUM(Salary) AS Total_Salary
FROM SALARIES
GROUP BY Department;

-- 6. Return the professor with the highest salary
SELECT Professor_Name, Salary
FROM SALARIES
ORDER BY Salary DESC
LIMIT 1;

-- 7. Highest paid professor in Computer Science
SELECT Professor_Name, Salary
FROM SALARIES
WHERE Department = 'Computer Science'
ORDER BY Salary DESC
LIMIT 1;

-- 8. Top 5 highest earning professors
SELECT Professor_Name, Salary
FROM SALARIES
ORDER BY Salary DESC
LIMIT 5;

-- 9. Lowest earning professor
SELECT Professor_Name, Salary
FROM SALARIES
ORDER BY Salary ASC
LIMIT 1;

-- 10. Department where Professor Zaniolo works
SELECT Department
FROM SALARIES
WHERE Professor_Name = 'Zaniolo';

-- 11. Professors whose names start with C
SELECT Professor_Name
FROM SALARIES
WHERE Professor_Name LIKE 'C%';

-- 12. Third highest distinct salary
SELECT DISTINCT Salary
FROM SALARIES
ORDER BY Salary DESC
LIMIT 1 OFFSET 2;

-- 13. Average salary of all professors
SELECT AVG(Salary) AS Average_Salary
FROM SALARIES;

-- 14. New salaries after a 10000 raise for Computer Science professors
SELECT Professor_Name, Salary + 10000 AS New_Salary
FROM SALARIES
WHERE Department = 'Computer Science';

-- 15. Professors earning at least as much as the lowest paid professor
SELECT Professor_Name, Salary
FROM SALARIES
WHERE Salary >= (SELECT MIN(Salary) FROM SALARIES);

-- 16. Professors earning between 120000 and 250000
SELECT Professor_Name, Salary
FROM SALARIES
WHERE Salary BETWEEN 120000 AND 250000;

-- 17. Professors in Anthropology OR earning more than 150000
SELECT *
FROM SALARIES
WHERE Department = 'Anthropology'
   OR Salary > 150000;

-- 18. Highest salary in Computer Science
SELECT MAX(Salary) AS Highest_CS_Salary
FROM SALARIES
WHERE Department = 'Computer Science';

-- 19. Professors earning more than twice the lowest paid Political Science professor
SELECT COUNT(*)
FROM SALARIES
WHERE Salary > (
    SELECT MIN(Salary)
    FROM SALARIES
    WHERE Department = 'Political Science'
) * 2;

-- 20. Department with the highest total salary
SELECT Department, SUM(Salary) AS Total_Salary
FROM SALARIES
GROUP BY Department
ORDER BY Total_Salary DESC
LIMIT 1;

-- 21. Department with the highest average salary
SELECT Department, AVG(Salary) AS Avg_Salary
FROM SALARIES
GROUP BY Department
ORDER BY Avg_Salary DESC
LIMIT 1;

-- 22. Highest earning professor in each department
SELECT s.Professor_Name, s.Department, s.Salary
FROM SALARIES s
JOIN (
    SELECT Department, MAX(Salary) AS MaxSalary
    FROM SALARIES
    GROUP BY Department
) m
ON s.Department = m.Department
AND s.Salary = m.MaxSalary;
