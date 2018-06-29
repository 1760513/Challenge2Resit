CREATE TABLE [dbo].[Treatment]
(
	[PetName] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [OwnerID] INT NOT NULL, 
    [ProcedureID] NVARCHAR(MAX) NOT NULL, 
    [Date] DATE NOT NULL, 
    [Notes] NVARCHAR(MAX) NOT NULL, 
    [Price] MONEY NOT NULL
)
