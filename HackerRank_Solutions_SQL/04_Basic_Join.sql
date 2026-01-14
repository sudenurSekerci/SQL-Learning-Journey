/* HackerRank: Join Challenges Solutions
   Demonstrating proficiency in INNER JOIN, Multiple Joins, CASE logic, and CTEs.
*/

-- 1. Population Census: Sum of city populations for a specific continent.
SELECT SUM(CITY.POPULATION) 
FROM CITY 
INNER JOIN COUNTRY ON COUNTRY.Code = CITY.CountryCode
WHERE COUNTRY.CONTINENT = "Asia";

-- 2. African Cities: Retrieve names of all cities located in Africa.
SELECT CITY.name 
FROM CITY 
INNER JOIN COUNTRY ON COUNTRY.Code = CITY.CountryCode
WHERE COUNTRY.CONTINENT = "Africa";

-- 3. Average Population by Continent: Rounded down (FLOOR) average city population per continent.
SELECT COUNTRY.continent, FLOOR(AVG(CITY.POPULATION)) 
FROM COUNTRY 
INNER JOIN CITY ON COUNTRY.Code = CITY.CountryCode
GROUP BY COUNTRY.Continent;

-- 4. The Report: Using CASE WHEN to mask names based on grades and complex ordering.
SELECT 
    CASE WHEN G.Grade < 8 THEN 'NULL' ELSE S.Name END AS Name, 
    G.Grade, 
    S.Marks
FROM Students S
JOIN Grades G ON S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY 
    G.Grade DESC, 
    CASE WHEN G.Grade >= 8 THEN S.Name END ASC,
    CASE WHEN G.Grade < 8 THEN S.Marks END ASC;

-- 5. Top Competitors: Join multiple tables (4 tables) to find hackers with multiple full scores.
SELECT H.hacker_id, H.name
FROM Submissions S
JOIN Challenges C ON S.challenge_id = C.challenge_id
JOIN Difficulty D ON C.difficulty_level = D.difficulty_level
JOIN Hackers H ON S.hacker_id = H.hacker_id
WHERE S.score = D.score 
GROUP BY H.hacker_id, H.name
HAVING COUNT(S.submission_id) > 1
ORDER BY COUNT(S.submission_id) DESC, H.hacker_id ASC;

-- 6. Ollivander's Inventory: Using correlated subqueries to find the minimum gold for non-evil wands.
SELECT W.id, P.age, W.coins_needed, W.power
FROM Wands W
INNER JOIN Wands_Property P ON W.code = P.code
WHERE P.is_evil = 0 
  AND W.coins_needed = (
    SELECT MIN(W1.coins_needed) 
    FROM Wands W1
    INNER JOIN Wands_Property P1 ON W1.code = P1.code
    WHERE P1.is_evil = 0 AND P1.age = P.age AND W1.power = W.power
  )
ORDER BY W.power DESC, P.age DESC;

-- 7. Challenges: Using CTE (Common Table Expressions) and complex filtering to manage counts.
WITH Challenge_Counts AS (
    SELECT H.hacker_id, H.name, COUNT(*) as total
    FROM Hackers H
    JOIN Challenges C ON H.hacker_id = C.hacker_id
    GROUP BY H.hacker_id, H.name
)
SELECT hacker_id, name, total
FROM Challenge_Counts
WHERE 
    total = (SELECT MAX(total) FROM Challenge_Counts)
    OR 
    total IN (
        SELECT total 
        FROM Challenge_Counts 
        GROUP BY total 
        HAVING COUNT(*) = 1
    )
ORDER BY total DESC, hacker_id;

-- 8. Contest Leaderboard: Calculating total score based on the maximum score of each challenge.
SELECT H.hacker_id, H.name, SUM(Max_Scores.max_puan) AS total_score
FROM Hackers H
JOIN (
    SELECT hacker_id, challenge_id, MAX(score) AS max_puan
    FROM Submissions
    GROUP BY hacker_id, challenge_id
) AS Max_Scores ON H.hacker_id = Max_Scores.hacker_id
GROUP BY H.hacker_id, H.name
HAVING total_score > 0 
ORDER BY total_score DESC, H.hacker_id ASC;
