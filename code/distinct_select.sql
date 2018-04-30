-- A DISTINCT statement is used when the user
-- wants to return only different values

SELECT DISTINCT col1, col2, col3
FROM tableName;

-- The following statement will make a Count
-- of how many distinct entries there are in
-- the tableName, and list them as distinctCount
SELECT Count(*) AS distinctCount
FROM (SELECT DISTINCT entries FROM tableName);

-- if you want to select distinct values
-- from two separate tables
-- Union will yield unique values
select distinct value from (
    select value from table_1
    union 
    select value from table_2
) t

-- Union All will yield all values
select distinct value from (
    select value from table_1
    unionAll
    select value from table_2
) t
