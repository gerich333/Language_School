USE language_school;

INSERT INTO cities (id, city_name)
VALUES
	(1, 'Москва'),(2, 'Санкт-Петербург'),(3, 'Самара'),(4, 'Сочи'),(5, 'Краснодар');


INSERT INTO branches (name, city_id)
VALUES
	('Москва-1', 1),('Москва-2', 1),('Москва-3', 1),('Москва-4', 1),('Санкт-Петербург-1', 2),('Санкт-Петербург-2', 2),('Санкт-Петербург-3', 2),('Самара', 3),('Сочи', 4),('Краснодар-1', 5),('Краснодар-2', 5);


INSERT INTO languages (id, name_language)
VALUES 
	(1, 'Английский'),(2, 'Немецкий'),(3, 'Французкий'),(4, 'Испанский'),(5, 'Финский');


INSERT INTO students (firstname, lastname)
VALUES
	('Brianne', 'Auer'),('Kendrick', 'Swaniawski'),('Blaze', 'Abshire'),('Emil', 'Rutherford'),('Misty', 'Barrows'),('Theron', 'Bashirian'),('Abe', 'Kerluke'),('Reanna', 'Hermann'),('King', 'Pollich'),('Broderick', 'Wisoky'),('Guillermo', 'Volkman'),('Rocio', 'Smith'),('Addie', 'Hoeger'),('Jeremy', 'Wilderman'),('Nathanael', 'Barton'),('Effie', 'Blick'),('Fatima', 'Bogan'),('Carmel', 'Stokes'),('Johnathan', 'Fritsch'),('Marcelina', 'Hettinger'),('Geraldine', 'Pagac'),('Yazmin', 'Hara'),('Trystan', 'Kozey'),('Lisandro', 'Cummerata'),('Yasmine', 'Von'),('Filiberto', 'Price'),('Betty', 'Torp'),('Alexandre', 'Hettinger'),('Saul', 'Emmerich'),('Trent', 'Halvorson'),('Nicholas', 'Harris'),('Name', 'Oconner'),('Sheldon', 'Sporer'),('Jany', 'Lueilwitz'),('Lucienne', 'Jacobs'),('Trycia', 'Tremblay'),('Alia', 'Johns'),('Dale', 'Hills'),('Griffin', 'Marks'),('Deanna', 'Walker'),('Eldora', 'Kuhlman'),('Katelyn', 'Swaniawski'),('Franco', 'Weber'),('Marta', 'Bartell'),('Serenity', 'Satterfield'),('Marty', 'Harber'),('Marvin', 'Hoppe'),('Sydney', 'Medhurst'),('Kristin', 'Davis'),('Christophe', 'Hoppe'),('Fannie', 'Beatty'),('Eleanora', 'Grimes'),('Dorothea', 'Okuneva'),('Vernon', 'Koepp'),('Lauretta', 'Bahringer'),('Forrest', 'Mohr'),('Lorine', 'Lemke'),('Roselyn', 'Conn'),('Dameon', 'Corwin'),('Adrien', 'Dietrich'),('Sherwood', 'Purdy'),('Garret', 'Skiles'),('Alexandrine', 'Bechtelar'),('Rosie', 'Schiller'),('Nolan', 'Schowalter'),('Golda', 'Schuster'),('Dasia', 'Wilderman'),('Jada', 'Dicki'),('Kyra', 'Medhurst'),('Faye', 'Gutmann'),('Destiny', 'Dickinson'),('Astrid', 'Kuhn'),('Andreanne', 'Jerde'),('Johnpaul', 'Moen'),('Verda', 'Orn'),('Magali', 'McLaughlin'),('Donna', 'Spencer'),('Kade', 'Watsica'),('Dangelo', 'Heller'),('Misty', 'Funk'),('Carmella', 'Armstrong'),('Phoebe', 'Barrows'),('Edwin', 'Predovic'),('Deanna', 'Christiansen'),('Jensen', 'Treutel'),('Jack', 'Hansen'),('Eriberto', 'Schulist'),('Broderick', 'Murphy'),('Clifton', 'Daugherty'),('Melisa', 'Kozey'),('Abelardo', 'Prohaska'),('Karl', 'Prosacco'),('Johathan', 'Beahan'),('Roman', 'Kessler'),('Reilly', 'Friesen'),('Jeramie', 'Littel'),('Trinity', 'Hansen'),('Fabiola', 'Stracke'),('Kurt', 'Emard'),('Nicolette', 'Schaefer');


INSERT INTO profile_students (student_id, gender, birthday, date_of_registration)
VALUES
	(1, 'f', '2005-02-02', '2022-04-12 12:18:10'),(2, 'm', '2007-05-17', '2022-07-06 14:39:47'),(3, 'm', '2005-09-07', '2022-06-20 13:04:04'),(4, 'f', '2009-02-17', '2021-05-13 15:17:28'),(5, 'f', '2008-09-30', '2022-02-11 16:34:34'),(6, 'm', '2007-10-14', '2022-10-28 14:40:26'),(7, 'm', '2006-03-19', '2021-01-23 11:45:28'),(8, 'f', '2008-12-10', '2022-09-28 15:43:09'),(9, 'f', '2009-10-18', '2022-08-03 10:02:39'),(10, 'm', '2007-02-22', '2022-10-13 15:22:34'),(11, 'f', '2006-07-20', '2022-04-27 13:36:13'),(12, 'm', '2005-05-03', '2021-08-15 14:46:45'),(13, 'f', '2007-05-04', '2021-02-05 13:41:18'),(14, 'm', '2009-05-02', '2021-03-15 13:39:53'),(15, 'f', '2010-08-18', '2022-02-07 14:50:23'),(16, 'm', '2009-02-08', '2022-12-22 14:58:15'),(17, 'm', '2009-01-23', '2022-04-09 09:25:49'),(18, 'm', '2007-12-14', '2022-07-29 13:09:22'),(19, 'f', '2007-09-13', '2021-11-26 11:41:43'),(20, 'f', '2009-07-21', '2022-05-14 11:08:16'),(21, 'f', '2007-03-16', '2022-09-15 14:48:57'),(22, 'f', '2007-09-08', '2022-08-19 13:06:59'),(23, 'm', '2009-12-21', '2021-10-30 12:31:50'),(24, 'm', '2008-06-13', '2022-09-26 15:03:44'),(25, 'f', '2006-04-27', '2021-04-16 16:22:58'),(26, 'm', '2005-06-16', '2022-10-23 14:22:59'),(27, 'm', '2007-11-24', '2022-10-09 15:45:45'),(28, 'f', '2009-06-22', '2022-03-31 12:44:16'),(29, 'm', '2007-10-01', '2022-10-14 11:07:57'),(30, 'm', '2008-09-02', '2021-02-16 14:40:20'),(31, 'f', '2010-11-19', '2022-04-16 14:00:29'),(32, 'm', '2007-08-12', '2022-08-23 14:26:53'),(33, 'f', '2007-05-12', '2021-07-07 15:00:16'),(34, 'm', '2009-10-28', '2022-09-03 12:37:07'),(35, 'f', '2008-04-20', '2022-05-14 13:37:54'),(36, 'f', '2006-01-27', '2022-06-10 12:19:41'),(37, 'm', '2007-02-27', '2022-02-03 11:59:53'),(38, 'm', '2009-09-11', '2022-10-11 12:00:44'),(39, 'f', '2007-12-17', '2022-03-30 13:54:33'),(40, 'm', '2007-02-26', '2022-08-31 14:11:26'),(41, 'f', '2006-12-23', '2022-05-01 16:56:12'),(42, 'm', '2006-08-15', '2022-10-21 17:50:36'),(43, 'm', '2006-05-17', '2022-08-02 15:14:59'),(44, 'm', '2005-05-27', '2022-06-21 14:40:03'),(45, 'f', '2008-01-08', '2022-06-23 15:24:00'),(46, 'f', '2008-06-07', '2022-10-12 13:08:12'),(47, 'm', '2010-03-25', '2022-11-18 12:03:18'),(48, 'm', '2007-08-21', '2022-09-18 15:48:48'),(49, 'f', '2006-09-06', '2022-09-25 12:49:25'),(50, 'm', '2005-01-10', '2022-06-13 11:13:17'),(51, 'f', '2009-11-15', '2022-10-21 17:06:22'),(52, 'm', '2010-10-11', '2022-05-27 18:52:03'),(53, 'm', '2006-04-05', '2022-06-12 15:51:29'),(54, 'f', '2005-09-28', '2022-10-19 10:11:55'),(55, 'f', '2005-03-21', '2022-09-25 16:36:23'),(56, 'f', '2007-04-14', '2022-09-05 16:37:37'),(57, 'f', '2006-12-20', '2022-10-02 10:48:43'),(58, 'm', '2009-06-10', '2022-04-17 10:03:22'),(59, 'f', '2006-07-05', '2022-03-23 13:12:20'),(60, 'm', '2005-06-12', '2022-10-05 15:30:58'),(61, 'f', '2009-10-31', '2022-10-27 12:58:17'),(62, 'm', '2005-05-01', '2022-10-19 12:32:08'),(63, 'm', '2008-03-30', '2022-03-25 16:50:26'),(64, 'f', '2009-12-30', '2021-06-27 17:04:44'),(65, 'm', '2008-11-04', '2021-05-06 11:51:40'),(66, 'f', '2010-05-17', '2021-06-03 14:30:28'),(67, 'm', '2008-01-21', '2021-11-03 15:34:12'),(68, 'm', '2007-12-31', '2021-05-27 11:09:49'),(69, 'f', '2005-05-09', '2021-01-06 10:45:02'),(70, 'm', '2007-01-21', '2021-05-10 11:47:24'),(71, 'm', '2010-07-17', '2021-09-08 11:15:09'),(72, 'm', '2008-06-17', '2021-04-23 14:52:18'),(73, 'm', '2009-06-29', '2021-03-09 12:25:07'),(74, 'm', '2006-09-20', '2021-06-22 11:58:43'),(75, 'm', '2008-01-01', '2021-01-28 12:36:39'),(76, 'm', '2007-08-21', '2021-10-21 14:08:25'),(77, 'm', '2007-10-29', '2021-11-24 12:26:30'),(78, 'f', '2008-09-18', '2021-07-14 14:09:13'),(79, 'f', '2007-12-17', '2021-09-26 15:08:43'),(80, 'm', '2005-02-11', '2021-05-09 17:00:42'),(81, 'f', '2009-03-28', '2021-10-20 11:56:07'),(82, 'm', '2007-06-28', '2021-04-02 12:17:42'),(83, 'f', '2010-05-31', '2021-12-02 14:56:01'),(84, 'm', '2009-03-25', '2021-09-19 16:53:35'),(85, 'm', '2007-05-22', '2021-07-22 10:06:01'),(86, 'f', '2006-05-17', '2021-03-29 11:15:09'),(87, 'f', '2007-02-14', '2021-07-21 17:51:29'),(88, 'm', '2008-07-04', '2021-07-19 11:37:55'),(89, 'm', '2006-06-13', '2021-07-22 12:33:39'),(90, 'm', '2008-12-23', '2021-05-07 14:07:31'),(91, 'm', '2009-07-08', '2021-08-11 15:48:11'),(92, 'm', '2009-05-06', '2021-06-22 17:46:53'),(93, 'f', '2006-12-15', '2021-05-06 12:32:10'),(94, 'f', '2006-11-11', '2021-08-18 18:08:06'),(95, 'f', '2009-01-15', '2021-07-17 14:25:39'),(96, 'm', '2007-08-26', '2021-07-19 12:06:33'),(97, 'f', '2005-01-13', '2021-11-11 14:59:19'),(98, 'm', '2009-10-24', '2021-08-30 10:11:06'),(99, 'm', '2007-01-16', '2021-07-23 11:03:16'),(100, 'f', '2007-02-19', '2021-02-24 14:05:34');


INSERT INTO teachers (id, firstname, lastname)
VALUES
	(1, 'Rhett', 'Padberg'),(2, 'Kian', 'Considine'),(3, 'Rosendo', 'McClure'),(4, 'Arielle', 'Pacocha'),(5, 'Henri', 'Tremblay'),(6, 'Oswald', 'Nolan'),(7, 'Oleta', 'Kuphal'),(8, 'Velda', 'Marks'),(9, 'Asia', 'Treutel'),(10, 'Floyd', 'Hayes'),(11, 'Elva', 'Turcotte'),(12, 'Kailee', 'Schroeder'),(13, 'Karlie', 'Lind'),(14, 'Ines', 'Lebsack'),(15, 'Ivah', 'Wehner'),(16, 'Donavon', 'Langosh'),(17, 'Earl', 'Waelchi'),(18, 'Ubaldo', 'Botsford'),(19, 'Mia', 'Bahringer'),(20, 'Elroy', 'Haag'),(21, 'Deja', 'Cole'),(22, 'Tracy', 'Leffler'),(23, 'Jamal', 'Nolan'),(24, 'Carter', 'Abernathy'),(25, 'Richie', 'Fahey');


INSERT INTO profile_teachers (teacher_id, birthday, from_city_id, teaching_with)
VALUES
	(1, '1993-10-24', 2, '2021-07-23'),(2, '1990-12-06', 1, '2020-08-26'),(3, '1991-05-11', 1, '2021-06-11'),(4, '1985-08-21', 2, '2021-08-15'),(5, '1981-11-19', 5, '2019-09-03'),(6, '1991-02-16', 4, '2021-10-01'),(7, '1993-04-19', 2, '2019-07-15'),(8, '1995-10-27', 5, '2021-09-05'),(9, '1983-05-14', 4, '2020-08-26'),(10, '1979-04-04', 1, '2021-06-28'),(11, '1993-11-09', 5, '2019-07-29'),(12, '1993-12-24', 2, '2020-07-25'),(13, '1996-10-16', 1, '2021-09-10'),(14, '1983-03-12', 1, '2021-07-29'),(15, '1992-01-09', 2, '2019-08-07'),(16, '1995-04-05', 3, '2021-07-22'),(17, '1991-06-16', 3, '2021-06-05'),(18, '1983-08-28', 1, '2020-07-21'),(19, '1992-06-30', 1, '2019-09-11'),(20, '1990-04-19', 2, '2021-07-27'),(21, '1996-08-10', 4, '2020-08-19'),(22, '1992-12-04', 1, '2021-08-27'),(23, '1980-02-01', 5, '2021-07-01'),(24, '1990-09-29', 3, '2020-08-13'),(25, '1994-06-16', 1, '2021-09-16');


INSERT INTO courses (language_id, teacher_id)
VALUES
	(1, 2),(1, 13),(1, 19),(1, 25),(2, 2),(2, 10),(2, 18),(2, 3),(3, 3),(3, 13),(3, 18),(4, 3),(4, 10),(4, 25),(4, 13),(5, 19),(5, 22),(5, 14),(1, 7),(1, 15),(1, 20),(1, 4),(2, 12),(2, 4),(2, 1),(3, 1),(3, 7),(3, 12),(4, 1),(4, 12),(4, 15),(5, 4),(5, 20),(5, 7),(1, 24),(1, 17),(3, 16),(3, 17),(4, 16),(4, 17),(5, 24),(1, 6),(1, 9),(1, 21),(2, 9),(3, 6),(3, 21),(4, 6),(4, 9),(1, 5),(1, 8),(1, 23),(2, 11),(2, 23),(3, 8),(3, 11),(4,11),(4, 23),(4, 8),(5, 5);


INSERT INTO teachers_in_branch (branche_id, teacher_id)
VALUES
	(1, 2),(1, 3),(1, 14),(2, 10),(2, 13),(2, 22),(3, 10),(3, 18),(3, 19),(4, 14),(4, 18),(4, 25),(5, 12),(5, 20),(6, 4),(6, 15),(7, 1),(7, 7),(8, 16),(8, 17),(8, 24),(9, 6),(9, 9),(9, 21),(10, 5),(10, 11),(11, 8),(11, 23),(11, 5);


INSERT INTO teaching  (teacher_id , student_id)
VALUES 
	(1, 60),(1, 61),(1, 62),(1, 63),(1, 64),(2, 1),(2, 2),(2, 3),(2, 4),(2, 5),(2, 6),(2, 7),(2, 8),(3, 3),(3, 6),(4, 52),(4, 53),(4, 54),(4, 55),(4, 50),(5, 86),(5, 87),(5, 88),(5, 89),(6, 75),(6, 76),(6, 77),(6, 81),(6, 85),(7, 56),(7, 57),(7, 58),(7, 59),(7, 60),(8, 93),(8, 94),(8, 95),(8, 96),(8, 97),(9, 78),(9, 79),(9, 80),(9, 81),(9, 82),(10, 16),(10, 17),(10, 18),(10, 25),(10, 26),(10, 27),(11, 90),(11, 91),(11, 92),(12, 44),(12, 45),(12, 46),(13, 10),(13, 11),(13, 12),(13, 13),(13, 14),(13, 15),(13, 19),(14, 1),(14, 9),(14, 36),(14, 37),(15, 48),(15, 49),(15, 50),(15, 51),(16, 71),(16, 72),(17, 68),(17, 69),(17, 70),(17, 73),(17, 74),(17, 66),(18, 33),(18, 34),(18, 24),(18, 35),(19, 20),(19, 21),(19, 22),(19, 23),(20, 38),(20, 39),(20, 40),(20, 41),(20, 42),(20, 43),(20, 47),(20, 44),(21, 83),(21, 84),(21, 80),(22, 10),(23, 98),(23, 97),(23, 100),(23, 93),(23, 99),(24, 65),(24, 66),(24, 67),(24, 70),(25, 28),(25, 29),(25, 30),(25, 31),(25, 32);


INSERT INTO contracts (student_id, course_id, branch_id, open_of_contract)
VALUES 
	(1, 1, 1, '2022-04-12'),(2, 1, 1, '2022-07-06'),(3, 1, 1, '2022-06-20'),(4, 1, 1, '2022-06-20'),(5, 1, 1, '2022-02-11'),(6, 5, 1, '2022-10-28'),(7, 5, 1, '2021-01-23'),(8, 5, 1, '2022-09-28'),(3, 12, 1, '2022-09-15'),(6, 12, 1, '2022-10-28'),(1, 18, 1, '2022-08-23'),(9, 18, 1, '2022-08-03'),(10, 2, 2, '2022-10-13'),(11, 2, 2, '2022-04-27'),(12, 2, 2, '2021-08-15'),(13, 2, 2, '2021-02-05'),(14, 2, 2, '2021-03-15'),(15, 2, 2, '2022-02-07'),(16, 6, 2, '2022-12-22'),(17, 6, 2, '2022-04-09'),(18, 6, 2, '2022-07-29'),(14, 15, 2, '2022-08-04'),(19, 15, 2, '2021-11-26'),(10, 17, 2, '2022-10-20'),(20, 3, 3, '2022-05-14'),(21, 3, 3, '2022-09-15'),(22, 3, 3, '2022-08-19'),(23, 3, 3, '2021-10-30'),(24, 11, 3, '2022-09-26'),(25, 13, 3, '2021-04-16'),(26, 13, 3, '2022-10-23'),(27, 13, 3, '2022-10-09'),(23, 16, 3, '2022-07-27'),(28, 4, 4, '2022-03-31'),(29, 4, 4, '2022-10-14'),(30, 4, 4, '2021-02-16'),(31, 4, 4, '2022-04-16'),(32, 4, 4, '2022-08-23'),(33, 7, 4, '2021-07-07'),(34, 7, 4, '2022-09-03'),(35, 11, 4, '2022-05-14'),(36, 18, 4, '2022-06-10'),(37, 18, 4, '2022-02-03'),(38, 21, 5, '2022-10-11'),(39, 21, 5, '2022-03-30'),(40, 21, 5, '2022-08-31'),(41, 21, 5, '2022-05-01'),(42, 21, 5, '2021-11-29'),(43, 21, 5, '2022-08-02'),(44, 23, 5, '2022-06-21'),(45, 23, 5, '2022-06-23'),(46, 23, 5, '2022-10-12'),(39, 33, 5, '2022-09-10'),(40, 33, 5, '2022-08-31'),(47, 33, 5, '2022-10-21'),(44, 33, 5, '2022-10-13'),(48, 20, 6, '2022-09-18'),(49, 20, 6, '2022-09-25'),(50, 20, 6, '2022-06-13'),(51, 20, 6, '2022-10-21'),(52, 24, 6, '2022-05-27'),(53, 24, 6, '2022-06-12'),(54, 32, 6, '2022-10-19'),(55, 32, 6, '2022-09-25'),(50, 32, 6, '2022-06-13'),(56, 19, 7, '2022-09-05'),(57, 19, 7, '2022-10-02'),(58, 19, 7, '2022-04-17'),(59, 19, 7, '2022-03-23'),(60, 25, 7, '2022-10-05'),(61, 25, 7, '2022-10-27'),(62, 25, 7, '2022-10-19'),(63, 29, 7, '2022-03-25'),(64, 29, 7, '2021-06-27'),(60, 34, 7, '2022-10-05'),(57, 34, 7, '2022-10-02'),(65, 35, 8, '2021-05-06'),(66, 35, 8, '2021-06-03'),(67, 35, 8, '2021-11-03'),(68, 36, 8, '2021-05-27'),(69, 36, 8, '2021-01-06'),(70, 36, 8, '2021-05-10'),(71, 37, 8, '2021-09-08'),(72, 37, 8, '2021-04-23'),(73, 40, 8, '2021-03-09'),(74, 40, 8, '2021-06-22'),(66, 40, 8, '2022-06-03'),(70, 41, 8, '2022-08-25'),(75, 42, 9, '2021-01-28'),(76, 42, 9, '2021-10-21'),(77, 42, 9, '2021-11-24'),(78, 43, 9, '2021-07-14'),(79, 43, 9, '2021-09-26'),(80, 43, 9, '2021-05-09'),(81, 45, 9, '2021-10-20'),(82, 45, 9, '2021-04-02'),(83, 47, 9, '2021-12-02'),(84, 47, 9, '2021-09-19'),(80, 47, 9, '2022-09-15'),(75, 48, 9, '2022-03-20'),(81, 48, 9, '2022-10-23'),(85, 48, 9, '2022-07-22'),(86, 50, 10, '2021-03-29'),(87, 50, 10, '2021-07-21'),(88, 50, 10, '2021-07-19'),(89, 50, 10, '2021-07-22'),(90, 56, 10, '2021-05-07'),(91, 56, 10, '2021-08-11'),(92, 56, 10, '2021-06-22'),(88, 60, 10, '2022-07-19'),(93, 51, 11, '2021-05-06'),(94, 51, 11, '2021-08-18'),(95, 51, 11, '2021-07-17'),(96, 51, 11, '2021-07-19'),(97, 51, 11, '2021-11-11'),(98, 54, 11, '2021-08-30'),(97, 54, 11, '2022-08-22'),(100, 54, 11, '2021-02-24'),(93, 58, 11, '2022-07-26'),(99, 58, 11, '2021-07-23'),(40, 23, 5, '2022-09-14');
