CREATE TABLE [dbo].[Reviews]
(
[ReviewID] [int] NOT NULL,
[BookID] [int] NULL,
[ReviewerName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Rating] [int] NULL,
[Comment] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Reviews] ADD CONSTRAINT [PK__Reviews__74BC79AE24AED19A] PRIMARY KEY CLUSTERED ([ReviewID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Reviews] ADD CONSTRAINT [FK__Reviews__BookID__5EDF0F2E] FOREIGN KEY ([BookID]) REFERENCES [dbo].[Books] ([BookID])
GO
