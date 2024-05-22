--------------------examQuestion_table
--------------------select_proc--25
create proc select_examquestion
as
begin 
select * from ExamQuestions
end
----test
exec select_examquestion


-------------------------insert_proc--26
create proc insert_examquestion @eid int,@qid int
as
begin 
insert into ExamQuestions values (@eid,@qid)
end
----test
exec insert_examquestion 15,100


-------------------------update_proc--27
create proc update_examquestion @eid int,@qid int
as
begin 
update ExamQuestions
set examid=@eid,questionid=@qid
where Examid=@eid
end
----test
exec update_examquestion 15,200


-----------------------delete_proc--28
create proc delete_examquestion @eid int
AS
if not exists (select examid from exam where Examid=@eid)
select 'there is no Exam with this id'
else if not exists (select Examid from Exam where Examid=@eid 
union select Examid from StudentExam where Examid = @eid ) 
    DELETE FROM ExamQuestions
	WHERE Examid = @eid
else 
    select 'table has relation'

----test
exec delete_examquestion 2
 