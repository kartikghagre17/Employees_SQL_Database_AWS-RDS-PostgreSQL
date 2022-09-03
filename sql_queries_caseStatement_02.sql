

#CASE Statement

SELECT COUNT(*) , 
	CASE 
		WHEN experience >2 THEN 'Entry_level Employees'
		WHEN experience < 5 THEN 'Professional Employees'
		ELSE 'Associate Employees'
		
	END AS Selection_Criteria	
FROM employees
GROUP BY Selection_Criteria;	

Data Output
4	"Entry_level Employees"
5	"Professional Employees"	


# Find out the employees who has working on project as named Associate ??

SElECT employees.first_name AS Associate 
FROM employees
LEFT JOIN project
ON employees.employee_id = project.employee_id
WHERE project.status = 'In Progress'

# find out the projects name which is more than 5 years with assigned employee full name in order of duration ??

SELECT first_name, last_name, project.project_name, project.project_duration_years 
FROM employees
RIGHT JOIN project
ON employees.employee_id = project.employee_id
WHERE project_duration_years > 5
ORDER BY project_duration_years

#find the employee names with their total experience who have completed Bachelors 

SELECT first_name, last_name, SUM(experience)
FROM employees
WHERE highest_degree = 'Bachelor'
GROUP BY first_name, last_name

#find out the last name of employees who have max experience in order highest with degree Masters??

SELECT last_name, MAX(experience)
FROM employees
WHERE highest_degree = 'Masters'
GROUP BY last_name, experience
ORDER BY experience DESC

# find the emmployees joining date in between 2018 and 2020??

SELECT first_name,created_on AS Joining_Date
FROM employees
WHERE created_on > '2018-01-01' AND created_on < '2020-01-01'
ORDER BY Joining_Date;


#find the project duration which is less than 5 years and more than 10 years??

SELECT * FROM project
WHERE project_duration_years NOT BETWEEN 5 AND 10;

#find the 5 projects name of USA and CANADA with their employee id in order??

SELECT project_name, employee_id
FROM project
WHERE location IN ('USA','Canada')
ORDER BY project_name
LIMIT 5;

#find the manager name who has letter R comes first??

SELECT manager_name FROM reporting_manager
WHERE manager_name LIKE '%R%';

#find highest degree where total experince is more than 10 years??

SELECT highest_degree,SUM(experience) FROM employees
GROUP BY highest_degree
HAVING SUM(experience) > 10;

#find average experience of all degree holder employees??

SELECT highest_degree,  ROUND (AVG(experience)) AS Average_experience
FROM employees
GROUP BY highest_degree;


