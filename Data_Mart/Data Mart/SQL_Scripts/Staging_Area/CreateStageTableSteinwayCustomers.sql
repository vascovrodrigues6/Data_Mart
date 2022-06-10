IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SteinwayCustomers')
	CREATE TABLE [dbo].[SteinwayCustomers](
	[Name] [varchar](55) NOT NULL,
	[Number] [numeric](10, 0) NOT NULL,
	[TaxpayerNumber] [varchar](20) NOT NULL,
	[Balance] [numeric](19, 6) NOT NULL,
	[Fax] [varchar](60) NOT NULL,
	[Phone] [varchar](60) NOT NULL,
	[Contact] [varchar](30) NOT NULL,
	[Address] [varchar](55) NOT NULL,
	[ZipCode] [varchar](10) NOT NULL,
	[City] [varchar](33) NULL,
	[Location] [varchar](43) NOT NULL,
	[CustomerType] [int] NOT NULL,
	[vendedor] [numeric](4, 0) NOT NULL,
	[DueDays] [numeric](3, 0) NOT NULL,
	[Plafond] [numeric](19, 6) NOT NULL,
	[BankAccountNumber] [varchar](28) NOT NULL,
	[Segment] [varchar](50) NULL,
	[Email] [varchar](45) NOT NULL,
	[Mobile] [varchar](45) NOT NULL,
	[CreationDate] [date] NOT NULL,
	[LastUpdateDate] [date] NOT NULL)
ELSE 
	TRUNCATE TABLE SteinwayCustomers