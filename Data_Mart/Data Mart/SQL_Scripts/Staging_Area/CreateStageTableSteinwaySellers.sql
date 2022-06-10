IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SteinwaySellers')
	CREATE TABLE [dbo].[SteinwaySellers](
	[ShortName] [varchar](20) NOT NULL,
	[Numbner] [numeric](4, 0) NOT NULL,
	[FullName] [varchar](40) NOT NULL,
	[Address] [varchar](40) NOT NULL,
	[ZipCode] [varchar](10) NOT NULL,
	[City] [varchar](33) NOT NULL,
	[Location] [varchar](43) NOT NULL,
	[Phone] [varchar](60) NOT NULL,
	[Email] [varchar](45) NOT NULL,
	[CreationDate] [date] NOT NULL,
	[LastUpdateDate] [date] NOT NULL)
ELSE 
	TRUNCATE TABLE SteinwaySellers