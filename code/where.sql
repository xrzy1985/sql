/*
  The WHERE clause is used to filter records.

  The WHERE clause is used to extract only those
  records that fulfill a specified condition.

  = 	      Equal
  <> 	      Not equal. Note: In some versions of SQL this operator may be written as !=
  > 	      Greater than
  < 	      Less than
  >= 	      Greater than or equal
  <= 	      Less than or equal
  BETWEEN 	Between an inclusive range
  LIKE 	    Search for a pattern
  IN 	      To specify multiple possible values for a column      
*/

SELECT column1, column2, column3
FROM table_name
WHERE condition;

-- The following SQL statement will select all
-- of the customers whose country is set to the US
SELECT * FROM Customers
WHERE Country = "United States";

-- The code below will select all records from the
-- customers whose ID = 13
SELECT * FROM Customers
WHERE CustomerID=13;
