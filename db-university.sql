1. Selezionare tutti gli studenti nati nel 1990 

SELECT * //tutti
FROM `students` //studenti
WHERE YEAR(date_of_birth)=1990; //prendo anno di nascita

2. Selezionare tutti i corsi che valgono più di 10 crediti 

SELECT * //tutti
FROM `courses`  //corsi
WHERE `cfu` > 10; //maggiori di 10

3. Selezionare tutti gli studenti che hanno più di 30 anni

SELECT * //tutti
FROM `students` //studenti
WHERE YEAR(CURRENT_TIMESTAMP)-YEAR(date_of_birth)=30; //anno corrente - anno di nascita

4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di
laurea 

SELECT * //tutti
FROM `courses`//corsi
WHERE `period`="I semestre" //primo semestre
AND `year`="1";//e primo anno

5. Selezionare tutti gli appelli d esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 

SELECT * //tutti
FROM `exams` //esami
WHERE `hour`>"14:00" //ore 14
AND `date`= "2020/06/20"; //giorno 20 giugno

6. Selezionare tutti i corsi di laurea magistrale 

SELECT * //tutti
FROM `degrees` //laurea
WHERE `level`="magistrale";//magistrale

7. Da quanti dipartimenti è composta l università? 

SELECT COUNT(*) //contare tutti
FROM `departments`; //dipartimenti

8. Quanti sono gli insegnanti che non hanno un numero di telefono?

SELECT COUNT(*) //contare tutti
FROM `teachers` //insegnanti
WHERE `phone` IS 'NULL'; //telefono "null" che quindi non lo hanno