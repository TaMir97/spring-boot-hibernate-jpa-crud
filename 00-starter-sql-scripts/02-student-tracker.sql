-- PostgreSQL uses 'CREATE DATABASE' statement to create a new database.
-- 'IF NOT EXISTS' is not supported in PostgreSQL for CREATE DATABASE.
-- However, you can use a plpgsql block to check if the database exists and create it if needed.
CREATE DATABASE student_tracker;


-- Switch to the newly created database
\c student_tracker;

-- In PostgreSQL, the 'serial' data type is used for auto-incrementing columns.
-- Also, PostgreSQL does not have 'varchar' data type. Instead, it uses 'character varying' or 'text'.
-- 'DEFAULT CHARSET' is not used in PostgreSQL.

-- Drop the table if it exists
DROP TABLE IF EXISTS student;

-- Create the table 'student'
CREATE TABLE student
(
    id         SERIAL PRIMARY KEY,
    first_name VARCHAR(45),
    last_name  VARCHAR(45),
    email      VARCHAR(45)
);
