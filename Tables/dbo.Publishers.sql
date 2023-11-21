CREATE TABLE [dbo].[Publishers]
(
[PublisherID] [int] NOT NULL,
[PublisherName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Publishers] ADD CONSTRAINT [PK__Publishe__4C657E4BA41DCA62] PRIMARY KEY CLUSTERED ([PublisherID]) ON [PRIMARY]
GO
