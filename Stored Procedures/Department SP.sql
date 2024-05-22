--------------------department_table
--------------------select_proc--17
create proc select_department
as
begin 
select * from department
end
----test
exec select_department


-------------------------insert_proc--18
create proc insert_department @did int,@dname varchar(100),@dmang int
as
begin 
insert into department values (@dname ,@dmang  )
end
----test
exec insert_department 12,'proffesional Web and BI' ,NULL


-------------------------update_proc--19
create proc update_department @did int,@dname varchar(100),@dmang int 
as
begin 
update department
set deptname=@dname,deptmanager=@dmang
where deptid=@did
end
----test
exec update_department 12,'proffesional web',null


-----------------------delete_proc--20
create proc delete_department @did int
AS
if not exists (select deptid from department where deptid=@did)
select 'there is no department with this id'
else if not exists (select deptid from branchdepartment where deptid=@did 
union select deptid from instructors where deptid = @did union
select deptid from student where deptid = @did ) 
    DELETE FROM department
	WHERE deptid = @did
else 
    select 'department has relation'

----test
exec delete_department 10