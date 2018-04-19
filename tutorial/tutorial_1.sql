DROP database if exists school;

CREATE DATABASE school;

USE school;

-- Let's create a table named student
-- and populate the table with just about
-- every kind of variable type known to MySQL


-- variable_name variable_type(parameters) addition_parameters;

CREATE TABLE student(
	-- name VARCHAR(max_number_of_chars_excepted)
    -- NOT NULL means the value can not be null
	first_name VARCHAR(30) NOT NULL,
    -- -- there has to be a value for this inside the table
    last_name VARCHAR(30) NOT NULL,
    -- the email has NULL, meaning if can have no value
    -- since not every student has an email
    email VARCHAR(100) NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(40) NOT NULL,
    -- Since we know states are only 2 letters
    -- put VARCHAR(2), here we set a DEFAULT field
    -- to 'GA' since that is where I am
    state CHAR(2) NOT NULL DEFAULT "GA",
    -- a medium sized integer
    -- UNSIGNED ensures you will not have a negative number
    zip MEDIUMINT UNSIGNED NOT NULL,
    -- there could be dashes, (), etc
    phone VARCHAR(20) NOT NULL,
    -- we will see how DATE is handled
    birth_date DATE NOT NULL,
    -- ENUM for when you know you'll have a few different specific
    -- 		choices to make or handle
    sex ENUM('M', 'F') NOT NULL,
    -- Timestamp will Date and Time
    date_entered TIMESTAMP,
    -- FLOAT variables will use decimal values
    lunch_cost FLOAT NULL,
    /* AUTO_INCREMENT	will ensure that each entry to the students table
     		will have a unique number attached
	   PRIMARY_KEY	will make this entry the primary key, meaning it has to
    		be unique ID for each student
    */
    student_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY);



    
