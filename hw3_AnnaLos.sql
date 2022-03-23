--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary from employee_salary
join salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_id;

 --2. Вывести всех работников у которых ЗП меньше 2000.

select  employee_name from employee_salary
join salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_id
where monthly_salary < '2000';

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary from employee_salary
join salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_id
where monthly_salary is not null and employee_name is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary from employee_salary
join salary on salary.id = employee_salary.salary_id 
join employees on employee_id = employee_id
where monthly_salary < '2000' and  employee_name is null;

 --5. Найти всех работников кому не начислена ЗП.

select employee_name from employee_salary
join salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_id
where monthly_salary is null and employee_name is not null;

 --6. Вывести всех работников с названиями их должности.

select employee_name, role_name from roles_employee  
join roles on roles.id = role_id
join employees on employees.id = employee_id;

 --7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name from roles_employee
join roles on roles.id = role_id
join employees on employees.id = employee_id
where role_name like '%Java %';

 --8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name from roles_employee
join roles on roles.id = role_id
join employees on employees.id = employee_id
where role_name like '% Python %';

 --9. Вывести имена и должность всех QA инженеров.

select employee_name, role_name from roles_employee
join roles on roles.id = role_id
join employees on employees.id = employee_id
where role_name like '% QA %';

 --10. Вывести имена и должность ручных QA инженеров.

select employee_name, role_name from roles_employee
join roles on roles.id = role_id
join employees on employees.id = employee_id
where role_name like '% QA %' and role_name like '% Manual %';

 --11. Вывести имена и должность автоматизаторов QA

select employee_name, role_name from roles_employee
join roles on roles.id = role_id
join employees on employees.id = employee_id
where role_name like '% QA %' and role_name like '% Automation %';

 --12. Вывести имена и зарплаты Junior специалистов

select employee_name, monthly_salary, from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where  role_name like '%Junior%';

 --13. Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary  from roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where  role_name like '%Middle%';

 --14. Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where  role_name like '%Senior%';

 --15. Вывести зарплаты Java разработчиков

select monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Java%'and role_name like '%developer%';

 --16. Вывести зарплаты Python разработчиков

select monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Python%'and role_name like '%developer%';

 --17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Python%'and role_name like '%developer%' and role_name like '%Junior%';

 --18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Middle%'and role_name like '%developer%' and role_name like '%Java%' and role_name like '%Script%';

 --19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Senior%'and role_name like '%developer%' and role_name like '%Java%';

 --20. Вывести зарплаты Junior QA инженеров

select monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Junior%'and role_name like '%QA%' and role_name like '%engineer%';

 --21. Вывести среднюю зарплату всех Junior специалистов

select AVG(monthly_salary) as salaryAVG from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Junior%';

 --22. Вывести сумму зарплат JS разработчиков

select SUM(monthly_salary) as salarySUM from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Java%' and role_name like '%Script%';

 --23. Вывести минимальную ЗП QA инженеров

select MIN(monthly_salary) as salaryMIN from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%QA%';

 --24. Вывести максимальную ЗП QA инженеров

select MAX(monthly_salary) as salaryMAX from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%QA%';

 --25. Вывести количество QA инженеров

select COUNT(role_name) as role_nameCOUNT from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%QA%';

 --26. Вывести количество Middle специалистов.

select COUNT(role_name) as role_nameCOUNT from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Middle%';

 --27. Вывести количество разработчиков

select COUNT(role_name) as role_nameCOUNT from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%developer%';

 --28. Вывести фонд (сумму) зарплаты разработчиков.
select SUM(monthly_salary) as salarySUM from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%developer%';

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select  employee_name, role_name, monthly_salary  from  roles_employee 
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
order by monthly_salary asc;

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_name, monthly_salary  from  roles_employee 
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
WHERE monthly_salary BETWEEN '1700' AND '2300'
order by monthly_salary asc;

 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, role_name, monthly_salary  from  roles_employee 
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
WHERE monthly_salary <'2300'
order by monthly_salary asc;

 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, role_name, monthly_salary  from  roles_employee 
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
WHERE monthly_salary ='1100'or monthly_salary ='1500' or monthly_salary ='2000'
order by monthly_salary asc;
