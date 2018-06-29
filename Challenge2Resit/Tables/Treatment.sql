CREATE TABLE [dbo].[Treatment]
(
	[PetName] NVARCHAR(50) NOT NULL, 
    [OwnerID] INT NOT NULL, 
	[treatmentID] INT NOT NULL,
    [ProcedureID] INT NOT NULL, 
    [Date] DATE NOT NULL, 
    [Notes] NVARCHAR(MAX) NOT NULL, 
    [Price] MONEY NOT NULL,
    [PetID] INT NOT NULL, 
    PRIMARY KEY (treatmentID),
	CONSTRAINT FK_OwnerID FOREIGN KEY (OwnerID) REFERENCES [Owner](OwnerID),
	CONSTRAINT FK_ProcedureID FOREIGN KEY (ProcedureID) REFERENCES [Procedure](ProcedureID),
	CONSTRAINT FK_PetID FOREIGN KEY (PetID) REFERENCES [Pet](PetID)
)
