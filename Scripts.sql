USE [swaggy]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 31-08-2021 06:29:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[LName] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[Suburb] [varchar](50) NOT NULL,
	[Postcode] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Ctype] [varchar](50) NOT NULL,
	[CardNo] [varchar](50) NOT NULL,
	[ExpDate] [datetime] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Products]    Script Date: 31-08-2021 06:29:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Products](
	[OrderID] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[TotalSale] [money] NOT NULL,
 CONSTRAINT [PK_Order_Products] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 31-08-2021 06:29:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[CID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 31-08-2021 06:29:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[PName] [varchar](50) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitsInStock] [int] NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[SID] [int] NOT NULL,
	[ROL] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartData]    Script Date: 31-08-2021 06:29:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartData](
	[TempOrderID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[PName] [varchar](50) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCartData] PRIMARY KEY CLUSTERED 
(
	[TempOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 31-08-2021 06:29:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[SName] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[Suburb] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Postcode] [varchar](50) NOT NULL,
	[ChefName] [nvarchar](256) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (1, N'Jack', N'White', N'0425678915', N'1', N'Hill Street', N'Richmond', N'3212', N'VIC', N'VISA', N'1234567890123456', CAST(N'2015-12-12T00:00:00.000' AS DateTime), N'jack@yahoo.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (2, N'Kelly', N'Clark', N'0425789632', N'56', N'St. Kilda road', N'Southbank', N'3200', N'VIC', N'VISA', N'1234567890123456', CAST(N'2018-05-14T00:00:00.000' AS DateTime), N'Kelly@yahoo.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (47, N'Jennifer', N'Jones', N'0425987412', N'12', N'School Street', N'Richmond', N'3200', N'VIC', N'AMEX', N'123456789123456', CAST(N'2012-06-09T00:00:00.000' AS DateTime), N'Jen@yahoo.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (50, N'Test', N'test123', N'9876543210', N'Test', N'test', N'test', N'3006', N'NSW', N'VISA', N'1234123412341234', CAST(N'2021-10-14T00:00:00.000' AS DateTime), N'test2@test.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (51, N'John', N'David', N'9876543210', N'Calif', N'Calif', N'Calif', N'3006', N'NSW', N'VISA', N'1234123412341234', CAST(N'2021-08-27T00:00:00.000' AS DateTime), N'test2@test.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (52, N'Vishal', N'Reddy', N'8500790662', N'Hyd', N'Hyd', N'Hyd', N'3006', N'VIC', N'VISA', N'1234123412341234', CAST(N'2024-08-31T00:00:00.000' AS DateTime), N'test2@test.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (53, N'Test', N'TEst', N'9876543210', N'Test', N'test', N'test', N'3006', N'NSW', N'VISA', N'1234123412341234', CAST(N'2021-12-16T00:00:00.000' AS DateTime), N'test2@test.com')
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (52, 12, 1, 200.0000)
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (55, 10, 1, 35.0000)
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (56, 3, 1, 30.0000)
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (56, 10, 3, 105.0000)
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (56, 15, 1, 15.0000)
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (57, 3, 1, 30.0000)
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (57, 10, 1, 35.0000)
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (58, 10, 5, 175.0000)
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (58, 15, 3, 45.0000)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [CID]) VALUES (52, CAST(N'2012-05-24T10:44:22.093' AS DateTime), CAST(N'2012-05-26T00:00:00.000' AS DateTime), 47)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [CID]) VALUES (55, CAST(N'2021-08-11T12:23:53.320' AS DateTime), CAST(N'2021-08-16T12:23:53.320' AS DateTime), 50)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [CID]) VALUES (56, CAST(N'2021-08-11T14:55:18.770' AS DateTime), CAST(N'2021-08-16T14:55:18.770' AS DateTime), 51)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [CID]) VALUES (57, CAST(N'2021-08-31T13:45:43.593' AS DateTime), CAST(N'2021-09-05T13:45:43.593' AS DateTime), 52)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [CID]) VALUES (58, CAST(N'2021-08-31T16:08:45.043' AS DateTime), CAST(N'2021-09-05T16:08:45.043' AS DateTime), 53)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (3, N'Biryani', N'Main Course', 30.0000, 39, N'Indian', N'Indian Spicy Food', 2, 10)
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (10, N'Meat', N'Main Course', 35.0000, 8, N'UK', N'Delicious Meat', 6, 10)
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (12, N'Bacon', N'Main Course', 20.0000, 0, N'Indian', N'Meat Bacon', 2, 5)
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (15, N'Butter naun', N'Starter', 15.0000, 5, N'Indian', N'Starter', 2, 10)
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (16, N'Fries', N'Starter', 25.0000, 9, N'American', N'Fries', 7, 10)
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (31, N'Shoes', N'Fashion', 19.0000, 10, N'Fashion', N'Fashion', 7, 11)
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (32, N'Jeans', N'Levi''s', 10.0000, 100, N'Fashion', N'Fashion Jeans', 7, 11)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 
GO
INSERT [dbo].[Suppliers] ([SID], [SName], [Phone], [Email], [Address1], [Address2], [Suburb], [State], [Postcode], [ChefName]) VALUES (2, N'Indian', N'0425874123', N'nan@yahoo.com', N'50,St.Kilda road', NULL, N'SouthBank', N'VICS', N'3006', N'Nandi')
GO
INSERT [dbo].[Suppliers] ([SID], [SName], [Phone], [Email], [Address1], [Address2], [Suburb], [State], [Postcode], [ChefName]) VALUES (6, N'UK', N'0425678915', N'Breville@yahoo.com', N'14', N'St.Kilda Road', N'Southbank', N'VIC', N'3006', N'John')
GO
INSERT [dbo].[Suppliers] ([SID], [SName], [Phone], [Email], [Address1], [Address2], [Suburb], [State], [Postcode], [ChefName]) VALUES (7, N'American', N'0425578911', N'dave@yahoo.com', N'10', N'Fred', N'East', N'California', N'3008', N'David')
GO
INSERT [dbo].[Suppliers] ([SID], [SName], [Phone], [Email], [Address1], [Address2], [Suburb], [State], [Postcode], [ChefName]) VALUES (10, N'Chinese', N'0432134829', N'chujang@gmail.com', N'10', N'Alwyn', N'North', N'Calif', N'3009', N'Chu Jang')
GO
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
ALTER TABLE [dbo].[Order_Products]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order_Products] CHECK CONSTRAINT [FK_Order_Products_Orders]
GO
ALTER TABLE [dbo].[Order_Products]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products_Products] FOREIGN KEY([PID])
REFERENCES [dbo].[Products] ([PID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order_Products] CHECK CONSTRAINT [FK_Order_Products_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CID])
REFERENCES [dbo].[Customers] ([CID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SID])
REFERENCES [dbo].[Suppliers] ([SID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
