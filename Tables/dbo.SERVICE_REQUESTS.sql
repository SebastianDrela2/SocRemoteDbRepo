CREATE TABLE [dbo].[SERVICE_REQUESTS]
(
[SERVICEREQUESTID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SERVICEID] [int] NULL,
[RECSTS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BATCHNUM] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO