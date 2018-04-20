/*

Let's say we want to alter a table after it has been commited to the DB

*/


-- the AFTER field, is saying where you want the field to be stored
-- in this case, after test_type
ALTER TABLE test ADD max_score INT NOT NULL AFTER test_type;


/*

Now, lets add values into the test table

*/

INSERT INTO test VALUES
  ('2018-01-01', 'Q', 15, 4, NULL),
  ('2018-01-03', 'Q', 15, 3, NULL),
  ('2018-01-05', 'T', 30, 2, NULL),
  ('2018-01-07', 'Q', 15, 1, NULL),
  ('2018-01-09', 'Q', 15, 1, NULL),
  ('2018-01-11', 'T', 30, 1, NULL),
  ('2018-01-13', 'Q', 15, 2, NULL),
  ('2018-01-15', 'Q', 15, 2, NULL),
  ('2018-01-17', 'T', 30, 4, NULL);


/*

I want to change the event_id's name, it doesn't make sense to me at the moment
So, this is how we alter and change a fields name

ALTER TABLE name CHANGE changed_from changed_to
	DATATYPE ATTRIBUTES;

		- you must define the datatype and attributes of the changes

*/

ALTER TABLE score CHANGE event_id test_id
	INT UNSIGNED NOT NULL;


  /*

  enter this data into the score table

  */

INSERT INTO score VALUES
  (1,2,5),
  (1,3,6),
  (1,4,7),
  -- MISSED DAY (1,5,8),
  (1,6,9),
  (2,2,5),
  -- MISSED DAY (2,3,6),
  -- MISSED DAY (2,4,7),
  (2,5,8),
  (2,6,9),
  (3,2,5),
  (3,3,6),
  (3,4,7),
  (3,5,8),
  (3,6,9),
  (4,2,5),
  (4,3,6),
  (4,4,7),
  (4,5,8),
  (4,6,9),
  (5,2,5),
  (5,3,6),
  (5,4,7),
  -- MISSED DAY (5,5,8),
  (5,6,9);


/*

	use DESCRIBE to see how to put your data in correctly

*/


DESCRIBE absence;

-- now enter in some data for our absence table

INSERT INTO absence VALUES
  (1, '2018-01-01'),
  (2, '2018-02-02'),
  (5, '2018-03-03'),
  (8, '2018-04-04'),
  (11, '2018-05-05');


/*

  	lets play around with our DB

*/

SELECT first_name, last_name FROM student;

-- now show your tables

SHOW tables;

-- Okay, i want to change the table names to make them plural

RENAME TABLE
  absence to absences,
  class to classes,
  score to scores,
  student to students,
  test to tests;
