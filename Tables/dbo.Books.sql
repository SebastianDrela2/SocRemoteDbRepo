CREATE TABLE [dbo].[Books]
(
[BookID] [int] NOT NULL,
[Title] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISBN] [varchar] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PublishedYear] [int] NULL,
[AuthorID] [int] NULL,
[PublisherID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Books] ADD CONSTRAINT [PK__Books__3DE0C227BB9FABCD] PRIMARY KEY CLUSTERED ([BookID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Books] ADD CONSTRAINT [UQ__Books__447D36EADB36DB62] UNIQUE NONCLUSTERED ([ISBN]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Books] ADD CONSTRAINT [FK__Books__AuthorID__5B0E7E4A] FOREIGN KEY ([AuthorID]) REFERENCES [dbo].[Authors] ([AuthorID])
GO
ALTER TABLE [dbo].[Books] ADD CONSTRAINT [FK__Books__Publisher__5C02A283] FOREIGN KEY ([PublisherID]) REFERENCES [dbo].[Publishers] ([PublisherID])
GO
