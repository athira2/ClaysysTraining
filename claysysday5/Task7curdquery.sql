
use claysysTraining;
/*implement a CURD operations with different stored procedure */

/* CREATE  */



CREATE PROCEDURE CreateEmployee
	@EmployeeID INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @DepID INT
AS
BEGIN
    INSERT INTO Employee (EmployeeID, FirstName, LastName, DepID)
    VALUES (@EmployeeID, @FirstName, @LastName, @DepID);
END;


EXEC CreateEmployee 8,'Praveen', 'Prasad', 1;

SELECT * FROM EMPLOYEE;


/* UPDATE */


CREATE PROCEDURE UpdateEmployee
	@EmployeeID INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @DepID INT
AS
BEGIN

UPDATE Employee
    SET FirstName = @FirstName,
        LastName = @LastName,
        DepID = @DepID
    WHERE EmployeeID = @EmployeeID;
END;

EXEC UpdateEmployee 3,'sharan', 'Ravu', 2;




/*  DELETE  */

CREATE PROCEDURE DeleteEmployee
    @EmployeeID INT
AS
BEGIN
    DELETE FROM Employee
    WHERE EmployeeID = @EmployeeID;
END;

EXEC DeleteEmployee 5;


/*  READ  */


CREATE PROCEDURE ReadEmployee
AS
BEGIN
    SELECT * FROM employee;
END;


EXEC ReadEmployee ;


/* SELECTING WITH ONE PARAMETER */


CREATE PROCEDURE ReadAllEmployee @Depid INT
AS
BEGIN
SELECT * FROM Employee WHERE Depid = @Depid
END;

EXEC  ReadAllEmployee 1;



/* SELECTING WITH MORE THAN ONE PARAMETER */

CREATE PROCEDURE ReadAllEmployees	
		@Depid INT,
		@LastName VARCHAR(50)
AS
BEGIN
SELECT * FROM Employee WHERE Depid = @Depid AND LastName = @LastName
End;
EXEC ReadAllEmployees 1,'John';