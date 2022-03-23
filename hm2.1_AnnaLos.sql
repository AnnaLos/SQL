--Создать таблицу employee
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null


create table employees ( 
	id serial  primary key,
	employee_name varchar(50) not null
);
--Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values 			('Вадим Ксендзов'),
				('Гудман Георгий'),
				('Инна Диденко'),
				('Татьяна Евмененко'),
			 	('Сергей Морковкин'),
				('Елисей Лубенников'),
				('Дмитрий Абакумов'),
				('Андрей Бойко'),
				('Фера'),
				('Андрей Смоляков'),
				('Екатерина Орехова'),
				('Елизавета Ширявскова'),
				('Удовиченко Людмила'),
				('Марченко Юлия'),
				('Кольцова Мария'),
				('Кветко Ольга'),
				('Татьяна Чайковская'),
				('Павел Балыбердин'),
				('Алия Абдулхакова'),
				('Марк Апетёнок'),
				('Дима Шевчик'),
				('Тур Кристина'),
				('Александр Мальцев'),
				('Nataliia Voroniuk'),
				('Анна Перепеча'),
				('Алиса Голубова'),
				('Тимофей Щукин'),
				('Алексей Ревенко'), 
				('Руслан Михайлик'),
				('Виктор Сохин'),
				('Ольга Китаева'),
				('Инна Фролова'),
				('Глеб Бащак'),
				('Вадим Старовойтов'),
				('Саша Попова'),
				('Виктория Сикирицкая'),
				('Кабехов Заур'),
				('Владимир Горбаевский'),
				('Евгений КолодЕнец'),
				('Iryna Klimkova'),
				('Светлана Терехина'),
				('Inna Bolotina'),
			    ('Владимир Лещенко'),
				('HannaMironovich'),
				('Евгений Букас'),
				('Стойкова Цветелина'),
				('Olena Parneta'),
				('Смолерова Наталья'),
				('Ivan Gushchin'),
				('Alina Povstyan'),
				('Светлана Ченчикова'),
				('Марина Чайчиц'),
				('Anna Los'),
				('Mikhail Luzan'),
				('Lena Barinova'),
				('Elena Stepanova-Parshuto'), 
				('Andrusenko Zakhar'),
				('Ilya Pyataev'),
				('Давыденко Евгений'),
				('Nadezhda DudniK'),
				('Artsiom Nalivaika-Vakulchik'),
				('Tatyana Namestnikova'),
				('Антон Пустовар'),
				('Никита Дельнов'),
				('Tanya Khanenya'),
				('Андрей Геронок'),
				('Filipovich Andrei'),
				('Iuliia Ilchenko'),
				('Dmitry Mitskevich'),
				('Евгений Кличевский');
			select*from employees;
		
--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary ( 
	id serial  primary key,
	monthly_salary int not null
);

--Наполнить таблицу salary 15 строками:

insert into salary (monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary (
	id serial  primary key,
	employee_id int not null unique,
	salary_id int not null
	);

--Наполнить таблицу employee_salary 40 строками:

insert into employee_salary (id, employee_id, salary_id)
values  (default, 3, 7),
		(default, 1, 4),
		(default, 5, 9),
		(default, 40, 13),
		(default, 23, 4),
		(default, 11, 2),
		(default, 52, 10),
		(default, 15, 13),
		(default, 26, 4),
		(default, 16, 1),
		(default, 33, 7),
		(default, 88, 87),
		(default, 99, 46),
		(default, 44, 19),
		(default, 9, 5),
		(default, 86, 14),
		(default, 7, 12),
		(default, 39, 37),
		(default, 85, 46),
		(default, 84, 45),
		(default, 14, 3),
		(default, 37, 46),
		(default, 35, 66),
		(default, 36, 60),
		(default, 38, 7),
		(default, 30, 34),
		(default, 66, 22),
		(default, 34, 78),
		(default, 83, 18),
		(default, 32, 46),
		(default, 21, 11),
		(default, 25, 97),
		(default, 53, 67),
		(default, 56, 28),
		(default, 13, 17),
		(default, 2, 35),
		(default, 4, 34),
		(default, 17, 33),
		(default, 6, 32),
		(default, 24, 76);

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles (
id serial primary key,
role_name int not null unique 
);

--Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

--Наполнить таблицу roles 20 строками

insert into roles (id, role_name)
values (default, 'Junior Python developer'),
(default, 'Middle Python developer'),
(default, 'Senior Python developer'),
(default, 'Junior Java developer'),
(default, 'Middle Java developer'),
(default, 'Senior Java developer'),
(default, 'Junior JavaScript developer'),
(default, 'Middle JavaScript developer'),
(default, 'Senior JavaScript developer'),
(default, 'Junior Manual QA engineer'),
(default, 'Middle Manual QA engineer'),
(default, 'Senior Manual QA engineer'),
(default, 'Project Manager'),
(default, 'Designer'),
(default, 'HR'),
(default, 'CEO'),
(default, 'Sales manager'),
(default, 'Junior Automation QA engineer'),
(default, 'Middle Automation QA engineer'),
(default, 'Senior Automation QA engineer');

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
	);
select *from roles_employee 

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
values (7,2),
(20,4),
(3,9),
(5,13),
(23,4),
(11,2),
(10,9),
(22,13),
(21,3),
(30,4),
(25,7),
(9,11),
(1,15),
(2,18),
(4,11),
(6,8),
(28,11),
(8,19),
(12,10),
(13,12),
(14,14),
(15,20),
(16,1),
(29,5),
(35,7),
(37,13),
(33,11),
(34,8),
(41,8),
(45,7),
(36,11),
(56,19),
(32,2),
(17,16),
(18,3),
(19,1),
(24,8),
(31,9),
(46,7),
(39,4);









