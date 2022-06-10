IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')
BEGIN
	CREATE TABLE [dbo].[DimCustomer](
		[CustomerKey] [int] IDENTITY(1,1) NOT NULL,
		[CustomerID_Stradivarius] numeric(10, 0) NULL,
		[CustomerID_Steinway] numeric(10, 0) NULL,
		[Name] [varchar](55) NOT NULL,
		[TaxpayerNumber] [varchar](20) NOT NULL,
		[Balance] numeric(19, 6) NOT NULL,
		[Fax] [varchar](60) NOT NULL,
		[Phone] [varchar](60) NOT NULL,
		[Contact] [varchar](30) NOT NULL,
		[Address] [varchar](55) NOT NULL,
		[ZipCode] [varchar](10) NOT NULL,
		[City] [varchar](33) NULL,
		[Location] [varchar](43) NOT NULL,
		[CustomerType] [varchar](20) NOT NULL,
		[DueDays] numeric(3, 0) NOT NULL,
		[Plafond] numeric(19, 6) NOT NULL,
		[BankAccountNumber] [varchar](28) NOT NULL,
		[Segment] [varchar](25) NULL,
		[Email] [varchar](45) NOT NULL,
		[Mobile] [varchar](45) NOT NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL,
		[IsCurrent] [nvarchar](3) NOT NULL,
	 CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED 
	(
		[CustomerKey] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]

	CREATE NONCLUSTERED INDEX [NonClusteredIndex-CustomerID_Stradivarius] ON [dbo].[DimCustomer]
	(
		[CustomerID_Stradivarius] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	
	CREATE NONCLUSTERED INDEX [NonClusteredIndex-CustomerID_Steinway] ON [dbo].[DimCustomer]
	(
		[CustomerID_Steinway] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
END