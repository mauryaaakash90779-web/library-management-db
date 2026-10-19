USE library_db;


INSERT INTO members (name, email, city) VALUES
('Aarav Sharma', 'aarav@example.com', 'Mumbai'),
('Neha Verma', 'neha@example.com', 'Delhi'),
('Rahul Singh', 'rahul@example.com', 'Lucknow'),
('Priya Patel', NULL, 'Mumbai'),
('Rohan Gupta', 'rohan@example.com', 'Delhi'),
('Ananya Mishra', 'ananya@example.com', 'Lucknow'),
('Vikram Joshi', 'vikram@example.com', 'Pune');

INSERT INTO books (title, author, genre, published_year, total_copies) VALUES
('The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 5),
('Clean Code', 'Robert C. Martin', 'Programming', 2008, 3),
('Database System Concepts', 'Abraham Silberschatz', 'Education', 2019, 4),
('Wings of Fire', 'A. P. J. Abdul Kalam', 'Biography', 1999, 5),
('The Hobbit', 'J. R. R. Tolkien', 'Fiction', 1937, 3),
('C Programming', 'Dennis Ritchie', 'Programming', 1988, 4),
('Atomic Habits', 'James Clear', 'Self Help', 2018, 6),
('Steve Jobs', 'Walter Isaacson', 'Biography', 2011, 2);


INSERT INTO loans
(member_id, book_id, loan_date, due_date, return_date)
VALUES
(1, 1, '2025-03-01', '2025-03-15', '2025-03-12'),
(1, 2, '2025-04-01', '2025-04-15', NULL),

(2, 3, '2025-03-10', '2025-03-24', '2025-03-20'),
(2, 1, '2025-04-05', '2025-04-19', NULL),

(3, 4, '2025-02-01', '2025-02-15', '2025-02-14'),
(3, 5, '2025-04-10', '2025-04-24', NULL),

(4, 6, '2025-03-15', '2025-03-29', '2025-03-28'),

(5, 7, '2025-04-12', '2025-04-26', NULL),

(6, 8, '2025-03-20', '2025-04-03', '2025-04-01'),
(6, 2, '2025-04-15', '2025-04-29', NULL);