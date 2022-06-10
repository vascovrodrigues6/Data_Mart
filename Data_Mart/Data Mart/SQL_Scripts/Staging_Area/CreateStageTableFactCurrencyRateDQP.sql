IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactCurrencyRateDQP')
	CREATE TABLE [dbo].[FactCurrencyRateDQP]
	(
		[DateID] [datetime] NOT NULL,
		[MoneyOriginID] [varchar](20) NOT NULL,
		[MoneyDestinyID] [varchar](20) NOT NULL,
        [DQP] [nvarchar](100) NOT NULL
	)
ELSE 
	TRUNCATE TABLE [FactCurrencyRateDQP]