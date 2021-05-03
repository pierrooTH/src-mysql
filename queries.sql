-- queries 

-- tous les students:
SELECT * FROM student;

-- tous les projets:
SELECT * FROM project;

-- le student dont l'id est 2: 
SELECT * FROM student WHERE id = 2;

--les students dont l'id n'est pas 2:
SELECT * FROM student WHERE id != 2;

-- le project dont l'id est 3:
SELECT * FROM project WHERE id = 3;

-- les projects dont l'id n'est pas 3:
SELECT * FROM project WHERE id != 3;

-- Les students dont l'email contient la chaîne de caractères .uk:
SELECT * FROM student WHERE email LIKE '%.uk';

-- les students dont la date de création est antérieure au 01/07/2018 exclus:
SELECT * FROM `student` WHERE `creation_date` > '2018-07-01%';

-- les projets dont la description ne contient pas la chaîne de caractères another:
SELECT * FROM project WHERE `client_name` NOT LIKE '%another%';

-- les projets dont la date de création est postérieure au 01/04/2018 inclus:
SELECT * FROM `project` WHERE `start_date` <= '2018-04-01%';

-- les students ayant un projet:
SELECT * FROM `student` WHERE `project_id` IS NOT NULL;

-- les students n'ayant pas de projet:
SELECT * FROM `student` WHERE `project_id` IS NULL;

--les students : dont l'email contient la chaîne de caractères .com OU dont la date de création est antérieure au 01/07/2018 exclus:
SELECT * FROM student WHERE email LIKE '%.com' OR `creation_date` > '2018-07-01%';

-- les students : dont l'email contient la chaîne de caractères .com ET dont la date de création est antérieure au 01/07/2018 exclus:
SELECT * FROM student WHERE email LIKE '%.com' AND `creation_date` > '2018-07-01%';

-- les students : dont la date de création est postérieure au 01/01/2018 exclus ET dont la date de création est antérieure au 01/07/2018 exclus:
SELECT * FROM student WHERE `creation_date` < '%2018/01/01%' AND `creation_date` > '2018/07/01%'

-- les projets : dont la description ne contient pas la chaîne de caractères another OU dont la date de création est postérieure au 01/04/2018 inclus:
SELECT * FROM project WHERE `client_name` NOT LIKE '%another%' OR `start_date` < '2018/04/01%';

-- les projets : dont la description ne contient pas la chaîne de caractères another ET dont la date de création est postérieure au 01/04/2018 inclus:
SELECT * FROM project WHERE `client_name` NOT LIKE '%another%' AND `start_date` < '2018/04/01%';

-- les projets : dont la date de création est postérieure au 01/01/2018 inclus ET dont la date de création est antérieure au 01/03/2018 exclus:
SELECT * FROM project WHERE `start_date` <= '2018/01/01%' AND `start_date` > '2018/03/01%';

-- les students : dont l'email contient la chaîne de caractères .com ET la date de création est antérieure au 01/07/2018 exclus OU ayant un projet:
SELECT * FROM student WHERE email LIKE '%.com' AND (`creation_date` > '2018-07-01%' OR `project_id` IS NOT NULL);

-- les students : dont l'email contient la chaîne de caractères .comET la date de création est antérieure au 01/07/2018 exclus ET n'ayant pas de projet: 
SELECT * FROM student WHERE email LIKE '%.com' AND (`creation_date` > '2018-07-01%' OR `project_id` IS NULL);