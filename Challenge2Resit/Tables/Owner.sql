CREATE TABLE [dbo].[Owner]
(
	[OwnerID] INT NOT NULL PRIMARY KEY, 
    [Surname] NVARCHAR(50) NOT NULL, 
    [GivenName] NVARCHAR(50) NOT NULL, 
    [Phone] INT NOT NULL, 
    [FavouriteCaptain] NVARCHAR(50) NULL
)
