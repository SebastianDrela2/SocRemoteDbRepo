CREATE TABLE [dbo].[Orderzzz]
(
[OrderID] [int] NOT NULL,
[OrderDate] [date] NULL,
[TotalAmount] [decimal] (10, 2) NULL,
[CustomerID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orderzzz] ADD CONSTRAINT [PK__Orderzzz__C3905BAF12A31B97] PRIMARY KEY CLUSTERED ([OrderID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orderzzz] ADD CONSTRAINT [FK__Orderzzz__Custom__4EA8A765] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Cummerzz] ([CustomerID])
GO
