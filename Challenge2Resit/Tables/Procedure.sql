CREATE TABLE [dbo].[Procedure]
(
	[ProcedureID] INT NOT NULL, 
    [Description] NVARCHAR(MAX) NOT NULL, 
    [Price] MONEY NOT NULL,
	PRIMARY KEY (ProcedureID, Price)
)
