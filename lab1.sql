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

insert into students values ('�','�','���������','19971225','1'),
('�','','������','19851225','1'),
('�','�','��������','19930205','2'),
('�','','��������','19870922','3'),
('�','�','���������','19920617','3'),
('�','�','����������','19920618','4'),
('�','�','�������','19920513','4'),
('�','','������','19920814','4');

create table teachers (
id int not null identity primary key,
first_name nvarchar(40),
second_name nvarchar(40),
last_name nvarchar(40)
)

insert into teachers values ('�','','����������'),
('�','�','�������'),
('�','�','�������'),
('�','�','�����'),
('�','�','�����������'),
('�','�','�������');

create table groups (
id int not null identity primary key,
group_name nvarchar(40),
course int
)

insert into groups values ('��135','1'),
('��134','1'),
('��235','2'),
('��','335');

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

insert into subjects values ('������','200'),
('����������','120'),
('������ ��������������','70'),
('�������������� ��','130'),
('�������� ����������� ����������������','90'),
('��������-��������������� ����������������','70');

alter table students add foreign key (id_group) references groups(id);
alter table plans add foreign key (id_teacher) references teachers(id);
alter table plans add foreign key (id_subject) references subjects(id);
alter table plans add foreign key (id_group) references groups(id);

----����������� ������ � id=4
update groups set group_name='��335' where id='4';
update groups set course='3' where id='4';

update students set id_group='2' where id='2';
update students set id_group='2' where id='1';

delete from plans where id_group='1';
delete from groups where group_name='��135';

update subjects set hours='120' where subject_name='�������� ����������� ����������������';
update subjects set hours='100' where subject_name='��������-��������������� ����������������';


alter table subjects add controls nvarchar(40);
update subjects set controls='�������';
update subjects set controls='�����' where subject_name='������ ��������������';

alter table students drop column second_name;
alter table teachers drop column second_name;


