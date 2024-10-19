-- Subqueries

SELECT *
FROM employee_demographics
WHERE employee_id IN 
			(SELECT employee_id
				FROM employee_salary
                WHERE dept_id = 1)
;


SELECT first_name, salary, 
(SELECT avg(salary)
FROM employee_salary)
FROM employee_salary;

SELECT gender, avg(age), max(age), min(age), count(age)
FROM employee_demographics
group by gender;

select AVG(max_age)
FROM
(SELECT gender, 
avg(age) as avg_age, 
max(age) as max_age, 
min(age) as min_age, 
count(age)
FROM employee_demographics
group by gender) as Agg_table;