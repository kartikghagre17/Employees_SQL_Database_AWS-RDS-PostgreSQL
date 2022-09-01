
#how many projects are In Progress status with project name??

SELECT status, project_name FROM project
WHERE status = 'In Progress';

Data Output
#  In Progress	Whistler
#  In Progress	Husky Dog
#  In Progress	Big Foot
#  In Progress	Nextgen
#  In Progress	Tako


#On which project jubain is working??

SELECT project_name FROM project
INNER JOIN employees
ON employees.employee_id = project.employee_id
WHERE first_name = 'Jubain'

Data Output
# Big Foot


#find out the employees last name with their top 5 highest experince in order?

SELECT last_name, experience FROM employees
ORDER BY experience DESC
LIMIT 5;

Data Output
# williams	12
# Hudson	10
# maaz	    7
# Waler 	5
# Porter	2

# find the first name of employees who have more than 5 years of experienece??

SELECT first_name FROM employees
WHERE experience > 5;

Data Output
#Roven
#Jubain
#Nicole

# find out no. of e employees who has degree Masters with more than 10 years of experience??

SELECT COUNT (*) FROM employees
WHERE highest_degree = 'Masters' AND 
experience > 10;

# find out the manager name in order by their ID??

SELECT manager_name FROM reporting_manager
ORDER BY manager_id;

# find employees name who has joined between year 2018 and 2022??

SELECT first_name, last_name FROM employees 
WHERE created_on BETWEEN '2018-05-02' AND '2022-08-01';

# find out name, email id who have completed the project??

SELECT first_name, email_id FROM employees 
JOIN project
ON employees.employee_id = project.employee_id
WHERE status= 'Completed';


