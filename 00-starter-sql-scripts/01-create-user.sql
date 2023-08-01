DO $$
    BEGIN
        IF EXISTS (
            SELECT FROM pg_roles WHERE rolname = 'springstudent'
        ) THEN
            EXECUTE 'DROP USER "springstudent"';
        END IF;
    END $$;

-- In PostgreSQL, we use the 'CREATE USER' statement to create a user.
CREATE USER springstudent WITH PASSWORD 'springstudent';

-- To grant all privileges on all tables in a database, you can use the 'GRANT' statement.
-- Replace 'your_database_name' with the actual name of your database.
GRANT ALL PRIVILEGES ON DATABASE postgres TO springstudent;

