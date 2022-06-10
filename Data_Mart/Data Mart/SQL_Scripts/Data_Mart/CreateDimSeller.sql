IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSeller')
BEGIN
	CREATE TABLE [dbo].[DimSeller](
		[SellerKey] [int] IDENTITY(1,1) NOT NULL,
		[SellerID] numeric(4, 0) NOT NULL,
		[ShortName] [varchar](20) NOT NULL,
		[FullName] [varchar](40) NOT NULL,
		[Address] [varchar](40) NOT NULL,
		[ZipCode] [varchar](10) NOT NULL,
		[City] [varchar](33) NULL,
		[Location] [varchar](43) NOT NULL,		
		[Phone] [varchar](60) NOT NULL,
		[Email] [varchar](45) NOT NULL,
	 CONSTRAINT [PK_DimSeller] PRIMARY KEY CLUSTERED 
	(
		[SellerKey] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]

	CREATE NONCLUSTERED INDEX [NonClusteredIndex-SellerID] ON [dbo].[DimSeller]
	(
		[SellerID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
END