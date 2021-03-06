--переходим в нее (делаем ее активной)
use freeIT
--- создаем таблицу
create table teachers_lab (
phone int not null,
name nvarchar(40) not null,
br_date date,
course nvarchar(40) not null,
type_course  nvarchar(40),
role_in_course nvarchar(40) not null,
str_date date  not null,
lect_hours int,
labs_hours int,
progress_hours int,
primary key (phone,course, type_course,role_in_course,str_date)
)
--- заполняем
insert into teachers_lab values
(296465763, 'Андрей','19951012', 'C#','full', 'teacher','20200730',30,60,5),
(296465763, 'Андрей','19951012', 'C#','full', 'mentor','20200730',30,60,5),
(293542536, 'Сергей','19970115', 'C#','full', 'helper','20200730',30,60,5),
(293542536, 'Сергей','19970115', 'C#','express', 'teacher','20200803',0,60,2),
(293542536, 'Сергей','19970115', 'C#','express', 'mentor','20200803',0,60,2),
(337885561, 'Евгений','19930425', 'Python','full', 'helper','00010101',null,null,null),
(333522596, 'Светлана','19910605', 'IM','full', 'teacher','20200803',10,24,4),
(333522596, 'Светлана','19910605', 'IM','full', 'mentor','20200803',10,24,4),
(446522891, 'Татьяна','19920815', 'IM','full', 'helper','20200803',10,24,4),
(446522891, 'Татьяна','19920815', 'IM','full', 'mentor','20200803',10,24,4), 
(337865529, 'Анатолий','19900915', 'BA','express', 'teacher','20200804',12,0,1), 
(335587921, 'Константин','19890327', 'BA','express', 'mentor','20200804',12,0,1), 
(299887925, 'Катерина','19910323', 'SQL','full', 'teacher','20200801',12,30,6), 
(448689653, 'Иван','19930313', 'SQL','full', 'helper','20200801',12,30,6), 
(298965356, 'Григорий','19900313', 'Ruby','full', 'helper','20200804',10,24,8), 
(298965356, 'Николай','19950317', 'Ruby','full', 'teacher','20200804',10,24,8), 
(298965356, 'Николай','19950317', 'Java','full', 'helper','20200803',30,60,8), 
(298965356, 'Николай','19950317', 'Java','express', 'helper','20200801',0,60,8), 
(339465689, 'Михаил','19940213', 'Java','full', 'teacher','20200803',30,60,8),
(339465689, 'Михаил','19940213', 'Java','full', 'mentor','20200803',30,60,8),
(443946899, 'Степан','19890716', 'Java','express', 'teacher','20200801',0,60,8),
(443946899, 'Степан','19890716', 'Java','express', 'mentor','20200801',0,60,8)

--- Дополнение к прошлой лекции DATA начинается с 00010101
select DATEDIFF(DAY,'00010101',str_date) from teachers
--- агрегатные корректно с этим работают
select min(str_date) from teachers

---- группировка, допустимые поля для вывода в выборку
----Вывсти наименования курсов 
--1- ок
select distinct  course from studs
--2 - ок
select  course from studs
group by course
----Вывсти наименования курсов и имена
--1 - ок
select distinct  course, name from studs
--2 - error
select  course, name from studs
group by course
select  course, name from studs
group by course

-------- агрегатные функции
-- подсчет количества- count()
-- подсчитать количество студентов на курсе
select  course, count(name) from studs
group by course

--- минимальное значение
---- найти возраст самого старшие студента в каждой группе min()
select  course, count(name) as 'всего', min(br_date) as 'старший',
        max(br_date) as 'младший'
from studs
group by course

-- группировка по нескольким полям
select  course,type_course, count(name) as 'всего'
from studs
group by course, type_course

-- условия к группе having
--вывести группы в которых учится 2 и более человека
select course, type_course, count(name)
from studs
group by course, type_course
having count(name)>=2

--- количество людей в группе у которых в имени есть буква a,
-- и вывести группы в которых такой человек 1
select course, type_course, count(name)
from studs
where name like '%а%'
group by course, type_course
having count(name) >1
order by course


-- использовани агрератных функции без группировки
select count(*) as 'строк', count(name) as 'людей', count(course) from studs

---- количество курсов
select count(distinct course) from studs
select distinct course from studs

-- агрегатные функции и null
--- считаем сумму количества всех часов указаных в таблице (логики в запросе нет - он для проверки математики)
select sum(labs_hours+lect_hours),
		sum(labs_hours)+sum(lect_hours)  from teachers
--- результаты одинаковые

-- добавили Федора, и повторили запрос
insert into teachers values
(246898998, 'Федор','19890716', 'Java','express', 'helper','20200801',null,60,8)
select sum(labs_hours+lect_hours),
		sum(labs_hours)+sum(lect_hours)  from teachers
--- sum(labs_hours+lect_hours) - проигнорировало строку с 
select sum(labs_hours+lect_hours),
		sum(labs_hours)+sum(lect_hours)  from teachers


select * from teachers_lab;
select * from studs;


-- 1. Определить, какое количество человек сопровождает куры по Java и C# с учетом типа курса (любая роль)
select course, type_course, count(distinct name) as 'количество'  from teachers_lab 
where course = 'Java' or course = 'C#'
group by course, type_course;

-- 2. Определить курсы с учетом типа, прогресс по которым составил более 5 часов 
select name, course, type_course, progress_hours from teachers_lab
group by name, course, type_course, progress_hours
having progress_hours > 5 order by course;

-- 3. Определить количество преподавателей рожденных в каждом месяце года 
select distinct month(br_date) as 'месяц рождения', count(distinct name) as 'количество преподавателей' from teachers_lab
group by month(br_date);

-- 4. Определить курсы, средний возраст сопровождающих на которых менее 23
select course, type_course, avg(DATEDIFF(year, br_date, GETDATE())) as 'ср.возраст'from teachers_lab 
group by course, type_course
having avg(DATEDIFF(year, br_date, GETDATE())) < 23;

-- 5. Определить средний возраст студентов на каждом курсе на конец года
select course, type_course, avg(DATEDIFF(year, br_date, '20201231')) from studs 
group by course, type_course;

-- 6. Определить средний возраст студентов на каждом курсе на текущий момент
select course, type_course, avg(DATEDIFF(year,br_date, GETDATE())) from studs 
group by course, type_course;

-- 7. Определить количество helper-ов на каждом курсе 
select course, type_course, count(role_in_course) from teachers_lab where role_in_course = 'helper'
group by course, type_course;

-- 8. Какой курс имеет mentor-ов большее одного
select course, type_course, count(role_in_course) from teachers_lab where role_in_course = 'mentor'
group by course, type_course 
having count(role_in_course) > 1;

-- 9. Для курсов формата full определить отношение числа лекций к числу часов практики !!!!!!!!!!!!!!!!!!!!!!!!!!!
select name, course, lect_hours/labs_hours from teachers_lab where type_course = 'full'
group by course, name, lect_hours/labs_hours;

-- 10. Определит число лекторов в проекте
select course, count(role_in_course) from teachers_lab where role_in_course = 'teacher'
group by course;

-- 11. Найти сопровождающих, которые задействованы более, чем в одном курсе !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
select distinct name, course, type_course, str_date from teachers_lab 
group by name, course, type_course, str_date
having count(str_date) > 1;

-- 12. Определить среднее распределение лабораторных часов на одного сопровождающего, mentor-ы в этом не участвуют 
select name, course, sum(labs_hours) as 'сумма часов лаб', avg(labs_hours) as 'среднее кол-во часов' from teachers_lab
where role_in_course != 'mentor'
group by name, course;

-- 13. Вывести список курсов, у которых лабораторных часов больше, чем лекционных в 2 раза и более
select course, type_course from teachers_lab where lect_hours < labs_hours
group by course, type_course, labs_hours, lect_hours
having (lect_hours/labs_hours) <= 0.5;

-- 14. Найти курсы, на которых число студентов с кодом 29 и восьмеркой в номере больше двух. 
select course, type_course, count(phone) as 'Код 29 и 8 в номере' from studs where phone like '29%' and phone like '%8%'
group by course, type_course
having count(phone) > 2;

 


