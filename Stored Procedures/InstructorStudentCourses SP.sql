
--------------------InstructorStudentCourses_table
--------------------select_proc
create proc select_instructorcourses
as
begin 
select * from InstructorStudentCourses
end
----test
exec select_instructorcourses


-------------------------insert_proc
create proc insert_instructorcourse @cid int,@insid int,@stdid int,@grade int
as
begin 
insert into InstructorStudentCourses values (@cid,@insid,@stdid,@grade)
end
----test
exec insert_instructorcourse 11,2,5,5


-------------------------update_proc
create proc update_instructorcourses @cid int,@insid int,@stdid int,@grade int
as
begin 
update InstructorStudentCourses
set courseid = @cid, instructorid=@insid, Studentid = @stdid , degree = @grade
where courseid=@cid
end
----test
exec update_instructorcourses 11,2,2,2


-----------------------delete_proc
create proc delete_instructorcourses @cid int
AS
if exists (select courseid from InstructorStudentCourses where courseid=@cid) 
    DELETE FROM InstructorStudentCourses
	WHERE courseid = @cid
else 
    select 'there is no course with this id'
----test
exec delete_instructorcourses 4
