-- Skolas vadības sistēmas datubāze (School Management System)
-- Izveidot datubāzi, kas reprezentē skolēnus, skolotājus,
-- kursus un departamentus, parādot dažādas attiecības starp tiem.

-- 2. uzdevums
-- Katram skolēnam (vārds un e-pasts) ir viens profils ar papildinformāciju (adrese un telefona numurs), un katram profilam pieder tikai viens skolēns.
-- Izveidot nepieciešamās datubāzes tabulas un saites, lai glabātu minētos datus.
-- Ievadīt piecu skolēnu un viņu profilu datus. Izmantot “LAST_INSERT_ID()” funkciju Izveidot vaicājumu, lai atrastu visus skolēnus kopā ar viņu profiliem.


-- 2. Uzdevums
CREATE TABLE students (
	student_id int NOT NULL auto_increment,
    first_name varchar(45) NOT NULL,
	email varchar(45) NOT NULL,
    PRIMARY KEY (student_id)
);

CREATE TABLE student_profiles (
	student_profile_id int NOT NULL auto_increment,
	address varchar(45) NOT NULL,
    phone_number int NOT NULL,
    student_id int NOT NULL,
    PRIMARY KEY (student_profile_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

		INSERT INTO students (student_id, first_name, email)
		VALUES ('11', 'John', 'example1@gmail.com');
        -- ,
-- 				('7', 'Elizabeth', 'example2@gmail.com'),
-- 				('8', 'Oliver', 'example3@gmail.com'),
-- 				('9', 'Mathew', 'example4@gmail.com'),
-- 				('10', 'Tyler', 'example5@gmail.com');

-- 		INSERT INTO student_profiles (student_profile_id, address, phone_number, student_id)
-- 		VALUES ('1', 'Saules Iela 1', '21111111', LAST_INSERT_ID()),
-- 				('2', 'Saules Iela 2', '22222222', LAST_INSERT_ID()),
-- 				('3', 'Saules Iela 3', '23333333', LAST_INSERT_ID()),
-- 				('4', 'Saules Iela 4', '24444444', LAST_INSERT_ID()),
-- 				('5', 'Saules Iela 5', '25555555', LAST_INSERT_ID());
                
                		INSERT INTO student_profiles (student_profile_id, address, phone_number, student_id)
		VALUES ('1', 'Saules Iela 1', '21111111', 1),
				('2', 'Saules Iela 2', '22222222', 2),
				('3', 'Saules Iela 3', '23333333', 3),
				('4', 'Saules Iela 4', '24444444', 4),
				('5', 'Saules Iela 5', '25555555', 5);
                
                select LAST_INSERT_ID();
                
SELECT * FROM students JOIN student_profiles WHERE students.student_id = student_profiles.student_id;