CREATE TABLE [dbo].[JoinTableB]
(
[B_PK] [int] NULL,
[B_FK_A] [int] NULL,
[B_H_NameMatched] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[B_J_NameMatched] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Data_B] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
