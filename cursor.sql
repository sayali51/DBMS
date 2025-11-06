-- Drop tables if they exist
DROP TABLE IF EXISTS new_roll;
DROP TABLE IF EXISTS old_roll;

-- Create tables
CREATE TABLE new_roll (
    roll INT PRIMARY KEY,
    name VARCHAR(25)
);

CREATE TABLE old_roll (
    roll INT,
    name VARCHAR(25)
);

-- Insert sample data
INSERT INTO new_roll VALUES (2, 'Sejal');
INSERT INTO old_roll VALUES (4, 'Triveni');
INSERT INTO old_roll VALUES (3, 'Arya');
INSERT INTO old_roll VALUES (1, 'Samidha');
INSERT INTO old_roll VALUES (5, 'Sayali');
INSERT INTO new_roll VALUES (3, 'Sayali');
INSERT INTO new_roll VALUES (7, 'Samidha');

-- Create procedure using explicit cursor
CREATE OR REPLACE PROCEDURE roll_list()
LANGUAGE plpgsql
AS $$
DECLARE
    -- Declare variables to hold each fetched row
    a INT;
    a1 VARCHAR(25);

    -- Declare a cursor to go through old_roll table
    c_old_roll CURSOR FOR
        SELECT roll, name FROM old_roll;
BEGIN
    -- Open the cursor
    OPEN c_old_roll;

    LOOP
        -- Fetch one row at a time from the cursor into variables
        FETCH c_old_roll INTO a, a1;

        -- Exit the loop when no more rows are found
        EXIT WHEN NOT FOUND;

        -- Check if the roll number already exists in new_roll
        IF NOT EXISTS (SELECT 1 FROM new_roll WHERE roll = a) THEN
            INSERT INTO new_roll (roll, name) VALUES (a, a1);
            RAISE NOTICE 'Inserted: Roll = %, Name = %', a, a1;
        ELSE
            RAISE NOTICE 'Skipped (already exists): Roll = %, Name = %', a, a1;
        END IF;
    END LOOP;

    -- Close the cursor when done
    CLOSE c_old_roll;

    RAISE NOTICE 'Merge completed successfully.';
END;
$$;

-- Call the procedure
CALL roll_list();

-- View results
SELECT * FROM new_roll ORDER BY roll;
SELECT * FROM old_roll ORDER BY roll;
