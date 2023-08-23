

create database claysystraining;
use  claysystraining;


CREATE TABLE STUDENT
(
	STUDENTID	INT		PRIMARY KEY,
	STUDENTNAME		VARCHAR(50),
	GENDER		VARCHAR(50),

	);




	INSERT INTO student (studentid,  studentname, gender)VALUES(1,'Adam','Boy');
	INSERT INTO student (studentid,  studentname, gender)VALUES(2,'Mathew','Boy');
	INSERT INTO student (studentid,  studentname, gender)VALUES(3,'Rahul','Boy');
	INSERT INTO student (studentid,  studentname, gender)VALUES(4,'Malavika','Girl');
	INSERT INTO student (studentid,  studentname, gender)VALUES(5,'Ardra','Girl');
	INSERT INTO student (studentid,  studentname, gender)VALUES(6,'Nick','Boy');
	INSERT INTO student (studentid,  studentname, gender)VALUES(7,'Eric','Boy');
	INSERT INTO student (studentid,  studentname, gender)VALUES(8,'Asha','Girl');
	INSERT INTO student (studentid,  studentname, gender)VALUES(9,'Shibi','Girl');
	INSERT INTO student (studentid,  studentname, gender)VALUES(10,'Bibin','Boy');




CREATE TABLE BOOKS
(
	BOOKID INT PRIMARY KEY,
	BOOKNAME VARCHAR(50),
	AUTHOR VARCHAR(50),
	STUDENTID			INT FOREIGN KEY REFERENCES STUDENT (STUDENTID)

);	
	
	INSERT INTO books (bookid,bookname,author,studentid) VALUES (1,'Snow Crash', 'Neal Stephenson',1);
	INSERT INTO books (bookid,bookname,author,studentid) VALUES(2,'Gone Girl', 'Gillian Flynn',2);
	INSERT INTO books (bookid,bookname,author,studentid) VALUES (3,'Pride and Prejudice','Jane Austen',4);
	INSERT INTO books (bookid,bookname,author,studentid) VALUES (4,'The Great Gatsby','F. Scott Fitzgerald',5);
	

	

/* INNER JOIN  createa table with matching student id's  */


SELECT STUDENT.StudentID,STUDENT.StudentName,STUDENT.Gender,BOOKS.Bookname,BOOKS.Author
FROM STUDENT
INNER JOIN BOOKS ON BOOKS.StudentID=STUDENT.StudentID;



/*LEFT JOIN students from student table matching with book table including null values (students who have not taken any books) */


SELECT STUDENT.StudentID,STUDENT.StudentName,STUDENT.Gender,BOOKS.Bookname,BOOKS.Author 
FROM STUDENT
LEFT JOIN BOOKS ON BOOKS.StudentID=STUDENT.StudentID;



/*RIGHT JOIN  students from book table id's matching with the student table id's(students who takes the books)*/

SELECT STUDENT.StudentID,STUDENT.StudentName,STUDENT.Gender ,BOOKS.Bookname,BOOKS.Author
FROM STUDENT
RIGHT JOIN BOOKS ON BOOKS.StudentID=STUDENT.StudentID;



/*FULL JOIN  combine all rows in both table including null values*/


SELECT STUDENT.StudentID,STUDENT.StudentName,STUDENT.Gender,BOOKS.Bookname,BOOKS.Author
FROM STUDENT
FULL OUTER JOIN BOOKS ON BOOKS.StudentID=STUDENT.StudentID;


/*SELF JOIN   joins the table itself*/

SELECT s1.StudentName AS  Student1, s2.StudentName AS StudentName2,  s1.Gender
FROM STUDENT s1,STUDENT s2 
WHERE s1.StudentID<>s2.StudentID
AND s1.Gender=s2.Gender;