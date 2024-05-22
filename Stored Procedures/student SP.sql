--------------------student_table
--------------------select_proc--49
create proc select_student
as
begin 
select * from student
end
----test
exec select_student


-------------------------insert_proc--50
create proc insert_student @stfname varchar(50),@stlname varchar(50),@stphone varchar(11),@stadd varchar(100),
@stlead int,@did int ,@bid int 
as
begin 
insert into student values (@stfname,@stlname,@stphone,@stadd,@stlead,@did ,@bid)
end
----test
exec insert_student 'Rahma','Rashedy','01001001011','Giza,Egypt',1,1,1 


-------------------------update_proc--51
create proc update_student @stid int, @stfname varchar(50),@stlname varchar(50),@stphone varchar(11),@stadd varchar(100),
@stlead int,@did int ,@bid int
as
begin 
update student
set studfname=@stfname,studlname=@stlname,studphone=@stphone,studaddress=@stadd,studleader=@stlead,
deptid=@did,branchid=@bid
where studid=@stid
end
----test
exec update_student 13,'Rahma','Rashedy','01001001022','Giza,Egypt',1,1,1


-----------------------delete_proc--52
create proc delete_student @stid int
AS
if not exists (select studid from student where studid=@stid) 
    DELETE FROM student
	WHERE studid = @stid
else 
    select 'table has relationship'

----test
exec delete_student 13
