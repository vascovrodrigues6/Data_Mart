IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SteinwayFamilies')
	CREATE TABLE [dbo].[SteinwayFamilies](
	[Code] [int] NOT NULL,
	[Name] [varchar](60) NULL,
	[CreationDate] [date] NOT NULL,
	[LastUpdateDate] [date] NOT NULL)
ELSE 
	TRUNCATE TABLE SteinwayFamilies