USE library_db;

SELECT
    genre,
    COUNT(id) AS total_titles,
    SUM(total_copies) AS total_copies
FROM books
GROUP BY genre
HAVING COUNT(id) >= 1
ORDER BY genre;


SELECT
    m.id,
    m.name,
    COUNT(l.id) AS total_loans
FROM members m
INNER JOIN loans l
    ON m.id = l.member_id
GROUP BY m.id, m.name
ORDER BY total_loans DESC, m.name
LIMIT 3;

SELECT
    b.id,
    b.title,
    COUNT(l.id) AS times_borrowed
FROM books b
INNER JOIN loans l
    ON b.id = l.book_id
GROUP BY b.id, b.title
ORDER BY times_borrowed DESC, b.title;


SELECT
    m.name AS member_name,
    b.title AS book_title,
    l.loan_date,
    l.due_date
FROM loans l
INNER JOIN members m
    ON l.member_id = m.id
INNER JOIN books b
    ON l.book_id = b.id
WHERE l.return_date IS NULL
AND l.due_date < '2025-05-01'
ORDER BY l.due_date;


SELECT
    m.id,
    m.name,
    COUNT(l.id) AS total_loans
FROM members m
LEFT JOIN loans l
    ON m.id = l.member_id
GROUP BY m.id, m.name
ORDER BY total_loans DESC, m.name;