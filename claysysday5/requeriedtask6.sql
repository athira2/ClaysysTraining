use claysysTraining;

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
	
		
/* combine necessary fields from two different tables by using primary key and foreign key constraints*/
SELECT s.StudentID, s.StudentName, s.Gender, b.BookID, b.BookName ,b.Author FROM STUDENT s INNER JOIN BOOKS b ON s.StudentID=b.BookID;