/*

You can most definitely perform a lot of different kinds of Maths within
SQL

ABS(), ACOS(), ASIN(), ATAN(), ATAN2(), COS(), SIN(), TAN(), AVG(),
CEILING(), COUNT(), DEGREES(), EXP(), FLOOR(), LOG(), MAX(), MIN(),
MOD(), PI(), POWER(), RADIANS(), RANO(), ROUND(), SQRT(), STD(),
SUM(), TRUNCATE

*/

-- Some of the MATH functions you can use within SQL

SELECT TEST_ID AS 'TEST',
-- minimum
MIN(STUDENT_SCORE) AS MIN,
-- maximum
MAX(STUDENT_SCORE) AS MAX,
-- +, _, *, or /
MAX(STUDENT_SCORE)-MIN(STUDENT_SCORE) AS 'RANGE',
-- sumation
SUM(STUDENT_SCORE) AS TOTAL,
-- average
AVG(STUDENT_SCORE) AS AVERAGE
FROM SCORES GROUP BY TEST;

-- Lets take a look at absences real quick
SELECT * FROM ABSENCES;

-- here, lets select * but rename the results to be more logical
-- also, lets look for just student_id = 1
SELECT STUDENT_ID, TEST_ID AS 'TEST NO', STUDENT_SCORE AS 'SCORES' FROM SCORES
WHERE STUDENT_ID = 1;

-- He is missing test 1 and 5
-- Lets add those real quick
INSERT INTO SCORES VALUES(1, 1, 9);

INSERT INTO SCORES VALUES(1, 5, 9);

-- Run the following queries, and see how they get differing
SELECT * FROM SCORES WHERE STUDENT_ID = 1
ORDER BY STUDENT_SCORE DESC;

-- results. That is because ORDER is different than GROUP BY
SELECT * FROM SCORES WHERE STUDENT_ID = 1
ORDER BY STUDENT_SCORE DESC;



-- Now lets REMOVE an absence from the absenses table
SELECT * FROM ABSENCES;

DELETE FROM ABSENCES WHERE STUDENT_ID = 1;

SELECT * FROM ABSENCES;

-- Poof, the absence is completely gone


DESCRIBE ABSENCES;

-- it would be useful to know if they took the test or not
-- So, lets add a column to our absences table
-- let's add a boolean field, taken_test
ALTER TABLE ABSENCES
ADD COLUMN taken_test CHAR(1) NOT NULL DEFAULT 'F'
AFTER STUDENT_ID;

--
DESCRIBE ABSENCES;

-- IF you mess up and name a column something you shouldn't have
-- remember how to alter a table using CHANGE oldName newName dataType(parameter)
ALTER TABLE absences CHANGE TEST taken_test CHAR(1);


-- Let's say we should use an ENUM type for test_taken since it will only have
-- values of True or False
ALTER TABLE ABSENCES
MODIFY COLUMN taken_test
ENUM('T', 'F') NOT NULL DEFAULT 'F';



DESCRIBE ABSENCES;

-- Now let's take a look at how to remove a single column
ALTER TABLE ABSENCES
DROP COLUMN TAKEN_TEST;


-- Let's update a score to reflect a further / lower grade
UPDATE SCORES SET STUDENT_SCORE = 9
WHERE STUDENT_ID = 1 AND TEST_ID = 2;


SELECT * FROM SCORES
WHERE STUDENT_ID = 1;


-- Lets take a look at BETWEEN which can be useful
SELECT FIRST_NAME, LAST_NAME, EMAIL
FROM STUDENTS
WHERE BIRTH_DATE BETWEEN '1980-01-01' AND '1990-01-01';



-- We can use 'lists' within sql queries
-- it is a great way to narrow a query ahead of time
-- be predefining some options
SELECT * FROM STUDENTS
WHERE FIRST_NAME IN ('JAMES', 'PENNYWISE', 'JOSHUA', 'JUSTIN', 'PRESTON', 'JOHN');
