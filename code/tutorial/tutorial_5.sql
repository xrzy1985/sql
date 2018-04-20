/*

	now lets look at how a where statement will work

*/

SHOW TABLES;

-- lets find all students who are female

SELECT * FROM STUDENTS
WHERE SEX = 'F';

-- now lets find first and last names along with state for students who are male

SELECT FIRST_NAME, LAST_NAME, STATE FROM STUDENTS
WHERE SEX='M';

-- what about finding the students last name, first name, phone number,
-- and only students in GA

SELECT LAST_NAME, FIRST_NAME, PHONE FROM STUDENTS
WHERE STATE = 'GA';


-- A LITTLE MORE
SELECT STUDENT_ID, LAST_NAME, FIRST_NAME, SEX, DATE_ENTERED, PHONE FROM STUDENTS
WHERE STATE = 'GA';


-- SAY WE WANT ONLY THE YEAR 1985
SELECT FIRST_NAME, LAST_NAME, BIRTH_DATE FROM STUDENTS
WHERE YEAR(BIRTH_DATE) = 1985;


SELECT FIRST_NAME, LAST_NAME, BIRTH_DATE FROM STUDENTS
WHERE (YEAR(BIRTH_DATE) = 1985) AND (MONTH(BIRTH_DATE) = 01);

-- 3 statements within the where , include or + and
SELECT FIRST_NAME, LAST_NAME, BIRTH_DATE FROM STUDENTS
WHERE (YEAR(BIRTH_DATE) = 1985) AND ((MONTH(BIRTH_DATE) = 10) OR (MONTH(BIRTH_DATE) = 01));

-- see how you can use multiple statements using WHERE
-- you can nest the and or
SELECT FIRST_NAME, LAST_NAME, BIRTH_DATE FROM STUDENTS
WHERE ((STATE='GA') AND (YEAR(BIRTH_DATE) = 1985)) AND ((MONTH(BIRTH_DATE) = 10) OR (MONTH(BIRTH_DATE) = 01));

-- Here is how NOT works
SELECT * FROM STUDENTS WHERE STATE = 'GA' AND NOT FIRST_NAME = 'PENNYWISE';

-- this is how we would officially use the NULL or NOT NULL
SELECT LAST_NAME FROM STUDENTS WHERE EMAIL IS NOT NULL;

-- or

SELECT LAST_NAME FROM STUDENTS WHERE EMAIL IS NULL;

/*

	now lets look at how a where statement will work

*/

SELECT FIRST_NAME, LAST_NAME, EMAIL, SEX FROM STUDENTS
ORDER BY LAST_NAME;

-- reverse order ; just add the DESC at the end
SELECT FIRST_NAME, LAST_NAME, EMAIL, SEX FROM STUDENTS
ORDER BY LAST_NAME DESC;

-- MULTIPLE ORDER BY STATEMENTS BEING PASSED
SELECT FIRST_NAME, LAST_NAME, EMAIL, SEX FROM STUDENTS
ORDER BY LAST_NAME DESC, SEX ASC;

-- standard every day query except that it will only give you the top 5 according to primary keys
SELECT FIRST_NAME, LAST_NAME FROM STUDENTS LIMIT 5;

-- next 6?
SELECT FIRST_NAME, LAST_NAME FROM STUDENTS LIMIT 5, 11;

-- first name and last name to be concatenated
SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS 'FULL_NAME' FROM STUDENTS;

-- more than one concatenation
SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS 'NAME',
CONCAT(CITY, ", " , STATE) AS 'HOMETOWN' FROM STUDENTS;

-- LIKE choose all the students whose first name starts with a J
-- and their last name ends with a n or s
SELECT LAST_NAME, FIRST_NAME, EMAIL FROM STUDENTS
WHERE FIRST_NAME LIKE 'J%' OR LAST_NAME LIKE '%n' OR '%s';

-- Underscores match any character that could be present
-- want to find James? 4 underscores and a s
SELECT LAST_NAME, FIRST_NAME, EMAIL, SEX
FROM STUDENTS
WHERE FIRST_NAME LIKE '____S';

-- another example
SELECT LAST_NAME, FIRST_NAME, CONCAT(CITY, ", ", STATE) AS 'LOCATION', SEX
FROM STUDENTS WHERE LAST_NAME LIKE 'C____';

-- when we only want to show something once for sure
-- use DISTINCT in that situation
-- here we will get distinct values
SELECT DISTINCT STATE FROM STUDENTS ORDER BY STATE;

-- Lets see how many distinct states there actually are
-- using COUNT

SELECT COUNT(DISTINCT STATE) AS NUMBER_OF_DISTINCT_STATES_PRESENT FROM STUDENTS;

-- Lets see how many distinct students there actually are
-- using COUNT

SELECT COUNT(DISTINCT STUDENT_ID) AS NUMBER_OF_DISTINCT_STUDENTS FROM STUDENTS;

-- use count to see how many boys and girls there are
SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS 'NAME',
  COUNT(SEX = 'M') AS 'BOYS',
  COUNT(SEX='F') AS 'GIRLS'
  FROM STUDENTS;



-- You will notice that I switch from capital to lowercase
-- that is because in MySQL it does not matter

-- use count to see how many boys and girls there are
SELECT SEX, COUNT(*) FROM STUDENTS
  GROUP BY SEX;
