create database English_Academy;
use English_Academy;
drop database English_Academy;
-- learning english academy database
create database english_academy;

use english_academy;

create table employees (
	employees_id int primary key not null, national_code int not null, first_name varchar(100) not null, last_name varchar(100) not null, phone_number int not null, age int not null, city varchar(100) not null, job_position varchar(100) not null)
	
create table teachers (
	teachers_id int primary key not null, national_code int not null, first_name varchar (100) not null, last_name varchar (100) not null, phone_number int not null, teaching_level varchar (50) not null, experience int not null, city varchar (100) not null )
	
create table students (
	students_id int primary key not null, national_code int not null, first_name varchar (100) not null, last_name varchar (100) not null, phone_number int not null, learning_level varchar (50) not null, age int not null, city varchar (100) not null )
	
insert into employees values
(1, 1234, 'amin', 'amini', 0911123678, 45, 'tehran', 'manager')

insert into employees values
(2, 34551, 'amir', 'amiri', 88653472, 25, 'karaj', 'supervisor'), (3, 65478, 'maryam', 'mortezaie', 88653472, 26, 'tehran', 'supervisor'),
(4, 98722, 'mona', 'bahary', 88653472, 22, 'karaj', 'supervisor'), (5, 89628, 'bahador', 'rozbehie', 88653472, 25, 'tehran', 'supervisor'),
(6, 38455, 'jafar', 'jafari', 88653472, 21, 'karaj', 'supervisor')

insert into employees values
(7, 76509, 'reza', 'khoram', 88653472, 30, 'tehran', 'administrative'), (8, 34523, 'mahshid', 'kazemy', 88653472, 21, 'tehran', 'administrative'),
(9, 87645, 'sepideh', 'majodi', 88653472, 22, 'tehran', 'administrative'), (10, 82348, 'bahador', 'rozbehie', 88653472, 25, 'tehran', 'administrative')

select * from employees

insert into teachers values 
(11, 54398, 'ali', 'alirezaie', 88653472, 'level A', 5, 'tehran'), (12, 76589, 'samira', 'mohamdi', 88653472, 'level A', 10, 'tehran'),
(13, 65432, 'kiana', 'haghighi', 88653472, 'level A', 7, 'tehran'), (14, 98762, 'mohamad', 'mohammdi', 88653472, 'level B', 6, 'tehran'),
(15, 18764, 'isan', 'ghasemy', 88653472, 'level C', 9, 'tehran')

select * from teachers

insert into students values 
(16, 27689, 'hasan', 'hasani', 45678900, 'level A', 19, 'karaj'), (17, 65487, 'hesam', 'hashemi', 65432314, 'level B', 21, 'tehran'),
(18, 65879, 'hashem', 'javadi', 56879645, 'level A', 18, 'karaj'), (19, 23498, 'tahereh', 'kazaie', 23421234, 'level C', 25, 'tehran'),
(20, 76537, 'zahra', 'hasani', 45678900, 'level B', 22, 'tehran'), (21, 98721, 'sara', 'moghadam', 45678900, 'level C', 28, 'karaj')

select * from students
-- test other querys
select first_name,last_name  from employees

select * from employees where age>=25

select * from teachers where city='karaj' or experience>5

select * from teachers where experience>5  and teaching_level='level A'

select * from teachers where not city ='tehran'

select * from teachers where experience between 9 and 19

select * from students where first_name between 'hesam' and 'sara' order by first_name asc

select * from students where age not between 19 and 23

select * from students order by last_name desc

select * from employees e where city in ('tehran','karaj')

select * from employees e where first_name like '%a'

select * from teachers t where last_name like 'a%'

select * from students s where first_name like '%a%'

select * from employees e where first_name like '_a%'

select * from employees e where last_name like '__m%'

select * from students s where first_name not like '__m%'

select * from teachers t where first_name like 'n%a'

select * from employees e where first_name is null

select first_name as name, last_name as family from employees e 

update students set city='ramsar', age=24 where students_id = 21

select distinct city from students s 

alter table teachers add email varchar(255)

select * from teachers t 

alter table teachers drop column email

select * from teachers t 

select min(age) as minimumage from students

select max(age) as maximumage from students

select max(experience) as maximumexperience from teachers where city='tehran'

select min(first_name) from teachers

select min(age) as youngest from students

select count(age) from students

select count(experience) from teachers where experience > 7

select count(first_name) as capital from teachers where city = 'tehran'

select avg(experience) from teachers

select avg(age) from students where city='karaj'

select sum(students_id) from students

select sum(salary) from insurer

select lower(first_name) from employees

select upper(last_name) from teachers

select upper(first_name) from students order by first_name asc

select first_name, length(first_name) as length from employees order by first_name asc

-- select students.first_name + ' ' + students.last_name as students_name, teachers.first_name + ' ' + teachers.last_name as teachers_name from students, teachers
-- where students.learning_level = teachers.teaching_level and experience > 4

-- select students.students_id as id1, teachers.teachers_id as id2 from students s, teachers where students.learning_level = teachers.teaching_level and experience > 4

select employees.first_name  + ' ' + employees.last_name  as full_name1, teachers.first_name + ' ' + teachers.last_name as full_name2,
students.learning_level, students.first_name, students.last_name from employees e, teachers t, students s
where learning_level = teaching_level and employees.city = students.city and national_code > 23456


select city,teaching_level  from teachers t 
union
select city,learning_level from students s 

select count(employees_id) as count, city from employees e  group by city order by city desc

select min(age) from students s  group by age 

select age,count(students_id) as count from students s  group by age having age > 20

select employees.first_name , teachers.last_name from employees inner join teachers 
on employees.city = teachers.city order by employees.first_name











