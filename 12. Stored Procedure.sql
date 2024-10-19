-- Stored Procedures
-- Reuse the sql code like function

CREATE PROCEDURE large_salary()
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

CALL large_salary();

-- Delimiter 
DELIMITER $$
CREATE PROCEDURE large_salary2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salary2()

-- Parameter pass 

DELIMITER $$
CREATE PROCEDURE large_salary3(employee_id_param INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = employee_id_param
    ;
END $$
DELIMITER ;

CALL large_salary3(1)