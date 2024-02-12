CREATE TABLE [dbo].[New_table]
(
[EmployeeID] [int] NOT NULL,
[Name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Position] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Department] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Address] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AnnualSalary] [decimal] (10, 2) NOT NULL,
[ValidFrom] [datetime2] GENERATED ALWAYS AS ROW START NOT NULL,
[ValidTo] [datetime2] GENERATED ALWAYS AS ROW END NOT NULL,
PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[New_table] ADD CONSTRAINT [PK__New_tabl__7AD04FF156460CCA] PRIMARY KEY CLUSTERED ([EmployeeID]) ON [PRIMARY]
GO
