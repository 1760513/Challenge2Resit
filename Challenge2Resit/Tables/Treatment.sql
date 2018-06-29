CREATE TABLE [dbo].[Treatment]
(
	[PetName] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [OwnerID] INT NOT NULL, 
    [ProcedureID] INT NOT NULL, 
    [Date] DATE NOT NULL, 
    [Notes] NVARCHAR(MAX) NOT NULL, 
    [Price] MONEY NOT NULL,
	PRIMARY KEY (PetName, OwnerID, ProcedureID),
	CONSTRAINT FK_PetName FOREIGN KEY (PetName) REFERENCES [Pet](PetName),
	CONSTRAINT FK_OwnerID FOREIGN KEY (OwnerID) REFERENCES [Owner](OwnerID),
	CONSTRAINT FK_ProcedureID FOREIGN KEY (ProcedureID) REFERENCES [Procedure](ProcedureID),
	CONSTRAINT FK_Price FOREIGN KEY (Price) REFERENCES [Procedure](Price)

)
