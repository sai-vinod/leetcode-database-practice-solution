-- MySQL: Objective is to retun all the Person details along with city & state from Address table
-- But we shouldn't exclude any person just because their address details are not found in Address table.
-- So, using lEFT JOIN is appropriate in this situation
SELECT Person.firstName,
       Person.lastName,
       Address.city,
       Address.state
FROM Person
LEFT JOIN Address
ON Person.personID = Address.personID