CREATE TABLE [dbo].[Treatment]
(
	[PetName] INT NOT NULL PRIMARY KEY, 
    [OwnerID] NVARCHAR(50) NOT NULL, 
    [ProcedureID] NCHAR(10) NOT NULL, 
    [Date] NCHAR(10) NOT NULL, 
    [Notes] NCHAR(10) NOT NULL, 
    [Price] NCHAR(10) NOT NULL
)
