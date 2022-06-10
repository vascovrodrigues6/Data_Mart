IF NOT EXISTS (SELECT name FROM sys.tables where name = 'DimStore')
BEGIN
	CREATE TABLE [dbo].[DimStore](
		[StoreKey] [int] IDENTITY(1,1) NOT NULL,
		[StoreID] [numeric](10, 0) NOT NULL,
		[StoreName] [varchar](55) NOT NULL,
		[CompanyName] [nvarchar](20) NOT NULL,
		[City] [varchar](43) NOT NULL,
		[ZipCode] [varchar](45) NOT NULL,
		[Address] [varchar](50) NOT NULL,
		[Phone] [varchar](60) NOT NULL,
		[Fax] [varchar](60) NOT NULL,
		[Contact] [varchar](40) NOT NULL,
		[Email] [varchar](45) NOT NULL,
		[Mobile] [varchar](45) NOT NULL,
		[EffectiveDate] [datetime] NULL,
		[ExpiredDate] [datetime] NULL,
		[IsCurrent] [nvarchar](3) NULL,
	 CONSTRAINT [PK_DimStore] PRIMARY KEY CLUSTERED 
	(
		[StoreKey] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]

	CREATE NONCLUSTERED INDEX [NonClusteredIndex-DimStore] ON [dbo].[DimStore]
(
	[StoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END


