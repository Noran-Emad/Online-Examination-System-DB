--------------------instructors_table
--------------------select_proc--33
create proc select_instructors
as
begin 
select * from instructors
end
----test
exec select_instructors


-------------------------insert_proc--34
create proc insert_instructors @insfname varchar(100),@inslname varchar(100),@insadd varchar(100)
,@insphone varchar(11),@did int,@bid int,@insdate date 
as
begin 
insert into instructors values (@insfname ,@inslname ,@insadd 
,@insphone ,@did ,@bid ,@insdate  )
end
----test
exec insert_instructors 'Rahma','Rashedy','Cairo, Egypt','01001001011',1,1,'2022-12-22'


-------------------------update_proc--35
create proc update_instructors @insid int, @insfname varchar(100),@inslname varchar(100),@insadd varchar(100)
,@insphone varchar(11),@did int,@bid int,@insdate date 
as
begin 
update instructors
set instfname=@insfname,@inslname=@inslname,instaddress=@insadd,instphone=@insphone,deptid=@did,
branchid=@bid,instHireDate=@insdate
where instid=@insid
end
----test
exec update_instructors 14,'Rahma','Rashedy','Giza, Egypt','01001001011',1,1,'2022-12-22'


-----------------------delete_proc--36
create proc delete_instructors @insid int
AS
if not exists (select instid from instructors where instid=@insid)
select 'there is no instructor with this id'
else if not exists (select instructorid from instructorcourses where instructorid=@insid) 
    DELETE FROM instructors
	WHERE instid = @insid
else 
    select 'table has relation'

----test
exec delete_instructors 14
