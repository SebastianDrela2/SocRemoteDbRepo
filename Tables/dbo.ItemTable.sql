CREATE TABLE [dbo].[ItemTable]
(
[ID] [int] NOT NULL,
[ExpiryTime] [datetimeoffset] NULL,
[OriginalPrice] [decimal] (10, 2) NULL,
[CurrentPrice] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ItemTable] ADD CONSTRAINT [PK__ItemTabl__3214EC27F1ED41AA] PRIMARY KEY CLUSTERED ([ID]) ON [PRIMARY]
GO
