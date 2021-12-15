-- 1 Selezionare tutti gli studenti nati nel 1990
select *
from students s 
where year(date_of_birth)>1990; 

-- 2 Selezionare tutti i corsi che valgono più di 10 crediti
select *
from courses c 
where cfu >10;

-- 3 Selezionare tutti gli studenti che hanno più di 30 anni
select *
from students s 
where TIMESTAMPDIFF(year,date_of_birth, curdate())>30

-- 4 Selezionare tutti i corsi di laurea magistrale 
select *
from `degrees`
where `level`='magistrale'; 

-- 5 Da quanti dipartimenti è composta l'università
select count(id) 
from departments d; 

-- 6 Quanti sono gli insegnanti che non hanno un numero di telefono?
select count(phone) 
from teachers t 
where phone is not null;

-- 7 Contare quanti iscritti ci sono stati ogni anno
select count(id), year(enrolment_date) 
from students s 
group by year(enrolment_date) 
order by enrolment_date;

-- 8 Calcolare la media dei voti di ogni appello d'esame
select avg(vote)
from exam_student es
group by exam_id;

-- 9 Contare quanti corsi di laurea ci sono per ogni dipartimento !-----------------------------!
select count(id) as corsi , department_id
from degrees d 
group by department_id;



-- 10 Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia ¿--------------------?
select name, surname 
from students s 
where degree_id =53;


-- 11 Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
select * 
from degrees d 
where department_id=7;

-- 12 Selezionare tutti i corsi in cui insegna Fulvio Amato
select course_id as corsi
from course_teacher ct
where teacher_id =44;


-- 13 Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
select *
from students s 
inner join degrees d 
on s.degree_id = d.id
inner join departments d2 
on d.department_id= d2.id 
order by s.name asc;





