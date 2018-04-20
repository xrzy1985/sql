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
