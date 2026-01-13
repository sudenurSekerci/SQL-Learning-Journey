/* HackerRank: Alternative Queries Solutions
   This file demonstrates advanced logic using variables, loops, and recursive CTEs.
*/

-- 1. P Draw The Triangle 1: Pattern printing in descending order using variables.
SET @Counter := 21;
SELECT REPEAT('* ', @Counter := @Counter - 1) 
FROM INFORMATION_SCHEMA.TABLES
LIMIT 20;

/* Alternative Approach for Triangle 1: Using a Stored Procedure and WHILE Loop */
-- DELIMITER $$
-- CREATE PROCEDURE DrawTriangleDesc() 
-- BEGIN
--     DECLARE NUMBER INT DEFAULT 20;
--     WHILE NUMBER > 0 DO 
--         SELECT REPEAT('* ', NUMBER); 
--         SET NUMBER = NUMBER - 1;
--     END WHILE;
-- END $$
-- DELIMITER ;
-- CALL DrawTriangleDesc();

-- 2. P Draw The Triangle 2: Pattern printing in ascending order using variables.
SET @Counter := 0;
SELECT REPEAT('* ', @Counter := @Counter + 1) 
FROM INFORMATION_SCHEMA.TABLES
LIMIT 20;

-- 3. Print Prime Numbers: Finding all prime numbers up to 1000.
-- Method A: Using user-defined variables and subqueries.
SET @potential_prime := 1;
SET @divisor := 1;

SELECT GROUP_CONCAT(PRIME_NUMBER SEPARATOR '&')
FROM (
    SELECT @potential_prime := @potential_prime + 1 AS PRIME_NUMBER
    FROM INFORMATION_SCHEMA.TABLES t1, INFORMATION_SCHEMA.TABLES t2
    LIMIT 1000
) AS Candidates
WHERE NOT EXISTS (
    SELECT 1
    FROM (
        SELECT @divisor := @divisor + 1 AS DIVISOR
        FROM INFORMATION_SCHEMA.TABLES t1, INFORMATION_SCHEMA.TABLES t2
        LIMIT 1000
    ) AS Divisors
    WHERE DIVISOR < PRIME_NUMBER AND (PRIME_NUMBER % DIVISOR) = 0
);

-- Method B: Using Recursive CTE (Common Table Expressions).
WITH RECURSIVE Numbers AS (
    SELECT 2 AS n
    UNION ALL
    SELECT n + 1 FROM Numbers WHERE n < 1000
)
SELECT GROUP_CONCAT(n SEPARATOR '&')
FROM Numbers n1
WHERE NOT EXISTS (
    SELECT 1 FROM Numbers n2 
    WHERE n2.n < n1.n AND n1.n % n2.n = 0
);
