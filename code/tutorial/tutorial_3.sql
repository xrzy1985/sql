/*

We are going to create a class table, which will hold information for
class_name and class_id. We create separate tables to distinguish the data,
but also we don't have to type in science or english a million times. We
just connect tables together which we will discuss a little later. class_id is
designated as our primary key, which is going to be our link.

*/


CREATE TABLE class(
  class_name VARCHAR(30) NOT NULL,
  class_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY);


/*

Now, let's add some data to our table class inside of the school database

*/


INSERT INTO class VALUES(
  ("English", NULL),
  ("Communications", NULL),
  ("Literature", NULL),
  ("Algebra", NULL),
  ("Geometry", NULL),
  ("Trigonometry", NULL),
  ("Calculus", NULL),
  ("Earth Science", NULL),
  ("Biology", NULL),
  ("Chemestry", NULL),
  ("Physics", NULL),
  ("History", NULL),
  ("Art", NULL),
  ("Physical Education", NULL));


-- Now check to see if the data stored in the class table
SELECT * FROM class;


/*

Now, let's create the test table

*/

CREATE TABLE test(
	test_date DATE NOT NULL,
    test_type ENUM('T', 'Q') NOT NULL,
    class_id INT UNSIGNED NOT NULL,
    test_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);


/*

Now, let's create the score table

*/

CREATE TABLE score(
  student_id INT UNSIGNED NOT NULL,
  event_id INT UNSIGNED NOT NULL,
  student_score INT NOT NULL,
  /* Okay, so the reason we create the PRIMARY KEY below is simple
     student_id and event_id are not unique on their own. They will
     appear multiple times in multiple places, but if you combined the
     two, they become a unique key (primary key)
  */
  PRIMARY KEY(event_id, student_id)
);


/*

Now, let's create the absence table

*/

CREATE TABLE absence(
	student_id INT UNSIGNED NOT NULL,
    absence_date DATE NOT NULL,
    PRIMARY KEY(student_id, absence_date)
);
