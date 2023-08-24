use claysysTraining;


CREATE PROCEDURE SingleStudent
    @Action VARCHAR(10),
    @StudentID INT=NULL,
    @StudentName VARCHAR=NULL,
    @Gender VARCHAR=NULL,
	@course	VARCHAR=NULL,
	@instructor Varchar=NULL,
	@department VARCHAR=NULL
AS
BEGIN
    IF @Action = 'Create'
    BEGIN
        INSERT INTO STUDENTS (StudentID, StudentName,Gender,Course,Instructor,Department)
    VALUES (@StudentID, @StudentName, @Gender,@course,@instructor,@department);
    END;

    IF @Action = 'Read'
    BEGIN
        SELECT * FROM STUDENTS ;
    END;


    IF @Action = 'Update'
    BEGIN
        UPDATE STUDENTS
			SET StudentName = @StudentName,
			Gender = @Gender,
			Course=@course,
			Instructor=@instructor,
			Department=@department
    WHERE StudentID = @StudentID;
    END;

    IF @Action = 'Delete'
    BEGIN
        DELETE FROM STUDENTS WHERE StudentID = @StudentID;
    END;
END;




	EXEC SingleStudent 'Create',12,'Aparna','Girl','Chemistry','Sam','Scince';
	
	EXEC SingleStudent 'Read';

	EXEC SingleStudent 'Update', 5,'Ardra','Girl','EEE','Nishad','Engineering';

	EXEC SingleStudent 'Delete',6;



