IF NOT EXISTS (SELECT name FROM sys.tables where name = 'FactSales')
	CREATE TABLE [dbo].[FactSales](
		[ProductKey] [int] NOT NULL,
		[CustomerKey] [int] NOT NULL,
		[DateKey] [int] NOT NULL,
		[EmployeeKey] [int] NOT NULL,
		[SellerKey] [int] NOT NULL,
		[StoreKey] [int] NOT NULL,
		[SaleDetailLineNumber] [numeric](10, 0) NOT NULL,
		[MoneyKey] [int] Not NULL,
		[Quantity] [Numeric](25,4) NOT NULL,
		[VATRate] [Numeric](19,2) NOT NULL,
		[UnitPrice] [Numeric](19,6) NOT NULL,
		[UnitPriceUniformityMoney] [Numeric] (19,6) NOT NULL,
		[GrossValue] [Numeric](19,6) NOT NULL,
		[GrossValueUniformityMoney] [Numeric](19,6) NOT NULL,
		[DiscountValue] [numeric](19,6) NOT NULL,
		[CostPrice] [Numeric](19,2) NOT NULL,
		[CostPriceUniformityMoney] [Numeric] (19,2) NOT NULL,
		[Freight] [Numeric] (19,6) NOT NULL,
		[FreightUniformityMoney] [Numeric](19,6) NOT NULL,
		[ValueForVATIncidence] [Numeric] (19,6) NOT NULL,
		[ValueForVATIncidenceUniformityMoney] [Numeric](19,6) NOT NULL,
		[VAT] [Numeric](38,7) NOT NULL,
		[VATUniformityMoney] [Numeric](38,12) NOT NULL,
		[Profit] [Numeric](24,6) NOT NULL,
		[ProfitUniformityMoney] [Numeric](24,6) NOT NULL
	 CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED 
	(
		[ProductKey] ASC,
		[CustomerKey] ASC,
		[DateKey] ASC,
		[SaleDetailLineNumber] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]


