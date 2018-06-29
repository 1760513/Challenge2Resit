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

INSERT INTO [OWNER] (OWNERID, SURNAME, GIVENNAME, PHONE) VALUES
(1, 'Sinatra', 'Frank', 400111222),
(2, 'Ellington', 'Duke', 400222333),
(3, 'Fitzgerald', 'Ella', 400333444);

INSERT INTO [PET] (PETNAME, TYPE, OWNERID) VALUES
('Buster', 'Dog', 1),
('Fluffy', 'Cat', 1),
('Stew', 'Rabbit', 2),
('Buster', 'Dog', 3),
('Pooper', 'Dog', 3);

INSERT INTO [TREATMENT] (PETNAME, OWNERID, PROCEDUREID, DATE, NOTES, PRICE) VALUES
('Buster', 1, 01, '2017-06-20', 'Routine Vaccination', 22.00),
('Buster', 1, 01, '2018-05-15', 'Booster Shot', 24.00),
('Fluffy', 1, 10, '2018-05-10', 'Wounds sustained in apparent cat fight', 30.00),
('Stew', 2, 10, '2018-05-10', 'Wounds sustained during attempt to cook the stew', 30.00),
('Pooper', 3, 05, '2018-05-18', 'Routine Test', 25.00);

END;
