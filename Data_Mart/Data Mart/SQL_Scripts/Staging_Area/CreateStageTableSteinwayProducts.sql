IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SteinwayProducts')
	CREATE TABLE [dbo].[SteinwayProducts](
	[Reference] [char](18) NOT NULL,
	[Description] [char](60) NOT NULL,
	[FamilyCode] [int] NOT NULL,
	[Stock] [numeric](13, 3) NOT NULL,
	[UnitPrice] [numeric](19, 6) NOT NULL,
	[OrderPoint] [numeric](10, 3) NOT NULL,
	[SupplierNumber] [numeric](10, 0) NOT NULL,
	[MinimunStock] [numeric](13, 3) NOT NULL,
	[StartSellingDate] [date] NOT NULL,
	[Category] [varchar](25) NOT NULL,
	[Classification] [varchar](25) NOT NULL,
	[CostPrice] [numeric](19, 6) NOT NULL,
	[CaptiveQuantity] [numeric](13, 3) NOT NULL,
	[VATRate] [numeric](2, 0) NOT NULL,
	[CreationDate] [date] NOT NULL,
	[LastUpdateDate] [date] NOT NULL)
ELSE 
	TRUNCATE TABLE SteinwayProducts