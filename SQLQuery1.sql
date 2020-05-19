CREATE PROCEDURE InsertEmployee
@EmployeeID			int OUTPUT,
@FirstName			varchar(10),
@LastName			varchar(20),
@TitleOfCourtesy	varchar(25)
AS
INSERT INTO Employees
	(TitleOfCourtesy, LastName, FirstName, HireDate)
	VALUES (@TitleOfCourtesy, @LastName, @FirstName, GETDATE());
SET @EmployeeID = @@IDENTITY
GO

CREATE PROCEDURE DeleteEmployee
@EmployeeID		int
AS
DELETE FROM Employees WHERE employeeID = @EmployeeID
GO

CREATE PROCEDURE UpdateEmployee
@EmployeeID			int,
@TitleOfCourtesy	varchar(25),
@LastName			varchar(20),
@FirstName			varchar(10)
AS
UPDATE Employees
	SET TitleOfCourtesy = @TitleOfCourtesy,
	LastName = @LastName,
	FirstName = @FirstName
	WHERE employeeID = @EmployeeID
GO

CREATE PROCEDURE GetAllEmployees
AS
SELECT EmployeeID, FirstName, LastName, TitleOfCourtesy FROM Employees
GO

CREATE PROCEDURE CountEmployees
AS
SELECT COUNT(EmployeeID) FROM Employees
GO

CREATE PROCEDURE GetEmployee
@EmployeeID		int
AS
SELECT EmployeeID, FirstName, LastName, TitleOfCourtesy FROM Employees
	WHERE employeeID = @EmployeeID
GO

select * from [dbo].[Employees];

exec InsertEmployee 0,"��","��˭","eeeee";

insert into [dbo].[Categories] values (1, 'Beverages');

select * from Products; select * from User;