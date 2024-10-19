-- Case Statement--

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'YOUNG'
    WHEN age BETWEEN 31 and 50 THEN 'OLD'
    WHEN age >= 50 THEN "ON Death's Door" 
END as Age_Bracket
FROM employee_demographics
;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END as New_Salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END as Bonys
FROM employee_salary
;