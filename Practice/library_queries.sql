-- Tables:
-- CHECKED_OUT (First_Name TEXT, Last_Name TEXT, Book_ID INT)
-- BOOKS (Book_ID INT, Book_Name TEXT, Author TEXT)

-- 1. People sharing last names with others who checked out books
SELECT DISTINCT a.First_Name, a.Last_Name
FROM CHECKED_OUT a
JOIN CHECKED_OUT b
ON a.Last_Name = b.Last_Name
AND a.First_Name <> b.First_Name;

-- 2. People who checked out books by Terry Crews
SELECT DISTINCT c.First_Name, c.Last_Name
FROM CHECKED_OUT c
JOIN BOOKS b
ON c.Book_ID = b.Book_ID
WHERE b.Author = 'Terry Crews';

-- 3. People who checked out "To Kill a Mockingbird" by Harper Lee
SELECT c.First_Name, c.Last_Name
FROM CHECKED_OUT c
JOIN BOOKS b
ON c.Book_ID = b.Book_ID
WHERE b.Book_Name = 'To Kill a Mockingbird'
  AND b.Author = 'Harper Lee';

-- 4. SQL statement used to create CHECKED_OUT table (SQLite specific)
SELECT sql
FROM sqlite_master
WHERE name = 'CHECKED_OUT';

-- 5. Number of unique authors
SELECT COUNT(DISTINCT Author) AS Unique_Authors
FROM BOOKS;

-- 6. Books checked out by Justin Lee
SELECT b.Book_Name
FROM BOOKS b
JOIN CHECKED_OUT c
ON b.Book_ID = c.Book_ID
WHERE c.First_Name = 'Justin'
  AND c.Last_Name = 'Lee';

-- 7. Full names of everyone who checked out a book (no duplicates)
SELECT DISTINCT First_Name || ' ' || Last_Name AS Full_Name
FROM CHECKED_OUT;
