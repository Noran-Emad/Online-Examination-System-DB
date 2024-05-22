--------------------exam_table
--------------------select_proc--21
create proc select_exam
as
begin 
select * from exam
end
----test
exec select_exam


-------------------------insert_proc--22
create proc insert_exam @cid int,@dura int
as
begin 
insert into exam values (@cid,@dura)
end
----test
exec insert_exam 11,100


-------------------------update_proc--23
create proc update_exam @eid int,@cid int,@dura int 
as
begin 
update exam
set Courseid=@cid,Duration=@dura
where Examid=@eid
end
----test
exec update_exam 11,11,300


-----------------------delete_proc--24
create proc delete_exam @eid int
AS
if not exists (select examid from exam where Examid=@eid)
select 'there is no Exam with this id'
else if not exists (select Examid from ExamQuestions where Examid=@eid 
union select Examid from StudentExam where Examid = @eid ) 
    DELETE FROM Exam
	WHERE Examid = @eid
else 
    select 'Exam has relation'

----test
exec delete_exam 2