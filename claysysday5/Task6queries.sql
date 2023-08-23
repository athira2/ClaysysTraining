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
	INSERT INTO employee (employeeid,  firstname, lastname,depid)VALUES(5,'Ardra','Babu',);
	INSERT INTO employee (employeeid,  firstname, lastname,depid)VALUES(6,'Nick','Jhon',1);


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


/* combine necessary fields from two different tables by using primary key and foreign key constraints*/
SELECT e.employeeid, e.firstname, e.lastname, d.depid, d.name FROM EMPLOYEE e INNER JOIN DEPARTMENTS d on e.depid=d.depid;