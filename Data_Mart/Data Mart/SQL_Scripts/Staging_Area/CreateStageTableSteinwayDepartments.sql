IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SteinwayDepartments')
	CREATE TABLE [dbo].[SteinwayDepartments](
	[Code] [int] NOT NULL,
	[Department] [varchar](50) NOT NULL)
ELSE 
	TRUNCATE TABLE SteinwayDepartments