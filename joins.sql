--cartesian product
select st_fname,dept_name
from student , Department

--cross join
select st_fname,dept_name
from student cross join Department

--equi join
select st_fname,dept_name
from student , Department
where Department.Dept_Id=Student.Dept_Id

select st_fname,dept_name
from student s, Department d
where D.Dept_Id=S.Dept_Id 


select st_fname,dept_name,d.dept_id
from student s, Department d
where D.Dept_Id=S.Dept_Id and st_address='alex'

--inner join
select st_fname,dept_name
from student s inner join Department d
on D.Dept_Id=S.Dept_Id 

--left outer join
select st_fname,dept_name
from student s left outer join Department d
on D.Dept_Id=S.Dept_Id 

select st_fname,dept_name
from student s right outer join Department d
on D.Dept_Id=S.Dept_Id 

select st_fname,dept_name
from student s full outer join Department d
on D.Dept_Id=S.Dept_Id 

--self join
select s1.st_fname as studname,s2.st_fname as supername
from Student s1,Student s2
where s2.St_Id=s1.St_super

select s1.st_fname as studname,s2.*
from Student s1,Student s2
where s2.St_Id=s1.St_super

--join multi tables
select st_fname,crs_name,grade
from Student s, Stud_Course sc, course c
where s.St_Id=sc.St_Id and c.Crs_Id=sc.Crs_Id

select st_fname,crs_name,grade
from Student s inner join  Stud_Course sc
    on s.St_Id=sc.St_Id
	inner join
	 course c
    on c.Crs_Id=sc.Crs_Id

--join DML
--select s.st_id,grade,st_address
update Stud_Course
	set grade+=10
from Student s,Stud_Course sc
where s.St_Id=sc.St_Id and St_Address='cairo'
----------------------------------------
select *
from Student
where st_fname='ahmed'

select *
from Student
where st_fname like 'a%'

_ one char
% zero or more char

select *
from Student
where st_fname like 'a__'

'_a%'
'ahm%'
'[ahm]%'
'[a-h]%'
'[^a-h]%'
'[%]%'
'%[_]%'
---------------------------


delete from Department
where dept_id = 90

update Department
	set Dept_Id=100
	where Dept_Id=90


update Student
	set Dept_Id=NULL
	where Dept_Id=90

	delete from  Student
	where Dept_Id=90

delete from Department
where Dept_Id=30

update student  set Dept_Id=NULL 
where Dept_Id=30

update Instructor
	set Dept_Id=NULL
	where Dept_Id=30

--Built in functions
select st_fname+' '+convert(varchar(3),st_age)
from Student

select 'std name= '+st_fname+' & age= '+convert(varchar(2),st_age)
from Student

select dept_name+' '+convert(varchar(30),Manager_hiredate)
from Department


 
select dept_name,year(Manager_hiredate)
from Department

select dept_name,year(getdate())-year(Manager_hiredate)
from Department

select dept_name,month(Manager_hiredate)
from Department

select getdate()

select year(getdate())

select format(getdate(),'')
select format(getdate(),'dd/MM/yyyy')
select format(getdate(),'dddd MMMM yyyy')
select format(getdate(),'ddd MMM yy')
select format(getdate(),'dd MMMM yyyy')
select format(getdate(),'dd/MM/yyyy hh:mm:ss')
select format(getdate(),'dd/MM/yyyy hh:mm:ss tt')

select st_fname
from student

select upper(st_fname)
from student
select lower(st_fname)
from student
select substring(st_fname,1,3)
from student
select st_fname,len(st_fname)
from Student

select substring(st_fname,1,len(st_fname)-1)
from Student

select upper(substring(st_fname,1,1))+lower(substring(st_fname,2,len(st_fname)))
from student

select isnull(st_lname,st_fname)
from Student

select coalesce(st_lname,st_fname,st_address,'no data')
from student

--where St_Lname is not null


select *
from student
order by dept_id desc,st_age

select *
from student
order by newid()

select top(3)*
from Student

select top(3)*
from Student
order by st_id desc

select top(3)*
from Student
order by newid()

--functions
--covert
--getdate()  year month day
--format
--upper lower substring len
--newid
--isnull coalesce
