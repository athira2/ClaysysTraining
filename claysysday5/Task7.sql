
use claysysTraining;
/*implement a CURD operations with different stored procedure */

/* CREATE  */



CREATE PROCEDURE CreateStudent
	@StudentID INT,
    @StudentName VARCHAR(50),
    @Gender VARCHAR(50)
AS
BEGIN
    INSERT INTO STUDENT (StudentID, StudentName,Gender)
    VALUES (@StudentID, @StudentName, @Gender);
END;


EXEC CreateStudent 11,'Praveen', 'Boy';

SELECT * FROM STUDENT;


/* UPDATE */


CREATE PROCEDURE UpdateStudent
	@StudentID INT,
    @StudentName VARCHAR(50),
    @Gender VARCHAR(50)
AS
BEGIN

UPDATE Student
    SET StudentName = @StudentName,
        Gender = @Gender
    WHERE StudentID = @StudentID;
END;

EXEC UpdateStudent 3,'Keerthy', 'Girl';




/*  DELETE  */

CREATE PROCEDURE DeleteStudent
    @StudentID INT
AS
BEGIN
    DELETE FROM Student
    WHERE StudentID = @StudentID;
END;

EXEC Deletestudent 5;


/*  READ  */


CREATE PROCEDURE ReadStudent
AS
BEGIN
    SELECT * FROM STUDENT;
END;


EXEC ReadStudent ;


/* SELECTING */


CREATE PROCEDURE ReadAllStudents
    @Gender VARCHAR(50)

AS
BEGIN
SELECT * FROM STUDENT WHERE Gender = @Gender
END;

EXEC  ReadAllStudents 'Boy';



