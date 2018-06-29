/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM [TREATMENT];
DELETE FROM [PET];
DELETE FROM [OWNER];
DELETE FROM [PROCEDURE];

INSERT INTO [PROCEDURE] (PROCEDUREID, DESCRIPTION, PRICE) VALUES
(01, 'Rabies Vaccination', 24.00),
(10, 'Examine and Treat Wound', 30.00),
(05, 'Heart Worm Test', 25.00),
(08, 'Tetnus Vaccination', 17.00);

INSERT INTO [OWNER] (OWNERID, SURNAME, GIVENNAME, PHONE, FAVOURITECAPTAIN) VALUES
(1, 'Sinatra', 'Frank', 400111222, 'Kirk'),
(2, 'Ellington', 'Duke', 400222333, 'Picard'),
(3, 'Fitzgerald', 'Ella', 400333444, 'Sisko');

INSERT INTO [PET] (PETID, PETNAME, TYPE, OWNERID) VALUES
(001, 'Buster', 'Dog', 1),
(002, 'Fluffy', 'Cat', 1),
(003, 'Stew', 'Rabbit', 2),
(004, 'Buster', 'Dog', 3),
(005, 'Pooper', 'Dog', 3);

INSERT INTO [TREATMENT] (PETID, PETNAME, OWNERID, PROCEDUREID, DATE, NOTES, PRICE) VALUES
(001, 'Buster', 1, 01, '2017-06-20', 'Routine Vaccination', 22.00),
(002, 'Buster', 1, 01, '2018-05-15', 'Booster Shot', 24.00),
(003, 'Fluffy', 1, 10, '2018-05-10', 'Wounds sustained in apparent cat fight', 30.00),
(004, 'Stew', 2, 10, '2018-05-10', 'Wounds sustained during attempt to cook the stew', 30.00),
(005, 'Pooper', 3, 05, '2018-05-18', 'Routine Test', 25.00);

END;
