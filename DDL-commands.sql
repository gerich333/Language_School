DROP DATABASE IF EXISTS language_school;
CREATE DATABASE language_school;
USE language_school;


DROP TABLE IF EXISTS cities; /* города в которых есть филиалы языковой школы */
CREATE TABLE cities (
	id SERIAL PRIMARY KEY, 
	city_name VARCHAR (100)
);



DROP TABLE IF EXISTS branches; /* филиалы */
CREATE TABLE branches (
	id SERIAL PRIMARY KEY,
	name VARCHAR (50),
	city_id BIGINT UNSIGNED NOT NULL,

	FOREIGN KEY (city_id) REFERENCES cities(id) ON UPDATE CASCADE ON DELETE CASCADE
);



DROP TABLE IF EXISTS languages; /* языки */
CREATE TABLE languages (
	id SERIAL PRIMARY KEY,
	name_language VARCHAR (100) 
);



DROP TABLE IF EXISTS students; /* студенты */
CREATE TABLE students (
	id SERIAL PRIMARY KEY,
	firstname VARCHAR (100),
	lastname VARCHAR (100)
);



DROP TABLE IF EXISTS teachers; /* преподаватели */
CREATE TABLE teachers (
	id SERIAL PRIMARY KEY,
	firstname VARCHAR (100),
	lastname VARCHAR (100)
);



DROP TABLE IF EXISTS profile_students; /* профили студентов */
CREATE TABLE profile_students (
	student_id SERIAL PRIMARY KEY,
	gender CHAR(1),
	birthday DATE,
	date_of_registration DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (student_id) REFERENCES students(id) ON UPDATE CASCADE ON DELETE CASCADE
);



DROP TABLE IF EXISTS profile_teachers; /* профили преподавателей */
CREATE TABLE profile_teachers (
	teacher_id SERIAL PRIMARY KEY,
	birthday DATE,
	from_city_id BIGINT UNSIGNED NOT NULL,
	teaching_with DATE, /* дата с которой осущесвлет обучение в школе */
	
	FOREIGN KEY (teacher_id) REFERENCES teachers(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (from_city_id) REFERENCES cities(id) ON UPDATE CASCADE ON DELETE CASCADE

);



DROP TABLE IF EXISTS courses; /* курсы - данная таблица связывает преподавателя с языком который он может преподавать*/
CREATE TABLE courses (
	id SERIAL PRIMARY KEY,
	language_id BIGINT UNSIGNED NOT NULL,
	teacher_id BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (language_id) REFERENCES languages(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (teacher_id) REFERENCES teachers(id) ON UPDATE CASCADE ON DELETE CASCADE
);



DROP TABLE IF EXISTS contracts; /* договоры - в данной таблице указываются договоры на обучение, которые заключили студенты со школой*/
CREATE TABLE contracts (
	id SERIAL PRIMARY KEY,
	student_id BIGINT UNSIGNED NOT NULL,
	course_id BIGINT UNSIGNED NOT NULL,
	branch_id BIGINT UNSIGNED NOT NULL,
	open_of_contract DATETIME DEFAULT NOW(), /* дата заключение договора*/
	close_of_contract DATE DEFAULT (DATE_ADD((open_of_contract), INTERVAL 1 YEAR)), /* дата окончание действия договора договора*/

	FOREIGN KEY (student_id) REFERENCES students(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (course_id) REFERENCES courses(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (branch_id) REFERENCES branches(id) ON UPDATE CASCADE ON DELETE CASCADE
);



DROP TABLE IF EXISTS archive; /* архив в который помещаются договора с истекшим сроком действия */
CREATE TABLE archive(
	contract_id BIGINT PRIMARY KEY,
	student_id BIGINT UNSIGNED NOT NULL,
	course_id BIGINT UNSIGNED NOT NULL,
	branch_id BIGINT UNSIGNED NOT NULL,
	open_of_contract DATETIME NOT NULL,
	close_of_contract DATE NOT NULL,
	
	FOREIGN KEY (student_id) REFERENCES students(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (course_id) REFERENCES courses(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (branch_id) REFERENCES branches(id) ON UPDATE CASCADE ON DELETE CASCADE
);



DROP TABLE IF EXISTS teaching; /* обучение - связующая таблица преподавателей и студентов (связь многие ко многим)*/
CREATE TABLE teaching (
	teacher_id BIGINT UNSIGNED NOT NULL,
	student_id BIGINT UNSIGNED NOT NULL,

	PRIMARY KEY (teacher_id, student_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (student_id) REFERENCES students(id) ON UPDATE CASCADE ON DELETE CASCADE
);



DROP TABLE IF EXISTS teachers_in_branch; /* преподаватели в филиале (связь многие ко многим)*/
CREATE TABLE  teachers_in_branch(
	branche_id BIGINT UNSIGNED NOT NULL,
	teacher_id BIGINT UNSIGNED NOT NULL,

	PRIMARY KEY (branche_id, teacher_id),
    FOREIGN KEY (branche_id) REFERENCES branches(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id) ON UPDATE CASCADE ON DELETE CASCADE
);


