USE language_school;

/* ТРИГГЕРЫ */

/* 1. Триггер, который не дает зачислить в школу студентов которым больше 18 лет. */

DELIMITER //
CREATE TRIGGER check_student_gender
BEFORE INSERT
ON profile_students FOR EACH ROW 
BEGIN 
	IF
	NEW.birthday <= date_sub(now(), INTERVAL 18 year) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Студент не может быть зачислен в школу так как он слишком взрослый! ';
	END IF;
END//
DELIMITER ;
/*
CALL sp_student_add('Ivan', 'Fedorov', 'm', '2005-12-23', 1, 1, @tran_result);
SELECT @tran_result;
*/


/* 2. Триггер, который не дает продливать действие существующего договора, если он истек */

DELIMITER //
CREATE TRIGGER check_contracts_close_of_contract
BEFORE UPDATE 
ON contracts FOR EACH ROW 
BEGIN 
	IF 
	NEW.close_of_contract > date_add(NEW.open_of_contract, INTERVAL 1 YEAR) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Договор не может быть продлен! Необходимо создать новый договор!';
	END IF;
END//
DELIMITER ;
/*
UPDATE contracts 
	SET close_of_contract = '2023-01-12'
	WHERE contracts.id = 1;

UPDATE contracts 
	SET close_of_contract = '2023-05-12'
	WHERE contracts.id = 1;
*/





/* ПРОЦЕДУРЫ */

/* 1. Процедура добавления студента. */

DELIMITER //
CREATE PROCEDURE language_school.sp_student_add (
	firstname VARCHAR (100),
	lastname VARCHAR (100),
	gender CHAR (1),
	birthday DATE,
	branch_id BIGINT,
	course_id BIGINT,
	OUT tran_result VARCHAR (100)
	)

BEGIN
	DECLARE code varchar(100);
	DECLARE error_description varchar(100); 
	DECLARE _rollback BIT DEFAULT b'0';
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
	BEGIN
		SET _rollback = b'1';
		GET stacked DIAGNOSTICS CONDITION 1
			code = RETURNED_SQLSTATE, error_description = MESSAGE_TEXT;
		SET tran_result = concat('ОШИБКА: ', code, ' Текст ошибки: ', error_description);
	END;
	
	START TRANSACTION;
	INSERT INTO students (firstname, lastname)
	VAlUES
		(firstname, lastname);

	INSERT INTO profile_students (student_id, gender, birthday)
	VALUES
		(last_insert_id(), gender, birthday);

	INSERT INTO contracts (student_id, course_id, branch_id)
	VALUES 
		(last_insert_id(), course_id , branch_id );

	IF _rollback THEN
		ROLLBACK;
	ELSE
		SET tran_result = 'COMLETE';
		COMMIT;
	END IF;
END//
DELIMITER ;
/*
CALL sp_student_add('Ivan', 'Fedorov', 'm', '2005-12-23', 1, 1, @tran_result);
SELECT @tran_result;

SELECT * FROM students s
LEFT JOIN profile_students ps ON s.id = ps.student_id
ORDER BY s.id DESC;
*/



/* 2. Процедура перемещение договора в архив*/

DELIMITER //
CREATE PROCEDURE language_school.sp_closure_contract (contract_id BIGINT)
	
BEGIN 
	SELECT id, student_id, course_id, branch_id, open_of_contract, close_of_contract
	INTO @id, @student_id, @course_id, @branch_id, @open_of_contract, @close_of_contract FROM contracts
	WHERE contracts.id = contract_id;

	START TRANSACTION;
	DELETE FROM contracts c
		WHERE c.id = contract_id;
		
	INSERT INTO archive (contract_id, student_id, course_id, branch_id, open_of_contract, close_of_contract)
		VALUES
			(@id, @student_id, @course_id, @branch_id, @open_of_contract, @close_of_contract);
END//
DELIMITER ;
/*
CALL sp_closure_contract (3);
SELECT * FROM archive;
SELECT * FROM contracts c;
*/





/* ПРЕДСТАВЛЕНИЯ */

/* 1. Таблица представляющая студента, филиал и город в котором он обучается. */

CREATE OR REPLACE VIEW v_students_in_branch
AS
SELECT
	s.id AS student_id,
	concat(s.firstname, ' ', s.lastname) AS STUDENT,
	b.name AS BRANCH,
	c2.city_name AS CITY
FROM students s 
	JOIN contracts c ON s.id = c.student_id 
	JOIN branches b ON c.branch_id = b.id
	JOIN cities c2 ON b.city_id = c2.id
GROUP BY s.id
ORDER BY s.id;
/*
SELECT * FROM v_students_in_branch;
*/



/* 2. Таблица представляющая преподавателя, язык которому он может обучать и филиал в котором он преподает. */

CREATE OR REPLACE VIEW v_teacher_in_branch
AS
SELECT
	t.id AS teacher_id,
	CONCAT(t.firstname, ' ', t.lastname) AS TEACHER,
	l.name_language AS `LANGUAGE`,
	b.name AS branch
FROM teachers t 
	JOIN courses c ON t.id = c.teacher_id
	JOIN languages l ON c.language_id = l.id
	JOIN teachers_in_branch tib ON t.id = tib.teacher_id 
	JOIN branches b ON tib.branche_id = b.id
ORDER BY t.id;
/*
SELECT * FROM v_teacher_in_branch;
*/





/* ЗАДАЧИ */

/* 1. Выяснить загруженность каждого филиала, т е сколько студентов обучается в каждом филиале. */
	
SELECT 
	vsib.BRANCH,
	COUNT(vsib.student_id) AS 'QUANTITY_STUDENTS'
FROM  v_students_in_branch vsib 
	GROUP BY vsib.BRANCH;


/* 2. Выяснить загруженность каждого преподавателя, т е сколько студентов обучается у каждого преподавателя. */

SELECT 
	CONCAT(t.firstname, ' ', t.lastname) AS TEACHER,
	COUNT(s.id)
FROM students s
	JOIN contracts c ON c.student_id = s.id
	JOIN courses c2 ON c2.id = c.course_id 
	JOIN teachers t ON t.id = c2.teacher_id
GROUP BY t.id;


/* 3. Выяснить у каких студентов срок договора истекает через месяц. */

SELECT
	s.id,
	CONCAT(s.firstname, ' ', s.lastname),
	c.open_of_contract,
	c.close_of_contract 
FROM students s 
	JOIN contracts c ON s.id = c.student_id 
	WHERE c.close_of_contract > NOW() AND c.close_of_contract < (NOW() + INTERVAL 1 MONTH);


/* 4. Выяснить какие ученики изучают Финский язык, в Санкт-Петербурге с 1 МАЯ 2022 года. */

SELECT
	s.id AS student_id,
	CONCAT(s.firstname, ' ', s.lastname) AS STUDENT,
	c2.id AS course_id,
	c2.language_id,
	b.city_id 
FROM students s
	JOIN contracts c ON (s.id = c.student_id AND c.open_of_contract > '2022-05-01')
	JOIN courses c2 ON (c.course_id = c2.id AND c2.language_id = 5)
	JOIN branches b ON (c.branch_id = b.id AND b.city_id = 2);


/* 5. Подсчитать средний возраст всех учащихся в Москве и Санкт-Петербурге. */

SELECT
	ROUND(AVG(TIMESTAMPDIFF(YEAR, ps.birthday, NOW()))) AS 'Средний возраст'
FROM
	profile_students ps
WHERE ps.student_id IN (
	SELECT student_id FROM v_students_in_branch
		WHERE v_students_in_branch.CITY = 'Москва' OR v_students_in_branch.CITY = 'Санкт-Петербург');


	
/* 6. Выяснить какой студент узучает больше всего языков */

SELECT 
	s.id,
	CONCAT(s.firstname, ' ', s.lastname) AS STUDENT_NAME,
	COUNT(c.course_id) AS QUANTITY_LANGUAGE
FROM students s 
	JOIN contracts c ON s.id = c.student_id
GROUP BY s.id
ORDER BY QUANTITY_LANGUAGE DESC
LIMIT 1;





















