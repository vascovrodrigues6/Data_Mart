IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'CustomerDQP')
	CREATE TABLE [dbo].[CustomerDQP]
	(
		[CustomerID_Stradivarius] numeric(10, 0) NULL,
		[CustomerID_Steinway] numeric(10, 0) NULL,
		[CustomerType] int NOT NULL,
		[DueDays] [numeric](3, 0) NOT NULL,
		[Plafond] [numeric](19, 6) NOT NULL,
        	[DQP] [nvarchar](100) NOT NULL
	)
ELSE 
	TRUNCATE TABLE [CustomerDQP]