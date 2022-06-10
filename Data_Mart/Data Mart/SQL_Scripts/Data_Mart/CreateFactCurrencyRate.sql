IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactCurrencyRate')
BEGIN
	CREATE TABLE [dbo].[FactCurrencyRate](
		[DateKey] [int] NOT NULL,
		[MoneyOriginKey] [int] NOT NULL,
		[MoneyDestinyKey] [int] NOT NULL,
		[ExchangeRate] numeric(9, 6) NOT NULL,
	 CONSTRAINT [PK_FactCurrencyRate] PRIMARY KEY CLUSTERED 
	(
		[DateKey] ASC,
		[MoneyOriginKey] ASC,
		[MoneyDestinyKey] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
END