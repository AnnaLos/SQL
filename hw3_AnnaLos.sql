--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name, monthly_salary from employee_salary
join salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_id;

 --2. ������� ���� ���������� � ������� �� ������ 2000.

select  employee_name from employee_salary
join salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_id
where monthly_salary < '2000';

 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select monthly_salary from employee_salary
join salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_id
where monthly_salary is not null and employee_name is null;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select monthly_salary from employee_salary
join salary on salary.id = employee_salary.salary_id 
join employees on employee_id = employee_id
where monthly_salary < '2000' and  employee_name is null;

 --5. ����� ���� ���������� ���� �� ��������� ��.

select employee_name from employee_salary
join salary on salary.id = employee_salary.salary_id 
join employees on employees.id = employee_id
where monthly_salary is null and employee_name is not null;

 --6. ������� ���� ���������� � ���������� �� ���������.

select employee_name, role_name from roles_employee  
join roles on roles.id = role_id
join employees on employees.id = employee_id;

 --7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from roles_employee
join roles on roles.id = role_id
join employees on employees.id = employee_id
where role_name like '%Java %';

 --8. ������� ����� � ��������� ������ Python �������������.

select employee_name, role_name from roles_employee
join roles on roles.id = role_id
join employees on employees.id = employee_id
where role_name like '% Python %';

 --9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name from roles_employee
join roles on roles.id = role_id
join employees on employees.id = employee_id
where role_name like '% QA %';

 --10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name from roles_employee
join roles on roles.id = role_id
join employees on employees.id = employee_id
where role_name like '% QA %' and role_name like '% Manual %';

 --11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name from roles_employee
join roles on roles.id = role_id
join employees on employees.id = employee_id
where role_name like '% QA %' and role_name like '% Automation %';

 --12. ������� ����� � �������� Junior ������������

select employee_name, monthly_salary, from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where  role_name like '%Junior%';

 --13. ������� ����� � �������� Middle ������������

select employee_name, monthly_salary  from roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where  role_name like '%Middle%';

 --14. ������� ����� � �������� Senior ������������

select employee_name, monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where  role_name like '%Senior%';

 --15. ������� �������� Java �������������

select monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Java%'and role_name like '%developer%';

 --16. ������� �������� Python �������������

select monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Python%'and role_name like '%developer%';

 --17. ������� ����� � �������� Junior Python �������������

select employee_name, monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Python%'and role_name like '%developer%' and role_name like '%Junior%';

 --18. ������� ����� � �������� Middle JS �������������

select employee_name, monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Middle%'and role_name like '%developer%' and role_name like '%Java%' and role_name like '%Script%';

 --19. ������� ����� � �������� Senior Java �������������

select employee_name, monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Senior%'and role_name like '%developer%' and role_name like '%Java%';

 --20. ������� �������� Junior QA ���������

select monthly_salary  from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Junior%'and role_name like '%QA%' and role_name like '%engineer%';

 --21. ������� ������� �������� ���� Junior ������������

select AVG(monthly_salary) as salaryAVG from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Junior%';

 --22. ������� ����� ������� JS �������������

select SUM(monthly_salary) as salarySUM from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Java%' and role_name like '%Script%';

 --23. ������� ����������� �� QA ���������

select MIN(monthly_salary) as salaryMIN from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%QA%';

 --24. ������� ������������ �� QA ���������

select MAX(monthly_salary) as salaryMAX from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%QA%';

 --25. ������� ���������� QA ���������

select COUNT(role_name) as role_nameCOUNT from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%QA%';

 --26. ������� ���������� Middle ������������.

select COUNT(role_name) as role_nameCOUNT from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%Middle%';

 --27. ������� ���������� �������������

select COUNT(role_name) as role_nameCOUNT from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%developer%';

 --28. ������� ���� (�����) �������� �������������.
select SUM(monthly_salary) as salarySUM from  roles_employee
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
where role_name like '%developer%';

 --29. ������� �����, ��������� � �� ���� ������������ �� �����������

select  employee_name, role_name, monthly_salary  from  roles_employee 
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
order by monthly_salary asc;

 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name, role_name, monthly_salary  from  roles_employee 
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
WHERE monthly_salary BETWEEN '1700' AND '2300'
order by monthly_salary asc;

 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employee_name, role_name, monthly_salary  from  roles_employee 
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
WHERE monthly_salary <'2300'
order by monthly_salary asc;

 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select employee_name, role_name, monthly_salary  from  roles_employee 
join employees  on  employees.id  = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employee_salary  on roles_employee.employee_id  = roles_employee.employee_id
join salary  on   salary.id = salary_id
WHERE monthly_salary ='1100'or monthly_salary ='1500' or monthly_salary ='2000'
order by monthly_salary asc;