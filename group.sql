1. Contare quanti iscritti ci sono stati ogni anno

SELECT 
    COUNT(*) AS "iscrizioni", //contare tutte le iscrizioni
    YEAR(`enrolment_date`) AS "anno_iscrizione" //anno iscrizione
FROM `students` //studenti
GROUP BY YEAR(`enrolment_date`); //raggruppare per anno


2. Contare gli insegnanti che hanno l ufficio nello stesso edificio

SELECT 
    COUNT(*) AS 'insegnanti', //contare tutti gli insegnanti
    `office_address` AS 'indirizzo' //indirizzo ufficio
FROM `teachers` //insegnanti
GROUP BY `office_address`; //raggruppati per indirizzo

3. Calcolare la media dei voti di ogni appello d esame

SELECT 
    AVG(`vote`) AS "media_voti", //calcola la media dei voti
    `exam_id` AS "appello_esame" //appello d esame
FROM `exam_student` //dagli esami degli studenti
GROUP BY `exam_id`; //raggruppato per esame


4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT 
    COUNT(*) AS "corsi_laurea", //contare tutti i corsi di laurea
    `department_id` AS "dipartimento" //dipartimento
FROM `degrees` //laurea
GROUP BY `department_id`; //raggruppato per dipartimento
