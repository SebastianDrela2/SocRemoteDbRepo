CREATE TABLE [dbo].[YourTableName]
(
[ID] [int] NULL,
[StoreTimeZone] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExpiryTime] [datetimeoffset] NULL,
[OriginalPrice] [decimal] (10, 2) NULL,
[CurrentPrice] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
