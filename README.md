# Library Management Database

A MySQL 8 Library Management Database project that manages members,
books, and book loans.

## Features

- Members, books, and loans tables
- Primary and foreign key relationships
- Realistic sample data
- Filtering using WHERE, IN, BETWEEN, LIKE, and IS NULL
- UPDATE and DELETE operations
- String functions such as CONCAT and UPPER
- Aggregate functions using COUNT and SUM
- GROUP BY and HAVING
- INNER JOIN and LEFT JOIN reports
- Top borrowers report
- Most borrowed books report
- Overdue loans report
- Members with zero loans report

## Database

Database Name: `library_db`

Tables:

- `members`
- `books`
- `loans`

The tables use the InnoDB storage engine so that foreign key
constraints are enforced.

## SQL Files

### 01_schema.sql
Creates the database and all tables with primary and foreign keys.

### 02_seed.sql
Adds sample members, books, and loan records.

### 03_filtering.sql
Contains filtering, string function, UPDATE, and DELETE examples.

### 04_reports.sql
Contains aggregate and JOIN-based library reports.

## How to Run

MySQL 8 is required.

For filtering and modification queries, run:

1. `01_schema.sql`
2. `02_seed.sql`
3. `03_filtering.sql`

Because `03_filtering.sql` modifies data, recreate and seed the
database before running the final reports.

For reports, run:

1. `01_schema.sql`
2. `02_seed.sql`
3. `04_reports.sql`

## Overdue Loan Rule

For this project, an overdue loan is an unreturned loan whose
`due_date` is earlier than the fixed reference date:

`2025-05-01`

No date-math functions are used.

## Technologies Used

- MySQL 8
- phpMyAdmin
- WAMP Server
- SQL