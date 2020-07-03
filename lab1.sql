create database freeIT;

use freeIT;

create table students (
id int not null identity primary key,
first_name nvarchar(40),
second_name nvarchar(40),
last_name nvarchar(40),
birthday date,
id_group int
)

insert into students values ('П','Р','Федоренко','19971225','1'),
('О','','Зингел','19851225','1'),
('П','Г','Михеенок','19930205','2'),
('Н','','Савицкая','19870922','3'),
('М','Е','Ковальчук','19920617','3'),
('Н','Г','Заболотная','19920618','4'),
('Т','Р','Ковриго','19920513','4'),
('Н','','Шарапо','19920814','4');

create table teachers (
id int not null identity primary key,
first_name nvarchar(40),
second_name nvarchar(40),
last_name nvarchar(40)
)

insert into teachers values ('Н','','Сафроненко'),
('Н','У','Зайцева'),
('П','Г','Лисопад'),
('К','Н','Клюев'),
('П','Н','Рогачевский'),
('Н','Г','Макаров');

create table groups (
id int not null identity primary key,
group_name nvarchar(40),
course int
)

insert into groups values ('ПО135','1'),
('ПО134','1'),
('ПО235','2'),
('ПО','335');

create table plans (
id_group int not null,
id_teacher int not null,
id_subject int not null,
primary key(id_group, id_teacher, id_subject)
)

insert into plans values ('1','1','1'),
('1','2','2'),
('2','1','1'),
('2','2','2'),
('3','3','3'),
('3','4','4'),
('4','5','5'),
('4','6','6');

create table subjects (
id int not null identity primary key,
subject_name nvarchar(100),
hours int
)

insert into subjects values ('Физика','200'),
('Математика','120'),
('Основы алгоритмизации','70'),
('Проектирование БД','130'),
('Средства визуального программирования','90'),
('Объектно-ориентированное программирование','70');

alter table students add foreign key (id_group) references groups(id);
alter table plans add foreign key (id_teacher) references teachers(id);
alter table plans add foreign key (id_subject) references subjects(id);
alter table plans add foreign key (id_group) references groups(id);

----исправления строки с id=4
update groups set group_name='ПО335' where id='4';
update groups set course='3' where id='4';

update students set id_group='2' where id='2';
update students set id_group='2' where id='1';

delete from plans where id_group='1';
delete from groups where group_name='ПО135';

update subjects set hours='120' where subject_name='Средства визуального программирования';
update subjects set hours='100' where subject_name='Объектно-ориентированное программирование';


alter table subjects add controls nvarchar(40);
update subjects set controls='Экзамен';
update subjects set controls='Зачет' where subject_name='Основы алгоритмизации';

alter table students drop column second_name;
alter table teachers drop column second_name;


