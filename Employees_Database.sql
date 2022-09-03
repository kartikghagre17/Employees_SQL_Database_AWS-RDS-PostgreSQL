

CREATE DATABASE Employees Information;


#TABLE 1

CREATE TABLE Employees (
employee_id INT NOT NULL PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30),
highest_degree VARCHAR(20),
experience INT,
email_id VARCHAR(50) NOT NULL,
joining_date Date NOT NULL);


DROP TABLE Employees;

CREATE TABLE employees (
employee_id INT NOT NULL PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30),
highest_degree VARCHAR(20),
experience INT,
email_id VARCHAR(50) NOT NULL,
created_on DATE NOT NULL);


INSERT INTO employees( employee_id, first_name, last_name, highest_degree, experience, email_id, created_on)
VALUES
(401601, 'John', 'Waler', 'Masters', 5, 'johnwaler@gmail.com', '2018-05-03'),
(401455, 'Key',  'Rose',  'Bachelor', 1, 'rosekey@gmail.com', '2021-02-10'),
(401345, 'Andrew', 'Porter', 'Masters', 2, 'porter12@rediff.com', '2019-11-24'),
(410675, 'Roven', 'Hudson', 'Diploma', 10, 'roven.23@gmail.com', '2011-07-23')
(401765, 'Jubain', 'maaz', 'MBA', 7, 'maaz.yu@outlook.com', '2009-11-15'),
(401114, 'Rachelle', 'martin', 'Bachelors', 0, 'rachellemartin23@gmail.com', '2018-08-03'),
(401445, 'Tim', 'geroge', 'MBA', 2, 'tim45@gmail.com', '2018-05-12'),
(401562, 'Katie', 'thompson', 'Diploma', 1, 'thimpson3@gmail.com', '2019-02-11'),
(401200, 'Nicole', 'williams', 'Masters', 12, 'willi90@gmail.com', '2022-09-01');




#TABLE 2

CREATE TABLE project (
employee_id INT REFERENCES employees(employee_id),
project_name VARCHAR(30) NOT NULL,
project_duration INT,
location VARCHAR(20) NOT NULL,
status VARCHAR (20) NOT NULL,
cost INT);

ALTER TABLE PROJECT
ALTER COLUMN cost TYPE VARCHAR(30);


INSERT INTO project ( employee_id, project_name, project_duration, location, status, cost)
VALUES
(401601, 'Whistler', 3, 'USA', 'In Progress', 'USD 20 Million' ),
(401455, 'Mercury', 7, 'Canada', 'Comleted', 'USD 50 Million' ),
(401345, 'Husky Dog', 2, 'Canada', 'In Progress', 'USD 5 Million' ),
(410675, 'Mercury', 4, 'USA', 'Completed', 'USD 10 Million' ),
(401765, 'Big Foot', 8, 'USA', 'In Progress', 'USD 35 Million' ),
(401114, 'Nextgen', 10, 'Canada', 'In Progress', 'USD 50 Million' ),
(401445, 'Coding22', 6, 'USA', 'Completed', 'USD 16 Million' ),
(401562, 'software for you', 5, 'Canada', 'Completed', 'USD 8 Million' ),
(401200, 'Tako', 13, 'USA', 'In Progress', 'USD 75 Million' );

ALTER TABLE project
RENAME COLUMN project_duration TO project_duration_years;

UPDATE project
SET project_name = 'TimWood'
WHERE employee_id = 410675;

UPDATE project
SET status = 'Completed'
WHERE employee_id = 401455



#TABLE 3

CREATE TABLE reporting_manager (
manager_id INT,
manager_name VARCHAR(30) NOT NULL,
reporting_time VARCHAR(20) NOT NULL,
way_of_communication VARCHAR(30) NOT NULL);

INSERT INTO reporting_manager ( manager_id, manager_name, reporting_time, way_of_communication)
VALUES
(23, 'David Rovel', 'Biweekely', 'Email/ Telephonic'),
(17, 'Jose shah', 'Monthly', 'Email- after approval'),
(67, 'Raveena', 'Daily', 'Email/ In-person');



SELECT * FROM employees;
SELECT * FROM project;
SELECT * FROM reporting_manager;




