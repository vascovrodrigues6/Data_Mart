IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'MoneyDetailsLookup')
BEGIN
	CREATE TABLE [dbo].[MoneyDetailsLookup](
		[MoneyID] [char](20) NOT NULL,
		[Description] [varchar](55) NOT NULL,
		[Abbreviation] [varchar](55) NOT NULL,
	) ON [PRIMARY]
	INSERT [dbo].[MoneyDetailsLookup] ([MoneyID], [Description], [Abbreviation]) VALUES (N'EURO', N'Moeda Euro', N'EUR')
	INSERT [dbo].[MoneyDetailsLookup] ([MoneyID], [Description], [Abbreviation]) VALUES (N'LIBRA', N'Libras', N'GPB')
END