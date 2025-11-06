
-- Create tables
CREATE TABLE IF NOT EXISTS stud_marks (
    name VARCHAR(25),
    total_marks NUMERIC
);

CREATE TABLE IF NOT EXISTS result (
    roll_number NUMERIC,
    name VARCHAR(25),
    class VARCHAR(30)
);

-- Create procedure
CREATE OR REPLACE PROCEDURE procedure_1(
    roll_no NUMERIC,
    student_name VARCHAR,
    marks NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF marks <= 1500 AND marks >= 990 THEN
        RAISE NOTICE 'DISTINCTION';
        INSERT INTO result VALUES (roll_no, student_name, 'DISTINCTION');

    ELSIF marks <= 989 AND marks >= 900 THEN
        RAISE NOTICE 'FIRST CLASS';
        INSERT INTO result VALUES (roll_no, student_name, 'FIRST CLASS');

    ELSIF marks <= 899 AND marks >= 825 THEN
        RAISE NOTICE 'HIGHER SECOND CLASS';
        INSERT INTO result VALUES (roll_no, student_name, 'HIGHER SECOND CLASS');

    ELSE
        RAISE NOTICE 'FAIL';
        INSERT INTO result VALUES (roll_no, student_name, 'FAIL');
    END IF;

    INSERT INTO stud_marks VALUES (student_name, marks);
END;
$$;

-- Create function that calls the procedure
CREATE OR REPLACE FUNCTION func_1(
    t NUMERIC,
    n VARCHAR,
    m NUMERIC
)
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
BEGIN
    CALL procedure_1(t, n, m);
    RETURN 'SUCCESSFUL';
END;
$$;

-- Test the function
SELECT func_1(1, 'SAYALI', 995);
-- Verify data in tables
SELECT * FROM stud_marks;
SELECT * FROM result;

