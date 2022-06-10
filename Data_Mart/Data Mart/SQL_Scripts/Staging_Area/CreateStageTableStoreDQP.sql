IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'StoreDQP')
	CREATE TABLE [dbo].[StoreDQP]
	(
		[StoreID] numeric(10, 0) NULL,
		[StoreName] varchar(55) NOT NULL,
        [DQP] [nvarchar](100) NOT NULL
	)
ELSE 
	TRUNCATE TABLE [StoreDQP]