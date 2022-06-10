IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'EmployeeDQP')
	CREATE TABLE [dbo].[EmployeeDQP]
	(
		[EmployeeID] numeric(10, 0) NOT NULL,
		[Department] int NOT NULL,
		[Chief] numeric(6, 0) NULL,
        	[DQP] [nvarchar](100) NOT NULL
	)
ELSE 
	TRUNCATE TABLE [EmployeeDQP]