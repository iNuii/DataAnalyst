-- string functions

select length('skyfall');

select first_name, length(first_name)
from employee_demographics
order by 2;

select upper('sky');
select lower('SKY');

select first_name, upper(first_name)
from employee_demographics
;

select rtrim('       sky         ');

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2) 
FROM employee_demographics
;

SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) as full_name
FROM employee_demographics
;