IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'ProductDQP')
	CREATE TABLE [dbo].[ProductDQP]
	(
		[ProductID_Steinway] [char](18) NULL,
		[ProductID_Stradivarius] [char](18) NULL,
		[StartSellingDate] date NOT NULL,
		[FamilyCode] int NULL,
        [DQP] [nvarchar](100) NOT NULL
	)
ELSE 
	TRUNCATE TABLE [ProductDQP]