--------------------studentexam_table
--------------------select_proc--57
create proc select_studentexam
as
begin 
select * from studentexam
end
----test
exec select_studentexam


-------------------------insert_proc--58
create proc insert_studentexam @eid int,@studid int,@grade int
as
begin 
insert into StudentExam values ( @eid ,@studid ,@grade )
end
----test
exec insert_studentexam 17,1,100


-------------------------update_proc--59
create proc update_studentexam @eid int,@studid int,@grade int
as
begin 
update StudentExam
set studentid=@studid,Grade=@grade  
where examid=@eid
end
----test
exec update_studentexam 17,1,200


-----------------------delete_proc--60
create proc delete_studentexam @eid int
AS
if not exists (select examid from StudentExam where examid=@eid) 
    DELETE FROM studentexam
	WHERE examid = @eid
else 
    select 'table has relationship'

----test
exec delete_studentexam 17