USE [Datos Imperial V2]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 25/8/2023 12:01:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[numCompra] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[productoID] [int] NULL,
	[total] [decimal](18, 2) NULL,
 CONSTRAINT [PK__Compras__39C65CE5D08A6CD7] PRIMARY KEY CLUSTERED 
(
	[numCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Compras] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Distribuidores]    Script Date: 25/8/2023 12:01:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distribuidores](
	[distribuidorID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[tipo] [varchar](50) NULL,
 CONSTRAINT [PK__Distribu__4E307FDC25ECF057] PRIMARY KEY CLUSTERED 
(
	[distribuidorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Distribuidores] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 25/8/2023 12:01:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[productoID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[precio] [decimal](10, 2) NULL,
 CONSTRAINT [PK__Producto__69E6E0B443F0BA64] PRIMARY KEY CLUSTERED 
(
	[productoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Productos] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 25/8/2023 12:01:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursales](
	[sucursalID] [int] IDENTITY(1,1) NOT NULL,
	[ubicacion] [varchar](50) NULL,
 CONSTRAINT [PK__Sucursal__3275FA652498D0C0] PRIMARY KEY CLUSTERED 
(
	[sucursalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Sucursales] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 25/8/2023 12:01:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajadores](
	[trabajadorID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[edad] [int] NULL,
	[sucursalID] [int] NULL,
 CONSTRAINT [PK__Trabajad__7DC9AFD9B45636EA] PRIMARY KEY CLUSTERED 
(
	[trabajadorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Trabajadores] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Compras] ON 

INSERT [dbo].[Compras] ([numCompra], [fecha], [productoID], [total]) VALUES (1, CAST(N'2023-06-20' AS Date), 2, CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[Compras] ([numCompra], [fecha], [productoID], [total]) VALUES (2, CAST(N'2023-06-20' AS Date), 3, CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[Compras] ([numCompra], [fecha], [productoID], [total]) VALUES (3, CAST(N'2023-06-22' AS Date), 7, CAST(35.00 AS Decimal(18, 2)))
INSERT [dbo].[Compras] ([numCompra], [fecha], [productoID], [total]) VALUES (4, CAST(N'2023-06-22' AS Date), 2, CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[Compras] ([numCompra], [fecha], [productoID], [total]) VALUES (5, CAST(N'2023-06-22' AS Date), 2, CAST(27.00 AS Decimal(18, 2)))
INSERT [dbo].[Compras] ([numCompra], [fecha], [productoID], [total]) VALUES (6, CAST(N'2023-06-23' AS Date), 10, CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[Compras] ([numCompra], [fecha], [productoID], [total]) VALUES (7, CAST(N'2023-06-23' AS Date), 2, CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[Compras] ([numCompra], [fecha], [productoID], [total]) VALUES (8, CAST(N'2023-06-24' AS Date), 7, CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[Compras] ([numCompra], [fecha], [productoID], [total]) VALUES (9, CAST(N'2023-06-24' AS Date), 1, CAST(26.00 AS Decimal(18, 2)))
INSERT [dbo].[Compras] ([numCompra], [fecha], [productoID], [total]) VALUES (10, CAST(N'2023-06-24' AS Date), 1, CAST(35.00 AS Decimal(18, 2)))
INSERT [dbo].[Compras] ([numCompra], [fecha], [productoID], [total]) VALUES (11, CAST(N'2023-06-24' AS Date), 3, CAST(30.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Compras] OFF
GO
SET IDENTITY_INSERT [dbo].[Distribuidores] ON 

INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (1, N'Mejia.SRL', N'Utensilios')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (2, N'Spring', N'Helados')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (3, N'Bodega Saul', N'Utensilios')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (4, N'Mas Sabor', N'Saborisantes')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (5, N'Bon', N'Helados')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (6, N'Mejia.SRL', N'Utensilios')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (7, N'Spring', N'Helados')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (8, N'Bodega Saul', N'Utensilios')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (9, N'Mas Sabor', N'Saborisantes')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (10, N'Bon', N'Helados')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (11, N'Merio.SRL', N'Utensilios')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (12, N'Martinez.SRL', N'Saborisantes')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (13, N'Corripio', N'Electrodomesticos')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (14, N'Helados HR', N'Helados')
INSERT [dbo].[Distribuidores] ([distribuidorID], [nombre], [tipo]) VALUES (15, N'La sirena', N'Muebles')
SET IDENTITY_INSERT [dbo].[Distribuidores] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([productoID], [nombre], [precio]) VALUES (1, N'Helado chocolate', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([productoID], [nombre], [precio]) VALUES (2, N'Helado vainilla', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([productoID], [nombre], [precio]) VALUES (3, N'Helado fresa', CAST(14.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([productoID], [nombre], [precio]) VALUES (4, N'Baquilla grande', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([productoID], [nombre], [precio]) VALUES (5, N'Baquilla mediana', CAST(7.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([productoID], [nombre], [precio]) VALUES (6, N'Baquilla pequña', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([productoID], [nombre], [precio]) VALUES (7, N'Helado pistacho', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([productoID], [nombre], [precio]) VALUES (8, N'Sirope cherry', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([productoID], [nombre], [precio]) VALUES (9, N'Chocolate derretido', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([productoID], [nombre], [precio]) VALUES (10, N'Helado caramelo', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Productos] ([productoID], [nombre], [precio]) VALUES (11, N'Conservado de cherry', CAST(30.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Sucursales] ON 

INSERT [dbo].[Sucursales] ([sucursalID], [ubicacion]) VALUES (1, N'La caleta')
INSERT [dbo].[Sucursales] ([sucursalID], [ubicacion]) VALUES (2, N'Boca chica')
INSERT [dbo].[Sucursales] ([sucursalID], [ubicacion]) VALUES (3, N'Andres')
INSERT [dbo].[Sucursales] ([sucursalID], [ubicacion]) VALUES (4, N'Boca chica 2')
INSERT [dbo].[Sucursales] ([sucursalID], [ubicacion]) VALUES (5, N'Los frailes')
INSERT [dbo].[Sucursales] ([sucursalID], [ubicacion]) VALUES (6, N'Los frailes 2')
INSERT [dbo].[Sucursales] ([sucursalID], [ubicacion]) VALUES (7, N'Distrito nacional')
INSERT [dbo].[Sucursales] ([sucursalID], [ubicacion]) VALUES (8, N'Distrito nacional 2')
INSERT [dbo].[Sucursales] ([sucursalID], [ubicacion]) VALUES (9, N'Los frailes 3')
SET IDENTITY_INSERT [dbo].[Sucursales] OFF
GO
SET IDENTITY_INSERT [dbo].[Trabajadores] ON 

INSERT [dbo].[Trabajadores] ([trabajadorID], [nombre], [edad], [sucursalID]) VALUES (1, N'Ana perez', 32, 8)
INSERT [dbo].[Trabajadores] ([trabajadorID], [nombre], [edad], [sucursalID]) VALUES (2, N'Manuel Mendez', 24, 4)
INSERT [dbo].[Trabajadores] ([trabajadorID], [nombre], [edad], [sucursalID]) VALUES (3, N'Saul jimenes', 25, 3)
INSERT [dbo].[Trabajadores] ([trabajadorID], [nombre], [edad], [sucursalID]) VALUES (4, N'Marcos sosa', 30, 1)
INSERT [dbo].[Trabajadores] ([trabajadorID], [nombre], [edad], [sucursalID]) VALUES (5, N'Pedro Muñis', 21, 6)
INSERT [dbo].[Trabajadores] ([trabajadorID], [nombre], [edad], [sucursalID]) VALUES (6, N'Helena Suares', 20, 5)
INSERT [dbo].[Trabajadores] ([trabajadorID], [nombre], [edad], [sucursalID]) VALUES (7, N'Maria Rodriguez', 26, 2)
INSERT [dbo].[Trabajadores] ([trabajadorID], [nombre], [edad], [sucursalID]) VALUES (8, N'Ana Hernandes', 26, 6)
INSERT [dbo].[Trabajadores] ([trabajadorID], [nombre], [edad], [sucursalID]) VALUES (9, N'Yeni Medina', 31, 7)
INSERT [dbo].[Trabajadores] ([trabajadorID], [nombre], [edad], [sucursalID]) VALUES (10, N'Yefry Herez', 23, 7)
INSERT [dbo].[Trabajadores] ([trabajadorID], [nombre], [edad], [sucursalID]) VALUES (11, N'Maria Chavez', 20, 9)
SET IDENTITY_INSERT [dbo].[Trabajadores] OFF
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK__Compras__product__47DBAE45] FOREIGN KEY([productoID])
REFERENCES [dbo].[Productos] ([productoID])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK__Compras__product__47DBAE45]
GO
ALTER TABLE [dbo].[Trabajadores]  WITH CHECK ADD  CONSTRAINT [FK__Trabajado__sucur__4E88ABD4] FOREIGN KEY([sucursalID])
REFERENCES [dbo].[Sucursales] ([sucursalID])
GO
ALTER TABLE [dbo].[Trabajadores] CHECK CONSTRAINT [FK__Trabajado__sucur__4E88ABD4]
GO
