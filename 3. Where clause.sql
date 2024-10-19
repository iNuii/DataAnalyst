-- where clause

select *
from employee_salary
where first_name = 'Leslie'
;

select *
from employee_salary
where salary <= 50000
;

select *
from employee_demographics
where birth_date > '1985-01-01'
;

-- AND OR NOT -- Logical Operators
select *
from employee_demographics
where (first_name = 'Leslie' AND age = 44) or age > 55
;

-- like statement
-- % and _
select *
from employee_demographics
where birth_date like '1989%'
;