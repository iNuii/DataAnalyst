-- Temp Tables
-- Normal way to create temp table
-- Temp tables statement will last only in the session, when close the SQL session it will no longer
CREATE temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('Thanakrit', 'Punsuwan', 'Interstella');

SELECT *
FROM temp_table;

--  Effective way

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;
