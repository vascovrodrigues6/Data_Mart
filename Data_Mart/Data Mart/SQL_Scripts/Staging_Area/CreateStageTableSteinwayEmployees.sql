IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SteinwayEmployees')
	CREATE TABLE [dbo].[SteinwayEmployees](
	[Number] [numeric](6, 0) NOT NULL,
	[Initials] [varchar](3) NOT NULL,
	[Code] [varchar](20) NOT NULL,
	[Forename] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Group] [varchar](20) NOT NULL,
	[Department] [int] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Chief] [numeric](6, 0) NULL,
	[CreationDate] [date] NOT NULL,
	[LastUpdateDate] [date] NOT NULL)
ELSE 
	TRUNCATE TABLE SteinwayEmployees