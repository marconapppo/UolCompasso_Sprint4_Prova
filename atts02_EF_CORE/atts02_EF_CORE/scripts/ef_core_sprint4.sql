USE [Cidades]
GO
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 28/09/2021 20:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[DataNascimento] [datetime2](7) NOT NULL,
	[CidadeId] [uniqueidentifier] NOT NULL,
	[UltimaAtualizacao] [datetime2](7) NULL,
 CONSTRAINT [PK_Funcionarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_ALL_FUNCIONARIOS]    Script Date: 28/09/2021 20:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_ALL_FUNCIONARIOS] AS
SELECT * FROM Funcionarios;
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28/09/2021 20:13:27 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cidades]    Script Date: 28/09/2021 20:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cidades](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Populacao] [int] NOT NULL,
	[TaxaCriminalidade] [float] NOT NULL,
	[ImpostoSobreProduto] [float] NOT NULL,
	[EstadoCalamidade] [bit] NOT NULL,
	[UltimaAtualizacao] [datetime2](7) NULL,
 CONSTRAINT [PK_Cidades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcoes]    Script Date: 28/09/2021 20:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcoes](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [nvarchar](max) NULL,
	[NivelAcesso] [int] NOT NULL,
	[UltimaAtualizacao] [datetime2](7) NULL,
 CONSTRAINT [PK_Funcoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuncoesFuncionarios]    Script Date: 28/09/2021 20:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuncoesFuncionarios](
	[FuncionarioId] [uniqueidentifier] NOT NULL,
	[FuncaoId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_FuncoesFuncionarios] PRIMARY KEY CLUSTERED 
(
	[FuncaoId] ASC,
	[FuncionarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrefeitosAtuais]    Script Date: 28/09/2021 20:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrefeitosAtuais](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[InicioMandato] [datetime2](7) NOT NULL,
	[FimMandato] [datetime2](7) NOT NULL,
	[CidadeId] [uniqueidentifier] NOT NULL,
	[UltimaAtualizacao] [datetime2](7) NULL,
 CONSTRAINT [PK_PrefeitosAtuais] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210928214818_InitialMigration', N'5.0.10')
GO
INSERT [dbo].[Cidades] ([Id], [Nome], [Populacao], [TaxaCriminalidade], [ImpostoSobreProduto], [EstadoCalamidade], [UltimaAtualizacao]) VALUES (N'07a9ecea-122f-41ff-9fc9-73bab49d3f51', N'Pindamonhagaba', 157000, 37.3, 27.5, 0, NULL)
INSERT [dbo].[Cidades] ([Id], [Nome], [Populacao], [TaxaCriminalidade], [ImpostoSobreProduto], [EstadoCalamidade], [UltimaAtualizacao]) VALUES (N'74c69f6f-ae05-4cca-ba68-83dd2f3d9a74', N'São Paulo', 10000000, 87.5, 65.5, 0, CAST(N'2021-09-28T19:16:39.5833333' AS DateTime2))
INSERT [dbo].[Cidades] ([Id], [Nome], [Populacao], [TaxaCriminalidade], [ImpostoSobreProduto], [EstadoCalamidade], [UltimaAtualizacao]) VALUES (N'34cce88d-b0d2-49cc-814a-d1dfe73379fe', N'Rio de Janeiro', 8000000, 99.99, 78.5, 1, NULL)
GO
INSERT [dbo].[Funcionarios] ([Id], [Nome], [DataNascimento], [CidadeId], [UltimaAtualizacao]) VALUES (N'1376eca8-f11f-405f-828c-24608024dc61', N'Ayla Dinis Miguel
', CAST(N'1980-05-26T00:00:00.0000000' AS DateTime2), N'34cce88d-b0d2-49cc-814a-d1dfe73379fe', NULL)
INSERT [dbo].[Funcionarios] ([Id], [Nome], [DataNascimento], [CidadeId], [UltimaAtualizacao]) VALUES (N'018b69cd-e253-4cc4-a098-2d5df9e45ef6', N'Kelvin Telinhos Leão', CAST(N'1980-05-26T00:00:00.0000000' AS DateTime2), N'07a9ecea-122f-41ff-9fc9-73bab49d3f51', NULL)
INSERT [dbo].[Funcionarios] ([Id], [Nome], [DataNascimento], [CidadeId], [UltimaAtualizacao]) VALUES (N'3008da72-92f6-4493-9685-409463080ded', N'Celeste Vital Galindo
', CAST(N'1987-12-25T00:00:00.0000000' AS DateTime2), N'34cce88d-b0d2-49cc-814a-d1dfe73379fe', NULL)
INSERT [dbo].[Funcionarios] ([Id], [Nome], [DataNascimento], [CidadeId], [UltimaAtualizacao]) VALUES (N'eda81b3c-8fa2-4995-84e1-4e291d7294b3', N'Otília Mariz Semedo
', CAST(N'1980-05-26T00:00:00.0000000' AS DateTime2), N'07a9ecea-122f-41ff-9fc9-73bab49d3f51', NULL)
INSERT [dbo].[Funcionarios] ([Id], [Nome], [DataNascimento], [CidadeId], [UltimaAtualizacao]) VALUES (N'ead8d5a8-3c18-4319-948d-5854f2c18bf6', N'Kimi Sousa Bezerra
', CAST(N'1980-05-26T00:00:00.0000000' AS DateTime2), N'74c69f6f-ae05-4cca-ba68-83dd2f3d9a74', NULL)
INSERT [dbo].[Funcionarios] ([Id], [Nome], [DataNascimento], [CidadeId], [UltimaAtualizacao]) VALUES (N'91df9996-6959-4a15-8dd2-b8393028ae3f', N'Alexandre Félix Bezerril
', CAST(N'1990-03-13T00:00:00.0000000' AS DateTime2), N'74c69f6f-ae05-4cca-ba68-83dd2f3d9a74', NULL)
INSERT [dbo].[Funcionarios] ([Id], [Nome], [DataNascimento], [CidadeId], [UltimaAtualizacao]) VALUES (N'31a08fad-aaa2-4482-b180-c04be9065838', N'Eder Valcanaia Simões
', CAST(N'1980-05-26T00:00:00.0000000' AS DateTime2), N'74c69f6f-ae05-4cca-ba68-83dd2f3d9a74', NULL)
INSERT [dbo].[Funcionarios] ([Id], [Nome], [DataNascimento], [CidadeId], [UltimaAtualizacao]) VALUES (N'924fe774-3ff1-4ab5-b77d-d1515f1fcbc6', N'Esmeralda Franco Homem
', CAST(N'1980-05-26T00:00:00.0000000' AS DateTime2), N'34cce88d-b0d2-49cc-814a-d1dfe73379fe', NULL)
INSERT [dbo].[Funcionarios] ([Id], [Nome], [DataNascimento], [CidadeId], [UltimaAtualizacao]) VALUES (N'd540eec6-9528-4043-846b-ff3aa5c3fbd1', N'Nayma Feira Guerreiro
', CAST(N'1980-05-26T00:00:00.0000000' AS DateTime2), N'07a9ecea-122f-41ff-9fc9-73bab49d3f51', NULL)
GO
INSERT [dbo].[Funcoes] ([Id], [Descricao], [NivelAcesso], [UltimaAtualizacao]) VALUES (N'ab202434-25db-4224-b901-2ce065bbc783', N'Tesoureiro', 5, NULL)
INSERT [dbo].[Funcoes] ([Id], [Descricao], [NivelAcesso], [UltimaAtualizacao]) VALUES (N'8f30b898-f6ed-427c-9bf2-35177792c2ac', N'Fiscal de Trânsito I', 2, NULL)
INSERT [dbo].[Funcoes] ([Id], [Descricao], [NivelAcesso], [UltimaAtualizacao]) VALUES (N'c89d85db-9d25-4fca-b7d0-7a9682ecf930', N'Guarda Municipal', 3, NULL)
INSERT [dbo].[Funcoes] ([Id], [Descricao], [NivelAcesso], [UltimaAtualizacao]) VALUES (N'f9fcd541-dfb1-49d4-bb35-9c1a9e424bb2', N'Auxiliar de Pasta', 3, NULL)
INSERT [dbo].[Funcoes] ([Id], [Descricao], [NivelAcesso], [UltimaAtualizacao]) VALUES (N'556d95f6-caf8-46e0-b738-c9ec634c2f18', N'Fiscal de Trânsito II', 3, NULL)
INSERT [dbo].[Funcoes] ([Id], [Descricao], [NivelAcesso], [UltimaAtualizacao]) VALUES (N'6273837a-1a59-4856-a7d5-d0f15cd8b47d', N'Sanitário I', 2, NULL)
INSERT [dbo].[Funcoes] ([Id], [Descricao], [NivelAcesso], [UltimaAtualizacao]) VALUES (N'60d3e344-9b77-4725-9cbb-de413645acd1', N'Vigilante Sanitário', 6, NULL)
GO
INSERT [dbo].[FuncoesFuncionarios] ([FuncionarioId], [FuncaoId]) VALUES (N'1376eca8-f11f-405f-828c-24608024dc61', N'6273837a-1a59-4856-a7d5-d0f15cd8b47d')
INSERT [dbo].[FuncoesFuncionarios] ([FuncionarioId], [FuncaoId]) VALUES (N'018b69cd-e253-4cc4-a098-2d5df9e45ef6', N'8f30b898-f6ed-427c-9bf2-35177792c2ac')
INSERT [dbo].[FuncoesFuncionarios] ([FuncionarioId], [FuncaoId]) VALUES (N'018b69cd-e253-4cc4-a098-2d5df9e45ef6', N'c89d85db-9d25-4fca-b7d0-7a9682ecf930')
INSERT [dbo].[FuncoesFuncionarios] ([FuncionarioId], [FuncaoId]) VALUES (N'3008da72-92f6-4493-9685-409463080ded', N'556d95f6-caf8-46e0-b738-c9ec634c2f18')
INSERT [dbo].[FuncoesFuncionarios] ([FuncionarioId], [FuncaoId]) VALUES (N'eda81b3c-8fa2-4995-84e1-4e291d7294b3', N'ab202434-25db-4224-b901-2ce065bbc783')
INSERT [dbo].[FuncoesFuncionarios] ([FuncionarioId], [FuncaoId]) VALUES (N'ead8d5a8-3c18-4319-948d-5854f2c18bf6', N'60d3e344-9b77-4725-9cbb-de413645acd1')
INSERT [dbo].[FuncoesFuncionarios] ([FuncionarioId], [FuncaoId]) VALUES (N'91df9996-6959-4a15-8dd2-b8393028ae3f', N'6273837a-1a59-4856-a7d5-d0f15cd8b47d')
INSERT [dbo].[FuncoesFuncionarios] ([FuncionarioId], [FuncaoId]) VALUES (N'31a08fad-aaa2-4482-b180-c04be9065838', N'f9fcd541-dfb1-49d4-bb35-9c1a9e424bb2')
INSERT [dbo].[FuncoesFuncionarios] ([FuncionarioId], [FuncaoId]) VALUES (N'924fe774-3ff1-4ab5-b77d-d1515f1fcbc6', N'556d95f6-caf8-46e0-b738-c9ec634c2f18')
INSERT [dbo].[FuncoesFuncionarios] ([FuncionarioId], [FuncaoId]) VALUES (N'd540eec6-9528-4043-846b-ff3aa5c3fbd1', N'ab202434-25db-4224-b901-2ce065bbc783')
GO
INSERT [dbo].[PrefeitosAtuais] ([Id], [Nome], [InicioMandato], [FimMandato], [CidadeId], [UltimaAtualizacao]) VALUES (N'9cfeae5c-f850-43f9-b0b5-2f4ac326f215', N'João Balão', CAST(N'2021-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-01T00:00:00.0000000' AS DateTime2), N'74c69f6f-ae05-4cca-ba68-83dd2f3d9a74', NULL)
INSERT [dbo].[PrefeitosAtuais] ([Id], [Nome], [InicioMandato], [FimMandato], [CidadeId], [UltimaAtualizacao]) VALUES (N'8f30b898-f6ed-427c-9bf2-35177792c2ac', N'Zé Carioca', CAST(N'2021-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-01T00:00:00.0000000' AS DateTime2), N'34cce88d-b0d2-49cc-814a-d1dfe73379fe', NULL)
INSERT [dbo].[PrefeitosAtuais] ([Id], [Nome], [InicioMandato], [FimMandato], [CidadeId], [UltimaAtualizacao]) VALUES (N'305bf910-f853-43d6-99c8-c719d88fc700', N'Jaiminho da Silva', CAST(N'2021-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-31T00:00:00.0000000' AS DateTime2), N'07a9ecea-122f-41ff-9fc9-73bab49d3f51', NULL)
GO
ALTER TABLE [dbo].[Funcionarios]  WITH CHECK ADD  CONSTRAINT [FK_Funcionarios_Cidades_CidadeId] FOREIGN KEY([CidadeId])
REFERENCES [dbo].[Cidades] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Funcionarios] CHECK CONSTRAINT [FK_Funcionarios_Cidades_CidadeId]
GO
ALTER TABLE [dbo].[FuncoesFuncionarios]  WITH CHECK ADD  CONSTRAINT [FK_FuncoesFuncionarios_Funcionarios_FuncionarioId] FOREIGN KEY([FuncionarioId])
REFERENCES [dbo].[Funcionarios] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FuncoesFuncionarios] CHECK CONSTRAINT [FK_FuncoesFuncionarios_Funcionarios_FuncionarioId]
GO
ALTER TABLE [dbo].[FuncoesFuncionarios]  WITH CHECK ADD  CONSTRAINT [FK_FuncoesFuncionarios_Funcoes_FuncaoId] FOREIGN KEY([FuncaoId])
REFERENCES [dbo].[Funcoes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FuncoesFuncionarios] CHECK CONSTRAINT [FK_FuncoesFuncionarios_Funcoes_FuncaoId]
GO
ALTER TABLE [dbo].[PrefeitosAtuais]  WITH CHECK ADD  CONSTRAINT [FK_PrefeitosAtuais_Cidades_CidadeId] FOREIGN KEY([CidadeId])
REFERENCES [dbo].[Cidades] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrefeitosAtuais] CHECK CONSTRAINT [FK_PrefeitosAtuais_Cidades_CidadeId]
GO
/****** Object:  StoredProcedure [dbo].[SP_ADD_CIDADE]    Script Date: 28/09/2021 20:13:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ADD_CIDADE]

@P_Id uniqueidentifier,
@P_Nome varchar(max),
@P_Populacao INTEGER,
@P_TaxaCriminalidade DECIMAL(4,2),
@P_ImpostoSobreProduto DECIMAL(4,2),
@P_EstadoCalamidade BIT

AS
	BEGIN
		INSERT INTO Cidades (
			Id
			, Nome
			, Populacao
			, TaxaCriminalidade
			, ImpostoSobreProduto
			, EstadoCalamidade
			, UltimaAtualizacao)

		VALUES (
			@P_Id
			, @P_Nome
			, @P_Populacao
			, @P_TaxaCriminalidade
			, @P_ImpostoSobreProduto
			, @P_EstadoCalamidade
			, CURRENT_TIMESTAMP
		)
	END


GO