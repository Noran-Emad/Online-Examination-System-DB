--------------------StudentExamAnswer_table
--------------------select_proc--61
create proc select_StudentExamAnswer
as
begin 
select * from StudentExamAnswers
end
----test
exec select_StudentExamAnswer
-------------------------insert_proc


create proc insert_StudentExamAnswers @Examid int,@Stdid int , @Quesid int , @ans char
as
begin 
insert into StudentExamAnswers values ( @Examid ,@Stdid,@Quesid,@ans )
end
----test
exec insert_StudentExamAnswers 1,1,1,'A'

-------------------------update_proc
create proc update_StudentExamAnswers @Examid int,@Stdid int , @Quesid int , @ans char
as
begin 
update StudentExamAnswers
set Examid=@Examid,Studentid=@Stdid ,questionid=@Quesid,answer=@ans
where Examid=@Examid
end
----test
exec update_StudentExamAnswers 1,2,2,2


-----------------------delete_proc
create proc delete_StudentExamAnswers @Examid int,@Stdid int , @Quesid int 
AS
	DELETE FROM StudentExamAnswers
	WHERE Examid = @Examid and Studentid = @Stdid and questionid = @Quesid

----test
exec delete_StudentExamAnswers 1,2,2,2