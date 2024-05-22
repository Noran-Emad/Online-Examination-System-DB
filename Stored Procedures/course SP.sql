--------------------course_table
--------------------select_proc--9
create proc select_course
as
begin 
select * from course
end
----test
exec select_course


-------------------------insert_proc--10
create proc insert_course @cname varchar(100),@cduration int
as
begin 
insert into course values (@cname ,@cduration)
end
----test
exec insert_course 'bioinformatics',9


-------------------------update_proc--11
create proc update_course @cid int,@cname varchar(100),@cduration int
as
begin 
update course
set coursename=@cname,courseDuration=@cduration
where courseid=@cid
end
----test
exec update_course 11 ,'biomedical',9


-----------------------delete_proc--12
create proc delete_course @cid int
AS
if not exists (select courseid from course where courseid = @cid)
select 'There is no cousre with this id'
else if not exists (select courseid from InstructorStudentCourses where courseid=@cid 
union select courseid from InstructorStudentCourses where courseid = @cid union
select Courseid from Exam where courseid = @cid ) 
    DELETE FROM course
	WHERE courseid = @cid
else 
    select 'course has relation'

----test
exec delete_course 11
