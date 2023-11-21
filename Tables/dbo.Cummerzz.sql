CREATE TABLE [dbo].[Cummerzz]
(
[CustomerID] [int] NOT NULL,
[CustomerName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cummerzz] ADD CONSTRAINT [PK__Cummerzz__A4AE64B836017B8E] PRIMARY KEY CLUSTERED ([CustomerID]) ON [PRIMARY]
GO
