CREATE PROCEDURE SingleCRUDOperations
    @Action VARCHAR(10),
    @EmployeeID INT = NULL,
    @FirstName VARCHAR(50) = NULL,
    @LastName VARCHAR(50) =NULL,
    @DepID INT = NULL
AS
BEGIN
    IF @Action = 'Create'
    BEGIN
        INSERT INTO employee (employeeid,firstname, lastname, depid)
        VALUES (@employeeid,@FirstName, @LastName, @DepId);
    END;

    IF @Action = 'Read'
    BEGIN
        SELECT * FROM employee ;
    END;


    IF @Action = 'Update'
    BEGIN
        UPDATE employee
        SET firstname = @FirstName, lastname = @LastName  ,depID = @DepID
        WHERE employeeid = @EmployeeId;
    END;

    IF @Action = 'Delete'
    BEGIN
        DELETE FROM employee WHERE employeeid = @EmployeeId;
    END;
END;




	EXEC SingleCRUDOperations 'Create',10,'Ahemmed','Irfan',3;
	
	EXEC SingleCRUDOperations 'Read';

	EXEC SingleCRUDOperations 'Update', 4,'Amith', 'Krishna', 1;

	EXEC SingleCRUDOperations 'Delete',6;



