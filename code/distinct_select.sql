-- A DISTINCT statement is used when the user
-- wants to return only different values

SELECT DISTINCT col1, col2, col3
FROM tableName;

-- The following statement will make a Count
-- of how many distinct entries there are in
-- the tableName, and list them as distinctCount
SELECT Count(*) AS distinctCount
FROM (SELECT DISTINCT entries FROM tableName);
