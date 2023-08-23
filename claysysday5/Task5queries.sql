create database claysystraining;
use  claysystraining;


CREATE TABLE EMPLOYEE
(
	EMPLOYEEID	INT		PRIMARY KEY,
	FIRSTNAME		VARCHAR(50),
	LASTNAME		VARCHAR(50),
	DEPID			INT FOREIGN KEY REFERENCES DEPARTMENTS (DEPID)

	
	);




	INSERT INTO employee (employeeid,  firstname, lastname,depid)VALUES(1,'Adam','John',1);
	INSERT INTO employee (employeeid,  firstname, lastname,depid)VALUES(2,'Mathew','Varghese',2);
	INSERT INTO employee (employeeid,  firstname, lastname,depid)VALUES(3,'Rahul','Rajeev',3);
	INSERT INTO employee (employeeid,  firstname, lastname,depid)VALUES(4,'Syam','Kumar',4);
	INSERT INTO employee (employeeid,  firstname, lastname,depid)VALUES(5,'Ardra','Babu',3);
	INSERT INTO employee (employeeid,  firstname, lastname,depid)VALUES(6,'Nick','Jhon',1);
		INSERT INTO employee (employeeid,  firstname, lastname)VALUES(7,'Eric','Vance');



CREATE TABLE DEPARTMENTS
(
	DEPID INT PRIMARY KEY,
	NAME VARCHAR(50)
);	
	
	INSERT INTO departments (depid,name) VALUES (1,'Management');
	INSERT INTO departments (name,depid) VALUES ('Administration',2);
	INSERT INTO departments (depid,name) VALUES (3,'Technical');
	INSERT INTO departments (depid,name) VALUES (4,'Support');
	

	SELECT * FROM EMPLOYEE;
	SELECT * FROM DEPARTMENTS;

	/* INNER JOIN */


SELECT EMPLOYEE.employeeid, EMPLOYEE.firstname, EMPLOYEE.lastname, DEPARTMENTS.name
FROM EMPLOYEE
INNER JOIN DEPARTMENTS ON EMPLOYEE.depid = DEPARTMENTS.depid;

/*LEFT JOIN*/

SELECT EMPLOYEE.employeeid,EMPLOYEE.firstname, EMPLOYEE.lastname,DEPARTMENTS.name
FROM EMPLOYEE
LEFT JOIN DEPARTMENTS ON EMPLOYEE.depid = DEPARTMENTS.depid;


/*RIGHT JOIN*/

SELECT EMPLOYEE.employeeid,EMPLOYEE.firstname, EMPLOYEE.lastname,DEPARTMENTS.name
FROM EMPLOYEE
RIGHT JOIN DEPARTMENTS ON EMPLOYEE.depid = DEPARTMENTS.depid;


/*FULL JOIN*/


SELECT EMPLOYEE.employeeid,EMPLOYEE.firstname, EMPLOYEE.lastname,DEPARTMENTS.name
FROM EMPLOYEE
FULL OUTER JOIN DEPARTMENTS ON EMPLOYEE.depid = DEPARTMENTS.depid;

/*SELF JOIN*/


SELECT e1.employeeid, e1.firstname, e1.lastname, e2.employeeid AS RelativeID, e2.firstname AS RelativeFirstName, e2.lastname AS RelativeLastName
FROM  EMPLOYEE e1
JOIN EMPLOYEE e2 ON e1.lastname = e2.lastname AND e1.employeeid <> e2.employeeid;

