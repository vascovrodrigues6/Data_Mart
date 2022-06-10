IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SteinwaySales')
	CREATE TABLE [dbo].[SteinwaySales](
	[SaleStamp] [char](25) NOT NULL,
	[Year] [numeric](4, 0) NOT NULL,
	[Number] [numeric](10, 0) NOT NULL,
	[Date] [date] NOT NULL,
	[CustomerNumber] [numeric](10, 0) NOT NULL,
	[EmployeeNumber] [numeric](6, 0) NOT NULL,
	[SellerNumber] [numeric](4, 0) NOT NULL,
	[PaymentDate] [date] NOT NULL,
	[Currency] [char](20) NOT NULL,
	[ProductsGrossValue] [numeric](19, 6) NOT NULL,
	[DiscountTotal] [numeric](19, 6) NOT NULL,
	[Freight] [numeric](19, 6) NOT NULL,
	[ValueForVATIncidence] [numeric](19, 6) NOT NULL,
	[VATTotal] [numeric](19, 6) NOT NULL,
	[TotalValue] [numeric](19, 6) NOT NULL,
	[TotalCostPrices] [numeric](19, 6) NOT NULL,
	[CreationDate] [date] NOT NULL,
	[LastUpdateDate] [date] NOT NULL)
ELSE 
	TRUNCATE TABLE SteinwaySales