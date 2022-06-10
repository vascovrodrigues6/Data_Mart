IF NOT EXISTS (SELECT name FROM sys.tables where name = 'FactSalesDQP')
	CREATE TABLE [dbo].[FactSalesDQP](
		[ProductReference] char(18) NOT NULL,
		[Customer_Number] numeric(10,0) NOT NULL,
		[Date] date NOT NULL,
		[EmployeeNumber] numeric(6,0) NOT NULL,
		[SellerNumber] numeric(4,0) NOT NULL,
		[CompanyName] varchar(40) NULL,
		[Currency] char(20) NOT NULL,
		[SaleStamp] char(25) NULL,
		[SaleStampDetails] char(25) NOT NULL,
		[DQP] nvarchar(100) NOT NULL
		)
ELSE 
	TRUNCATE TABLE [FactSalesDQP]


