CREATE TABLE [dbo].[EmployeeHistory]
(
[EmployeeID] [int] NOT NULL,
[Name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Position] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Department] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Address] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AnnualSalary] [decimal] (10, 2) NOT NULL,
[ValidFrom] [datetime2] NOT NULL,
[ValidTo] [datetime2] NOT NULL
) ON [PRIMARY]
WITH
(
DATA_COMPRESSION = PAGE
)
GO
CREATE CLUSTERED INDEX [ix_EmployeeHistory] ON [dbo].[EmployeeHistory] ([ValidTo], [ValidFrom]) WITH (DATA_COMPRESSION = PAGE) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Employee]
(
[EmployeeID] [int] NOT NULL,
[Name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Position] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Department] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Address] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AnnualSalary] [decimal] (10, 2) NOT NULL,
[ValidFrom] [datetime2] GENERATED ALWAYS AS ROW START NOT NULL,
[ValidTo] [datetime2] GENERATED ALWAYS AS ROW END NOT NULL,
PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo),
CONSTRAINT [PK__Employee__7AD04FF16AB86CCA] PRIMARY KEY CLUSTERED ([EmployeeID]) ON [PRIMARY]
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [dbo].[EmployeeHistory])
)
GO
