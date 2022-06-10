IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'StradivariusEmployees')
	CREATE TABLE [dbo].[StradivariusEmployees](
	[Number] [numeric](6, 0) NOT NULL,
	[Initials] [varchar](3) NOT NULL,
	[Code] [varchar](20) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Group] [varchar](20) NOT NULL,
	[Department] [varchar](20) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Chief] [numeric](6, 0) NULL,
	[CreationDate] [date] NOT NULL,
	[LastUpdateDate] [date] NOT NULL)
ELSE 
	TRUNCATE TABLE StradivariusEmployees