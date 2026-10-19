USE library_db;

-- Members from Mumbai or Delhi
SELECT *
FROM members
WHERE city IN ('Mumbai', 'Delhi');

-- Programming books published from 2000 onwards
SELECT *
FROM books
WHERE genre = 'Programming'
AND published_year >= 2000;

-- Books published between 2000 and 2020
SELECT *
FROM books
WHERE published_year BETWEEN 2000 AND 2020;

-- Members whose names start with A
SELECT *
FROM members
WHERE name LIKE 'A%';

-- Members without an email
SELECT *
FROM members
WHERE email IS NULL;

-- String functions
SELECT
    id,
    CONCAT(name, ' - ', city) AS member_info,
    UPPER(name) AS uppercase_name
FROM members;

-- UPDATE example
UPDATE members
SET city = 'Pune'
WHERE id = 7;

-- DELETE example using temporary data
INSERT INTO members (name, email, city)
VALUES ('Temporary Member', 'temp@example.com', 'Delhi');

DELETE FROM members
WHERE email = 'temp@example.com';