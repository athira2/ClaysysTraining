create database task3;

use task3;


CREATE TABLE EMPLOYEES
(
	EMPLOYEEID	INT		PRIMARY KEY,
	FIRSTNAME		VARCHAR(50),
	LASTNAME		VARCHAR(50),
	DEPARTMENT  VARCHAR(50),
	SALARY		MONEY,
	BIRTHDATE   DATETIME
);


INSERT INTO employees (employeeid,  firstname, lastname, department,salary, birthdate) VALUES(1,'Adam','John','Management',70000,'1992-01-12');
INSERT INTO employees (employeeid,  firstname, lastname, department,salary, birthdate ) VALUES(2,'Mathew','Varghese','Administration',55000,'1990-05-03');
INSERT INTO employees (employeeid,  firstname, lastname, department,salary, birthdate) VALUES(3,'Rahul','Rajeev','Technical',58000,'1995-02-01');
INSERT INTO employees (employeeid,  firstname, lastname, department,salary, birthdate ) VALUES(4,'Syam','Kumar','Support',60000,'1995-05-12');
INSERT INTO employees (employeeid,  firstname, lastname, department,salary, birthdate ) VALUES(5,'Ardra','Babu','Administration',69000,'1998-09-22');
INSERT INTO employees (employeeid,  firstname, lastname, department,salary, birthdate ) VALUES(6,'Nick','Jhon','Management',80000,'1990-12-15');
INSERT INTO employees (employeeid,  firstname, lastname, department,salary, birthdate ) VALUES(7,'priyanka','Mohan','Technical',75000,'1994-04-03');
INSERT INTO employees (employeeid,  firstname, lastname, department,salary, birthdate) VALUES(8,'Kavya','Satheesh','Support',50000,'1992-05-07');
INSERT INTO employees (employeeid,  firstname, lastname, department,salary, birthdate) VALUES(9,'Athira','Vijay','Technical',82000,'1996-03-10');
INSERT INTO employees (employeeid,  firstname, lastname, department,salary, birthdate) VALUES(10,'Maya','Merin','Support',63000,'1991-05-08');
INSERT INTO employees (employeeid,  firstname, lastname, department,salary, birthdate) VALUES(11,'Annie','Ashna','Technical',59000,'1999-07-25');



SELECT * FROM EMPLOYEES;

/*SECOND HIGEST SALARY*/


SELECT MAX(SALARY) AS second_highest_salary
FROM EMPLOYEES
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES);

/*NUMBER OF EMPLOYEES WORKING IN EACH DEPARTMENT/*



SELECT DEPARTMENT, COUNT(EMPLOYEEID) AS EmployeeCount FROM EMPLOYEES GROUP BY DEPARTMENT;