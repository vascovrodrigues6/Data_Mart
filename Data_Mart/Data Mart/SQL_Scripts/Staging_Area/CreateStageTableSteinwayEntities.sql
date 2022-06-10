IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SteinwayEntities')
	CREATE TABLE [dbo].[SteinwayEntities](
	[Name] [varchar](55) NOT NULL,
	[Number] [numeric](10, 0) NOT NULL,
	[TaxpayerNumber] [varchar](20) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[ZipCode] [varchar](45) NOT NULL,
	[City] [varchar](43) NOT NULL,
	[Phone] [varchar](60) NOT NULL,
	[Fax] [varchar](60) NOT NULL,
	[Contact] [varchar](40) NOT NULL,
	[Job] [varchar](20) NOT NULL,
	[Email] [varchar](45) NOT NULL,
	[Mobile] [varchar](45) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL)
ELSE 
	TRUNCATE TABLE SteinwayEntities