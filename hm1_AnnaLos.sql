--1. ������� ��� ���� � ��� ������.
-- 2. ������� ���� ��������� � �������
SELECT * from students;
--3. ������� ������ Id �������������
select id from students;
-- 4. ������� ������ ��� �������������
select name from students;
-- 5. ������� ������ email �������������
select email from students;
--6. ������� ��� � email �������������
select email, name from students;
--7. ������� id, ���, email � ���� �������� �������������
select id, name, email, created_on from students;
--8. ������� ������������� ��� password 12333
select * from students 
where password = '12333';
--9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
select * from students 
where created_on  = '2021-03-26 00:00:00';
--10. ������� ������������� ��� � ����� ���� ����� ����
select * from students
where name LIKE '%Anna%';
--11. ������� ������������� ��� � ����� � ����� ���� 8
select * from students
where name LIKE '%8%';
--12. ������� ������������� ��� � ����� � ���� ����� �
select * from students
where name LIKE '%a%';
--13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
select * from students 
where created_on  = '2021-07-12 00:00:00';
--14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
select * from students 
where created_on  = '2021-07-12 00:00:00' AND password = '1m313';
--15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
select * from students 
where created_on  = '2021-07-12 00:00:00' AND name = 'Andrey';
--16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
select * from students 
where created_on  = '2021-07-12 00:00:00' AND name = '8';
--17. ������� ������������ � ������� id ����� 110
select * from students 
where id  = '110';
--18. ������� ������������ � ������� id ����� 153
select * from students 
where id  = '153';
--19. ������� ������������ � ������� id ������ 140
select * from students 
where id  > '140';
--20. ������� ������������ � ������� id ������ 130
select * from students 
where id  < '130';
--21. ������� ������������ � ������� id ������ 127 ��� ������ 188
select * from students 
where id  > '188' or id < '127';
--22. ������� ������������ � ������� id ������ ���� ����� 137
select * from students 
where  id <= '137';
--23. ������� ������������ � ������� id ������ ���� ����� 137
select * from students 
where  id >= '137';
--24. ������� ������������ � ������� id ������ 180 �� ������ 190
select * from students 
where  id > '180' and id < '190' ;
--25. ������� ������������ � ������� id ����� 180 � 190
select * from students 
where  id between '180' and '190';
--26. ������� ������������� ��� password ����� 12333, 1m313, 123313
select * from students 
where  password = '12333' or password = '1m313' or password = '123313';
--27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students 
where  created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '021-03-26 00:00:00';
--28. ������� ����������� id 
select MIN (id) from students;
--29. ������� ������������ id.
select MAX (id) from students;
--30. ������� ���������� �������������
SELECT COUNT (name) from students;
--31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
select * from students 
order by id asc , name asc , created_on asc;
--32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
select * from students 
order by id DESC , name DESC , created_on DESC;