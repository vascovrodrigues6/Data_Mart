IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProduct')
BEGIN
	CREATE TABLE [dbo].[DimProduct](
		[ProductKey] [int] IDENTITY(1,1) NOT NULL,
		[ProductID_Stradivarius] char(18) NULL,
		[ProductID_Steinway] char(18) NULL,
		[StartSellingDateKey] [int] NOT NULL,
		[Description] [char](60) NOT NULL,
		[FamilyName] varchar(60) NOT NULL,
		[UnitPrice_Steinway] numeric(19,6) NULL,
		[UnitPrice_Stradivarius] numeric(19,6) NULL,
		[OrderPoint] numeric(10,3) NOT NULL,
		[Category] varchar(50) NOT NULL,
		[Classification] varchar(25) NOT NULL,
		[CostPrice_Steinway] numeric (19,6) NULL,
		[CostPrice_Stradivarius] numeric (19,6) NULL,
		[VATRate] numeric (2,0) NOT NULL,
		[EffectiveDate] datetime NOT NULL,
		[ExpiredDate] datetime NULL,
		[IsCurrent] nvarchar(3) NOT NULL,
	 CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED 
	(
		[ProductKey] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]

	CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimProduct] ON [dbo].[DimProduct]
(
	[ProductID_Stradivarius] ASC,
	[ProductID_Steinway] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END