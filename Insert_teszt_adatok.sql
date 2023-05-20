USE [infomix]
GO
SET IDENTITY_INSERT [dbo].[BNOk] ON 

INSERT [dbo].[BNOk] ([BNOId], [BNOKod], [BetegsegNeve]) VALUES (2, N'A0000', N'Kolera (Vibrio cholerae 01)')
INSERT [dbo].[BNOk] ([BNOId], [BNOKod], [BetegsegNeve]) VALUES (3, N'A0100', N'Hastífusz (typhus abdominalis)')
INSERT [dbo].[BNOk] ([BNOId], [BNOKod], [BetegsegNeve]) VALUES (4, N'A0200', N'Salmonella bélhurut')
INSERT [dbo].[BNOk] ([BNOId], [BNOKod], [BetegsegNeve]) VALUES (5, N'A0510', N'Botulizmus')
INSERT [dbo].[BNOk] ([BNOId], [BNOKod], [BetegsegNeve]) VALUES (6, N'A0800', N'Rotavírus bélhurut')
SET IDENTITY_INSERT [dbo].[BNOk] OFF
GO
SET IDENTITY_INSERT [dbo].[Paciensek] ON 

INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (1, N'Józsi', N'Kiskunfélegyháza', CAST(N'2020-01-01T00:00:00.0000000' AS DateTime2), N'111222333')
INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (2, N'Géza', N'Szekszárd', CAST(N'1980-01-01T00:00:00.0000000' AS DateTime2), N'555444333')
INSERT [dbo].[Paciensek] ([PaciensId], [Nev], [Cim], [Szuletesnap], [TAJ]) VALUES (3, N'Aladár', N'Alabama', CAST(N'1960-01-01T00:00:00.0000000' AS DateTime2), N'999666999')
SET IDENTITY_INSERT [dbo].[Paciensek] OFF
GO
