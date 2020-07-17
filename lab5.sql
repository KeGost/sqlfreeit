use freeIT2

-- 1. ������� ������ ���, ��� ������ �� ����� ����� � �������

select students.name 
from students
join connects on connects.id_student = students.id
where connects.id_course = (select connects.id_course from students
join connects on connects.id_student = students.id
where students.name = '�����') 

-- 2. ������� ������ ������, �� ������� �������� ������� ���������� �����

select top 1 with ties themes.name, forms.name, courses.progress_hours 
from courses
join themes on themes.id = courses.id_theme
join forms on forms.id = courses.id_form
order by progress_hours desc

-- 3. ������� ������ ������, �� ������� ������ ���������� ���������� ���������

select top 1 with ties themes.name, forms.name, count(students.name)
from students 
join connects on students.id = connects.id_student
join courses on courses.id = connects.id_course
join themes on themes.id = courses.id_theme
join forms on forms.id = courses.id_form
group by themes.name, forms.name
order by count(students.name) desc 

-- 4. ������� ������ ���, ��� ������ �� ����� ����� � �������, �� ������ ���

select students.name 
from students
join connects on connects.id_student = students.id
where connects.id_course = (select connects.id_course from students
join connects on connects.id_student = students.id
where students.name = '�����') and  
students.br_date > (select students.br_date from students where students.name = '�����')

-- 5. ����� �����, �� ������� ���������� ������ � ������������ ������� ��, ������� � �� ����� IM 
select *
from themes 
join courses on themes.id = courses.id_theme
join forms on forms.id = courses.id_form
join (select courses.lect_hours as 'im_lect', courses.labs_hours as 'im_labs'
		from courses
		join themes on themes.id = courses.id_theme
		where themes.name = 'IM') im on im.im_lect = courses.lect_hours and im.im_labs = courses.labs_hours



-- 6. ����� �����, ��� ����� ������� ������, ��� �� ����� Ruby

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

-- 7.	����� ���������� ���������, � ������� ����� �������� ����� �� ��� C�����, 
--� �������������� ������� ��� �� ������� ����� ������ �������� ������ (����� ���� �����)

select count(*) as '���-�� ����� �������', (select month(br_date) 
														from students
														where students.name = '�����')
														as '����� �������� ������'
from students
where month(br_date) = (select month(br_date)
						from students
						where students.name = '�����')

-- 8.����� ��������������, ���� ��� ���� ������� ��������� � ����� 
--��� ������ ������ (���� ����� ������)



select distinct persones.name  
from persones
join missions on missions.id_persone = persones.id
join roles on roles.id = missions.id_role 
join (select roles.name as 'andrew_role'
		from persones
		join missions on missions.id_persone = persones.id
		join roles on roles.id = missions.id_role
		where persones.name = '������') andrew_role on roles.name = andrew_role.andrew_role








