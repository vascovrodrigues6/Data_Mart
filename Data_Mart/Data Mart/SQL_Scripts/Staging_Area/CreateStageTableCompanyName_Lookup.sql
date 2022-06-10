IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'CompanyName_Lookup')
BEGIN
	CREATE TABLE [dbo].[CompanyName_Lookup](
		[StoreName] [varchar](55) NOT NULL,
		[CompanyName] [nvarchar](20) NOT NULL
	) ON [PRIMARY]
	INSERT [dbo].[CompanyName_Lookup] ([StoreName], [CompanyName]) VALUES (N'MaisSom, SA', N'Steinway')
	INSERT [dbo].[CompanyName_Lookup] ([StoreName], [CompanyName]) VALUES (N'MaisRitmo, SA', N'Stradivarius')
END