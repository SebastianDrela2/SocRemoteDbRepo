CREATE TABLE [tSQLt].[Private_Configurations]
(
[Name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [sql_variant] NULL
) ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[Private_Configurations] ADD CONSTRAINT [PK__Private___737584F77D900A00] PRIMARY KEY CLUSTERED ([Name]) ON [PRIMARY]
GO
