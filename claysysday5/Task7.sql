use  claysystraining;


CREATE TABLE STUDENTS
(
	STUDENTID	INT		PRIMARY KEY,
	STUDENTNAME		VARCHAR(50),
	GENDER		VARCHAR(50),
	COURSE		VARCHAR(50),
	INSTRUCTOR  VARCHAR(50),
	DEPARTMENT	VARCHAR(50)

	);




	INSERT INTO students (studentid,  studentname, gender,course,instructor,department)VALUES(1,'Adam','Boy','CSE','Illiyas Muhammed','Engineering');
	INSERT INTO students (studentid,  studentname, gender,course,instructor,department)VALUES(2,'Mathew','Boy','MATHS','Prabu','Arts');
	INSERT INTO students (studentid,  studentname, gender,course,instructor,department)VALUES(3,'Rahul','Boy','Physics','Deva','Arts');
	INSERT INTO students (studentid,  studentname, gender,course,instructor,department)VALUES(4,'Malavika','Girl','CSE','Swetha','Engineering');
	INSERT INTO students (studentid,  studentname, gender,course,instructor,department)VALUES(5,'Ardra','Girl','ECE','Muneer','Engineering');
	INSERT INTO students (studentid,  studentname, gender,course,instructor,department)VALUES(6,'Nick','Boy','EEE','Murali','Engineering');
	INSERT INTO students (studentid,  studentname, gender,course,instructor,department)VALUES(7,'Eric','Boy','Malayalam','Rekha','Arts');
	INSERT INTO students (studentid,  studentname, gender,course,instructor,department)VALUES(8,'Asha','Girl','Physics','Deva','Arts');
	INSERT INTO students (studentid,  studentname, gender,course,instructor,department)VALUES(9,'Shibi','Girl','Maths','Prabu','Arts');
	INSERT INTO students (studentid,  studentname, gender,course,instructor,department)VALUES(10,'Bibin','Boy','ECE','Muneer','Engineering');




	CREATE PROCEDURE CreateStudent
	@StudentID INT,
    @StudentName VARCHAR(50),
    @Gender VARCHAR(50),
	@course	VARCHAR(50),
	@instructor Varchar(50),
	@department VARCHAR(50)
AS
BEGIN
    INSERT INTO STUDENTS (StudentID, StudentName,Gender,Course,Instructor,Department)
    VALUES (@StudentID, @StudentName, @Gender,@course,@instructor,@department);
END;


EXEC CreateStudent 11,'Praveen', 'Boy','Chemistry','Aravind','Science';

SELECT * FROM STUDENT;


/* UPDATE */


CREATE PROCEDURE UpdateStudent
	@StudentID INT,
    @StudentName VARCHAR(50),
    @Gender VARCHAR(50),
	@course	VARCHAR(50),
	@instructor Varchar(50),
	@department VARCHAR(50)
AS
BEGIN

UPDATE Students
    SET StudentName = @StudentName,
        Gender = @Gender,
		Course=@course,
		Instructor=@instructor,
		Department=@department
    WHERE StudentID = @StudentID;
END;

EXEC UpdateStudent 9,'Shibi','Girl','EEE','Sarath','Engineering';




/*  DELETE  */

CREATE PROCEDURE DeleteStudent
    @StudentID INT
AS
BEGIN
    DELETE FROM Students
    WHERE StudentID = @StudentID;
END;

EXEC Deletestudent 5;


/*  READ  */


CREATE PROCEDURE ReadStudent
AS
BEGIN
    SELECT * FROM STUDENTS;
END;


EXEC ReadStudent ;


/* SELECTING using more than one condition*/


CREATE PROCEDURE ReadAllStudent
    @Gender VARCHAR(50),
	@Department VARCHAR(50)

AS
BEGIN
SELECT * FROM STUDENTS WHERE Gender = @Gender AND Department=@Department
END;

EXEC  ReadAllStudent 'Girl','Engineering';


