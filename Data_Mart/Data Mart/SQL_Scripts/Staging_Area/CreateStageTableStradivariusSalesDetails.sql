IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'StradivariusSalesDetails')
	CREATE TABLE [dbo].[StradivariusSalesDetails](
	[SaleDetailStamp] [char](25) NOT NULL,
	[SaleStamp] [char](25) NOT NULL,
	[Year] [numeric](4, 0) NOT NULL,
	[Number] [varchar](20) NOT NULL,
	[Date] [date] NOT NULL,
	[SaleDetailLineNumber] [numeric](10, 0) NOT NULL,
	[ProductReference] [char](18) NOT NULL,
	[Quantity] [numeric](14, 4) NOT NULL,
	[VATRate] [numeric](19, 2) NOT NULL,
	[UnitPrice] [numeric](19, 6) NOT NULL,
	[GrossValue] [numeric](19, 6) NOT NULL,
	[DiscountValue] [numeric](19, 6) NOT NULL,
	[CostPrice] [numeric](19, 2) NOT NULL,
	[CreationDate] [date] NOT NULL,
	[LastUpdateDate] [date] NOT NULL)
ELSE 
	TRUNCATE TABLE StradivariusSalesDetails