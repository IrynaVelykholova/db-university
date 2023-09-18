1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT
    `students`.`name`, //nome studente
    `students`.`surname`, //cognome studente
    `degrees`.`name` AS "corso_laurea" //nome corso laurea
FROM `students` //studenti tabella 1
INNER JOIN `degrees` // lauree tabella 2
ON `degrees`.`id` = `students`.`degree_id` //collegare riga id lauree ai stutenti id laurea
WHERE `degrees`.`name` = "Corso di Laurea in Economia"; //nome della laurea

2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze

SELECT
    `departments`.`name` AS "dipartimento", //nome dipartimento
    `degrees`.`name` AS "corso_laurea" //nome corso laurea
FROM `degrees` //laurea tabella 1
INNER JOIN `departments` //dipartimenti tabella 2
ON `departments`.`id` = `degrees`.`department_id` //collegare riga id dipartimenti con lauree id dipartimenti
WHERE `degrees`.`department_id` = 7 //dipartimento di neuroscienze
AND `degrees`.`level` = "magistrale"; //laurea magistale

3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT
    `teachers`.`name`, //nome insegnante
    `teachers`.`surname`, //cognome insegnante
    `courses`.`name` AS "nome_corso" //nome corso
FROM `course_teacher` //corsi insegnanti tabella 1
INNER JOIN `teachers` //insegnanti tabella 2
ON `teachers`.`id` = `course_teacher`.`teacher_id` //collegare riga insegnante id al corso id insegnante
INNER JOIN `courses` //corsi tabella 3
ON `courses`.`id` = `course_teacher`.`course_id` //collegare riga corsi id ai corsi insegnanti id corso
WHERE `teachers`.`id` = 44; //id insegnante

4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

SELECT
    `students`.`surname`, //studente cognome
    `students`.`name`, //studente nome
    `degrees`.`name` AS "corso_di_laurea", //nome laurea
    `departments`.`name` AS "dipartimento" //nome dipartimento
FROM `students` //studenti
INNER JOIN `degrees` //lauree tabella 1
ON `degrees`.`id` = `students`.`degree_id` //collegare riga lauree id allo studente id laurea
INNER JOIN `departments` //dipartimenti tabella 3
ON `departments`.`id` = `degrees`.`department_id` //collegare riga dipartimenti id alle lauree id dipartimento
ORDER BY //ordine alfabetico
    `students`.`surname`,
    `students`.`name`; 

5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

SELECT
    `teachers`.`name`, //insegnante nome
    `teachers`.`surname`, //insegnante cognome
    `degrees`.`name` AS 'corso_di_laurea', //nome corso laurea
    `courses`.`name` AS 'nome_corso' //nome corso
FROM `degrees` //lauree tabella 1
INNER JOIN `courses` //corsi tabella 2
ON `degrees`.`id` = `courses`.`degree_id` //collegare lauree id con corsi id laurea
INNER JOIN `course_teacher` //corso insegnante tabella 3
ON `courses`.`id` = `course_teacher`.`course_id` //collegare corsi id con corso insegnante id corso
INNER JOIN `teachers`  //insegnanti tabella 4
ON `teachers`.`id` = `course_teacher`.`teacher_id`; //collegare insegnante id al corso insegnante id insegnante 

6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)

SELECT
    `teachers`.`name`, //nome insegnante
    `teachers`.`surname`, //cognome insegnante
    `departments`.`name` AS "dipartimento", //nome dipartimento
FROM `teachers` //insegnanti tabella 1
INNER JOIN `course_teacher` //corso insegnante tabella 2
ON `teachers`.`id` = `course_teacher`.`teacher_id` //collegare id insegnante al corso insegnante id insegnante
INNER JOIN `courses` //corsi tabella 3
ON `courses`.`id` = `course_teacher`.`course_id` //collegare corso id al corso insegnante id
INNER JOIN `degrees` //lauree tabella 4
ON `degrees`.`id` = `courses`.`degree_id` //collegare lauree id ai corsi id leauree
INNER JOIN `departments` //dipartimenti tabella 5
ON `departments`.`id` = `degrees`.`department_id` //collegare dipartimenti id alle lauree id dipartimenti
WHERE `departments`.`id` = 5; //id dipartimento matematica

