/*
  Next, we will create a student to store within the database students

*/

INSERT INTO students VALUE
("James", 										              -- first name
	"Patterson", 								              -- last name
    "james.patterson@themerakicode.com",		-- email
	"119 Nth Main St.", 						          -- street
    "Chatsworth", 								          -- address
    "GA", 										              -- state
    30701, 										              -- zip
    "(470) 383-1136", 							        -- phone
    "1985-10-16",								            -- date yyyy-mm-dd
    "M",										                -- ENUM M;F
    NOW(),										              -- timestamp
  5.50,									  	                -- lunch cost float
    NULL);										              -- id (NULL)


/*
    Okay, you need to create at least 10 different students to enter
    into the student table inside of the school database
*/
