﻿CREATE TABLE [dbo].[Pet]
(
	[PetName] NVARCHAR(50) NOT NULL, 
    [Type] NCHAR(10) NOT NULL, 
    [OwnerID] INT NOT NULL,
	CONSTRAINT FK_OwnerID_Pet FOREIGN KEY (OwnerID) REFERENCES [Owner](OwnerID)
)
