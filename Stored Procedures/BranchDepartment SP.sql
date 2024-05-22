use iti

--------------------branchdepartment_table
--------------------select_proc--5
create proc select_branchdepartment 
as
begin 
select * from branchdepartment
end
----test
exec select_branchdepartment


-------------------------insert_proc--6
create proc insert_branchdepartment @bdid int,@depid int
as
begin 
insert into branchdepartment values (@bdid,@depid )
end
----test
exec insert_branchdepartment 1,4


-------------------------update_proc--7
create proc update_branchdepartment @oldbid int, @olddept int, @bdid int,@deptid int 
as
begin 
update branchdepartment
set deptid=@deptid , branchid = @bdid
where branchid=@oldbid and deptid = @olddept
end
----test
exec update_branchdepartment 1,5 ,1,2

-----------------------delete_proc--8
create proc delete_branchdepartment @bdid int
AS
if not exists (select branchid from branchdepartment where branchid=@bdid) 
    DELETE FROM branchdepartment
	WHERE branchid = @bdid
else 
    select 'table has relationship'

----test
exec delete_branchdepartment 5

