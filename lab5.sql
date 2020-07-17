use freeIT2

-- 1. Вывести список тех, кто учится на одном курсе с Семеном

select students.name 
from students
join connects on connects.id_student = students.id
where connects.id_course = (select connects.id_course from students
join connects on connects.id_student = students.id
where students.name = 'Семен') 

-- 2. Вывести список курсов, по которым начитано большее количество часов

select top 1 with ties themes.name, forms.name, courses.progress_hours 
from courses
join themes on themes.id = courses.id_theme
join forms on forms.id = courses.id_form
order by progress_hours desc

-- 3. Вывести список курсов, на которых учится наибольшее количество студентов

select top 1 with ties themes.name, forms.name, count(students.name)
from students 
join connects on students.id = connects.id_student
join courses on courses.id = connects.id_course
join themes on themes.id = courses.id_theme
join forms on forms.id = courses.id_form
group by themes.name, forms.name
order by count(students.name) desc 

-- 4. Вывести список тех, кто учится на одном курсе с Романом, но младше его

select students.name 
from students
join connects on connects.id_student = students.id
where connects.id_course = (select connects.id_course from students
join connects on connects.id_student = students.id
where students.name = 'Роман') and  
students.br_date > (select students.br_date from students where students.name = 'Роман')

-- 5. Найти курсы, на которых количество лекций и лабораторных столько же, сколько и на курсе IM 
select *
from themes 
join courses on themes.id = courses.id_theme
join forms on forms.id = courses.id_form
join (select courses.lect_hours as 'im_lect', courses.labs_hours as 'im_labs'
		from courses
		join themes on themes.id = courses.id_theme
		where themes.name = 'IM') im on im.im_lect = courses.lect_hours and im.im_labs = courses.labs_hours



-- 6. Найти курсы, где число человек больше, чем на курсе Ruby

select distinct themes.name, forms.name, count(students.name) as 'quantity'
from themes 
join courses on themes.id = courses.id_theme
join forms on forms.id = courses.id_form
join connects on connects.id_course = courses.id 
join students on students.id = connects.id_student
group by themes.name, forms.name
having count(students.name) > (select count(*)
					from themes 
					join courses on themes.id = courses.id_theme
					join forms on forms.id = courses.id_form
					join connects on connects.id_course = courses.id 
					join students on students.id = connects.id_student
					where themes.name = 'Ruby')

-- 7.	Найти количество студентов, у которых месяц рождения такой же как Cемена, 
--в результирующей выборке так же вывести номер месяца рождения Семена (Семен один любой)

select count(*) as 'Кол-во людей месяцем', (select month(br_date) 
														from students
														where students.name = 'Семен')
														as 'Месяц рождения Семена'
from students
where month(br_date) = (select month(br_date)
						from students
						where students.name = 'Семен')

-- 8.Найти сопровождающих, роль или роли которых совпадают с ролью 
--или ролями Андрея (один любой Андрей)



select distinct persones.name  
from persones
join missions on missions.id_persone = persones.id
join roles on roles.id = missions.id_role 
join (select roles.name as 'andrew_role'
		from persones
		join missions on missions.id_persone = persones.id
		join roles on roles.id = missions.id_role
		where persones.name = 'Андрей') andrew_role on roles.name = andrew_role.andrew_role








