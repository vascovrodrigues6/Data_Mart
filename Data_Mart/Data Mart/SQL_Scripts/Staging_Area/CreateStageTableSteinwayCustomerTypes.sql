IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SteinwayCustomerTypes')
	CREATE TABLE [dbo].[SteinwayCustomerTypes](
	[Code] [int] NOT NULL,
	[Type] [char](20) NOT NULL)
ELSE 
	TRUNCATE TABLE SteinwayCustomerTypes