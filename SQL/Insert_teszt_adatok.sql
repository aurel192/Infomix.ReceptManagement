USE [infomix]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2023. 05. 21. 20:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BNOk]    Script Date: 2023. 05. 21. 20:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BNOk](
	[BNOId] [int] IDENTITY(1,1) NOT NULL,
	[BNOKod] [nvarchar](5) NOT NULL,
	[BetegsegNeve] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BNOk] PRIMARY KEY CLUSTERED 
(
	[BNOId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciensek]    Script Date: 2023. 05. 21. 20:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciensek](
	[PaciensId] [int] IDENTITY(1,1) NOT NULL,
	[Nev] [nvarchar](50) NOT NULL,
	[Cim] [nvarchar](50) NOT NULL,
	[Szuletesnap] [datetime2](7) NOT NULL,
	[TAJ] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Paciensek] PRIMARY KEY CLUSTERED 
(
	[PaciensId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receptek]    Script Date: 2023. 05. 21. 20:04:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receptek](
	[ReceptId] [int] IDENTITY(1,1) NOT NULL,
	[ReceptKiallitasDatuma] [datetime2](7) NOT NULL,
	[ReceptSzovege] [nvarchar](512) NOT NULL,
	[AltalanosJogcimmel] [bit] NOT NULL,
	[Kozgyogyellatottnak] [bit] NOT NULL,
	[EURendelkezessel] [bit] NOT NULL,
	[EUTeritesKotelesAronRendelve] [bit] NOT NULL,
	[TeljesAronRendelve] [bit] NOT NULL,
	[Helyettesitheto] [bit] NOT NULL,
	[PaciensId] [int] NOT NULL,
	[BNOId] [int] NOT NULL,
 CONSTRAINT [PK_Receptek] PRIMARY KEY CLUSTERED 
(
	[ReceptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230520123317_InitialCreate', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230520130408_Init02', N'7.0.5')
GO
SET IDENTITY_INSERT [dbo].[BNOk] ON 

INSERT [dbo].[BNOk] ([BNOId], [BNOKod], [BetegsegNeve]) VALUES (2, N'A0000', N'Kolera (Vibrio cholerae 01)')
INSERT [dbo].[BNOk] ([BNOId], [BNOKod], [BetegsegNeve]) VALUES (3, N'A0100', N'Hastífusz (typhus abdominalis)')
INSERT [dbo].[BNOk] ([BNOId], [BNOKod], [BetegsegNeve]) VALUES (4, N'A0200', N'Salmonella bélhurut')
INSERT [dbo].[BNOk] ([BNOId], [BNOKod], [BetegsegNeve]) VALUES (5, N'A0510', N'Botulizmus')
INSERT [dbo].[BNOk] ([BNOId], [BNOKod], [BetegsegNeve]) VALUES (6, N'A0800', N'Rotavírus bélhurut')
INSERT [dbo].[BNOk] ([BNOId], [BNOKod], [BetegsegNeve]) VALUES (7, N'R05H0', N'Köhögés')
SET IDENTITY_INSERT [dbo].[BNOk] OFF
GO
SET IDENTITY_INSERT [dbo].[Paciensek] ON 

INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (1, N'Józsi', N'Kiskunfélegyháza', CAST(N'2020-01-01T00:00:00.0000000' AS DateTime2), N'111222333')
INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (2, N'Géza', N'Szekszárd', CAST(N'1980-01-01T00:00:00.0000000' AS DateTime2), N'555444333')
INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (3, N'Aladár', N'Alabama', CAST(N'1960-01-01T00:00:00.0000000' AS DateTime2), N'999666999')
INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (4, N'Béla', N'Bélapátfalva', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'222111444')
INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (5, N'Cecilia', N'Celdömölk', CAST(N'1980-05-01T00:00:00.0000000' AS DateTime2), N'222111111')
INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (6, N'Dénes', N'Diósd', CAST(N'1980-05-01T00:00:00.0000000' AS DateTime2), N'222222222')
INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (7, N'Elemér', N'Esztergom', CAST(N'1990-05-01T00:00:00.0000000' AS DateTime2), N'222333333')
INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (8, N'Hugó', N'Herend', CAST(N'2000-05-01T00:00:00.0000000' AS DateTime2), N'555111444')
INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (9, N'Ilona', N'Ibrány', CAST(N'2010-05-01T00:00:00.0000000' AS DateTime2), N'111777666')
SET IDENTITY_INSERT [dbo].[Paciensek] OFF
GO
SET IDENTITY_INSERT [dbo].[Receptek] ON 

INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (9, CAST(N'2023-01-01T12:00:00.0000000' AS DateTime2), N'Aladárnak sok betegésge közül kolerára', 0, 0, 0, 0, 0, 1, 3, 2)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (10, CAST(N'2023-01-01T12:00:00.0000000' AS DateTime2), N'Aladárnak sok betegésge közül tifuszra', 0, 0, 0, 0, 0, 1, 3, 3)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (11, CAST(N'2023-01-01T12:00:00.0000000' AS DateTime2), N'Aladárnak sok betegésge közül szalmonellára', 0, 0, 0, 0, 0, 1, 3, 4)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (12, CAST(N'2023-01-01T12:00:00.0000000' AS DateTime2), N'Aladárnak sok betegésge közül Botulizmusra', 0, 0, 0, 0, 0, 1, 3, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (14, CAST(N'2023-01-01T12:00:00.0000000' AS DateTime2), N'Aladárnak sok betegésge közül Rotavirusra', 0, 0, 0, 0, 0, 1, 3, 6)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (16, CAST(N'2023-05-20T17:43:46.4778535' AS DateTime2), N'Aladarnak Rotavirusra', 0, 0, 0, 0, 0, 0, 3, 6)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (17, CAST(N'2023-05-20T18:45:15.6312938' AS DateTime2), N'Aladarnak náthás megfázásos köhögés csillapítására (modositva)', 0, 0, 0, 0, 0, 0, 3, 7)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (18, CAST(N'2023-05-20T17:45:59.0148319' AS DateTime2), N'Aladarnak Rotavirusra', 0, 0, 0, 0, 0, 0, 3, 6)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (19, CAST(N'2023-05-21T15:09:47.4710108' AS DateTime2), N'Aladarnak náthás megfázásos köhögés csillapítására (MOD)', 0, 0, 0, 0, 0, 0, 3, 7)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (36, CAST(N'2023-05-21T15:08:33.5093851' AS DateTime2), N'Aladarnak Rotavirusra', 0, 0, 0, 0, 0, 0, 3, 6)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (37, CAST(N'2023-05-21T15:08:50.8203205' AS DateTime2), N'Aladarnak Rotavirusra', 0, 0, 0, 0, 0, 0, 3, 6)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (39, CAST(N'2023-05-21T18:57:42.3651826' AS DateTime2), N'Józsefnek Robitussint! (add new)', 0, 0, 0, 0, 0, 0, 1, 7)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (40, CAST(N'2023-05-21T18:58:28.6969797' AS DateTime2), N'Aladár is köhög, kapjon Robitussint.', 0, 0, 0, 0, 0, 0, 3, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (41, CAST(N'2023-05-21T18:58:45.1752920' AS DateTime2), N'Géza is megfázott', 0, 0, 0, 0, 0, 0, 2, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (42, CAST(N'2023-05-21T18:59:12.1681642' AS DateTime2), N'Gézának más baja is van (módosítva...)', 0, 0, 0, 0, 0, 0, 2, 7)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (43, CAST(N'2023-05-21T19:06:24.2085176' AS DateTime2), N'Aladár ismét kolerás lett.
módosítva lett a recept', 0, 0, 0, 0, 0, 0, 3, 2)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (44, CAST(N'2023-05-21T19:52:12.2344672' AS DateTime2), N'Béla is beteg lett, szeretnék lapozót 1', 0, 0, 0, 0, 0, 0, 4, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (45, CAST(N'2023-05-21T19:52:23.7054400' AS DateTime2), N'Béla is beteg lett, szeretnék lapozót 2', 0, 0, 0, 0, 0, 0, 4, 3)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (46, CAST(N'2023-05-21T19:52:57.8418554' AS DateTime2), N'Béla is beteg lett, szeretnék lapozót 3', 0, 0, 0, 0, 0, 0, 4, 6)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (47, CAST(N'2023-05-21T19:53:08.9540232' AS DateTime2), N'Béla is beteg lett, szeretnék lapozót 4', 0, 0, 0, 0, 0, 0, 4, 4)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (48, CAST(N'2023-05-21T19:53:25.6821823' AS DateTime2), N'Cecilia is beteg lett, szeretnék lapozót 1', 0, 0, 0, 0, 0, 0, 5, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (49, CAST(N'2023-05-21T19:53:42.4184656' AS DateTime2), N'Cecilia is beteg lett, szeretnék lapozót 2', 0, 0, 0, 0, 0, 0, 5, 3)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (50, CAST(N'2023-05-21T19:53:53.7386613' AS DateTime2), N'Cecilia is beteg lett, szeretnék lapozót 3', 0, 0, 0, 0, 0, 0, 5, 2)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (51, CAST(N'2023-05-21T19:54:03.1312302' AS DateTime2), N'Cecilia is beteg lett, szeretnék lapozót 4', 0, 0, 0, 0, 0, 0, 5, 7)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (52, CAST(N'2023-05-21T19:54:16.3070580' AS DateTime2), N'Cecilia is beteg lett, szeretnék lapozót 5', 0, 0, 0, 0, 0, 0, 5, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (53, CAST(N'2023-05-21T19:54:34.5790756' AS DateTime2), N'Dénes nagyon beteg, szeretnék lapozót 1', 0, 0, 0, 0, 0, 0, 6, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (54, CAST(N'2023-05-21T19:54:40.3471230' AS DateTime2), N'Dénes nagyon beteg, szeretnék lapozót 2', 0, 0, 0, 0, 0, 0, 6, 3)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (55, CAST(N'2023-05-21T19:54:55.0913663' AS DateTime2), N'Dénes nagyon beteg, szeretnék lapozót 3', 0, 0, 0, 0, 0, 0, 6, 2)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (56, CAST(N'2023-05-21T19:55:12.9157824' AS DateTime2), N'Dénes nagyon beteg, szeretnék lapozót 4', 0, 0, 0, 0, 0, 0, 6, 7)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (57, CAST(N'2023-05-21T19:55:37.0358839' AS DateTime2), N'Elemér beteg, szeretnék lapozót 1', 0, 0, 0, 0, 0, 0, 7, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (58, CAST(N'2023-05-21T19:55:47.0999336' AS DateTime2), N'Elemér beteg, szeretnék lapozót 2', 0, 0, 0, 0, 0, 0, 7, 3)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (59, CAST(N'2023-05-21T19:55:57.8532999' AS DateTime2), N'Elemér beteg, szeretnék lapozót 3', 0, 0, 0, 0, 0, 0, 7, 7)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (60, CAST(N'2023-05-21T19:56:18.1724589' AS DateTime2), N'Géza beteg, szeretnék lapozót 1', 0, 0, 0, 0, 0, 0, 2, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (61, CAST(N'2023-05-21T19:56:27.4045471' AS DateTime2), N'Géza beteg, szeretnék lapozót 2', 0, 0, 0, 0, 0, 0, 2, 3)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (62, CAST(N'2023-05-21T19:56:40.4286475' AS DateTime2), N'Hugó is beteg, szeretnék lapozót 1', 0, 0, 0, 0, 0, 0, 8, 4)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (63, CAST(N'2023-05-21T19:56:46.8447687' AS DateTime2), N'Hugó is beteg, szeretnék lapozót 2', 0, 0, 0, 0, 0, 0, 8, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (64, CAST(N'2023-05-21T19:56:57.3409307' AS DateTime2), N'Hugó is beteg, szeretnék lapozót 3', 0, 0, 0, 0, 0, 0, 8, 6)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (65, CAST(N'2023-05-21T19:57:06.8610456' AS DateTime2), N'Hugó is beteg, szeretnék lapozót 4', 0, 0, 0, 0, 0, 0, 8, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (66, CAST(N'2023-05-21T19:57:15.3971500' AS DateTime2), N'Hugó is beteg, szeretnék lapozót 5', 0, 0, 0, 0, 0, 0, 8, 7)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (67, CAST(N'2023-05-21T19:57:26.5261985' AS DateTime2), N'Hugó is beteg, szeretnék lapozót 6', 0, 0, 0, 0, 0, 0, 8, 3)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (68, CAST(N'2023-05-21T19:57:45.3095396' AS DateTime2), N'Ilona a legbetegebb, szeretnék lapozót 1', 0, 0, 0, 0, 0, 0, 9, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (69, CAST(N'2023-05-21T19:57:52.4456831' AS DateTime2), N'Ilona a legbetegebb, szeretnék lapozót 2', 0, 0, 0, 0, 0, 0, 9, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (70, CAST(N'2023-05-21T19:58:02.7019642' AS DateTime2), N'Ilona a legbetegebb, szeretnék lapozót 3', 0, 0, 0, 0, 0, 0, 9, 3)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (71, CAST(N'2023-05-21T19:58:12.2219575' AS DateTime2), N'Ilona a legbetegebb, szeretnék lapozót 4', 0, 0, 0, 0, 0, 0, 9, 7)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (72, CAST(N'2023-05-21T19:58:23.2540330' AS DateTime2), N'Ilona a legbetegebb, szeretnék lapozót 5', 0, 0, 0, 0, 0, 0, 9, 6)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (73, CAST(N'2023-05-21T19:58:33.3182752' AS DateTime2), N'Ilona a legbetegebb, szeretnék lapozót 6', 0, 0, 0, 0, 0, 0, 9, 7)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (74, CAST(N'2023-05-21T19:58:42.9342810' AS DateTime2), N'Ilona a legbetegebb, szeretnék lapozót 7', 0, 0, 0, 0, 0, 0, 9, 3)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (75, CAST(N'2023-05-21T19:58:51.6463887' AS DateTime2), N'Ilona a legbetegebb, szeretnék lapozót 8', 0, 0, 0, 0, 0, 0, 9, 7)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (76, CAST(N'2023-05-21T19:59:02.7026358' AS DateTime2), N'Ilona a legbetegebb, szeretnék lapozót 9', 0, 0, 0, 0, 0, 0, 9, 6)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (77, CAST(N'2023-05-21T19:59:31.9669205' AS DateTime2), N'József nem lábalt ki a betegségből 1', 0, 0, 0, 0, 0, 0, 1, 5)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (78, CAST(N'2023-05-21T19:59:40.2469468' AS DateTime2), N'József nem lábalt ki a betegségből 2', 0, 0, 0, 0, 0, 0, 1, 3)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (79, CAST(N'2023-05-21T19:59:50.6311529' AS DateTime2), N'József nem lábalt ki a betegségből 3', 0, 0, 0, 0, 0, 0, 1, 3)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (80, CAST(N'2023-05-21T20:00:01.1112811' AS DateTime2), N'József nem lábalt ki a betegségből 4', 0, 0, 0, 0, 0, 0, 1, 2)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (81, CAST(N'2023-05-21T20:00:16.2074124' AS DateTime2), N'József nem lábalt ki a betegségből 5', 0, 0, 0, 0, 0, 0, 1, 2)
INSERT [dbo].[Receptek] ([ReceptId], [ReceptKiallitasDatuma], [ReceptSzovege], [AltalanosJogcimmel], [Kozgyogyellatottnak], [EURendelkezessel], [EUTeritesKotelesAronRendelve], [TeljesAronRendelve], [Helyettesitheto], [PaciensId], [BNOId]) VALUES (82, CAST(N'2023-05-21T20:00:31.7286082' AS DateTime2), N'József nem lábalt ki a betegségből 6', 0, 0, 0, 0, 0, 0, 1, 7)
SET IDENTITY_INSERT [dbo].[Receptek] OFF
GO
ALTER TABLE [dbo].[Receptek]  WITH CHECK ADD  CONSTRAINT [FK_Receptek_BNOk_BNOId] FOREIGN KEY([BNOId])
REFERENCES [dbo].[BNOk] ([BNOId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Receptek] CHECK CONSTRAINT [FK_Receptek_BNOk_BNOId]
GO
ALTER TABLE [dbo].[Receptek]  WITH CHECK ADD  CONSTRAINT [FK_Receptek_Paciensek_PaciensId] FOREIGN KEY([PaciensId])
REFERENCES [dbo].[Paciensek] ([PaciensId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Receptek] CHECK CONSTRAINT [FK_Receptek_Paciensek_PaciensId]
GO
