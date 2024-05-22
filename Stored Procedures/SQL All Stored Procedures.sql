use iti
--------------------branch_table
--------------------select_proc--1
create proc select_branch 
as
begin 
select * from branch
end
----test
exec select_branch
-------------------------insert_proc--2
create proc insert_branch @bname varchar(50),@baddress varchar(100),@bphone varchar(50)
as
begin 
insert into branch values (@bname ,@baddress ,@bphone )
end
----test
exec insert_branch 'cairo','misr elkadema','01010212022'
-------------------------update_proc--3
create proc update_branch @bid int,@bname varchar(50),@baddress varchar(100),@bphone varchar(50)
as
begin 
update branch
set branchname=@bname,branchaddress=@baddress,branchphone=@bphone
where branchid=@bid
end
----test
exec update_branch 6,'Giza','haram maryotya','01010010101'
-----------------------delete_proc--4
CREATE proc delete_branch
    @bid int
AS
BEGIN
    DELETE FROM branch
	WHERE branchid = @bid
END
----test
exec delete_branch 6
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
union select Courseid from Exam where courseid = @cid ) 
    DELETE FROM course
	WHERE courseid = @cid
else 
    select 'course has relation'

----test
exec delete_course 11


--------------------choices_table
--------------------select_proc--13
create proc select_choices
as
begin 
select * from choices
end
----test
exec select_choices
-------------------------insert_proc--14
create proc insert_choice @ckey char(1),@ctitle varchar(100)
as
begin 
insert into choices values (@ckey,@ctitle )
end
----test
exec insert_choice 'A','Length, Complexity, performance'
-------------------------update_proc--15
create proc update_choice @cid int,@ckey char(1),@ctitle varchar(100)
as
begin 
update choices
set choiceKey=@ckey,choicestitle=@ctitle
where choicesid=@cid
end
----test
exec update_choice 404 ,'A','performence'
-----------------------delete_proc--16
create proc delete_choice @cid int
AS
if exists (select choicesid from choices where choicesid=@cid) 
    DELETE FROM choices
	WHERE choicesid = @cid
else 
    select 'there is no choice with this id'

----test
exec delete_choice 403

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
 
--------------------InstructorStudentCourses_table
--------------------select_proc--29
create proc select_instructorcourses
as
begin 
select * from InstructorStudentCourses
end
----test
exec select_instructorcourses
-------------------------insert_proc--30
create proc insert_instructorcourse @cid int,@insid int,@stdid int,@grade int
as
begin 
insert into InstructorStudentCourses values (@cid,@insid,@stdid,@grade)
end
----test
exec insert_instructorcourse 11,2,5,5
-------------------------update_proc--31
create proc update_instructorcourses @cid int,@insid int,@stdid int,@grade int
as
begin 
update InstructorStudentCourses
set courseid = @cid, instructorid=@insid, Studentid = @stdid , degree = @grade
where courseid=@cid
end
----test
exec update_instructorcourses 11,2,2,2
-----------------------delete_proc--32
create proc delete_instructorcourses @cid int
AS
if exists (select courseid from InstructorStudentCourses where courseid=@cid) 
    DELETE FROM InstructorStudentCourses
	WHERE courseid = @cid
else 
    select 'there is no course with this id'
----test
exec delete_instructorcourses 4

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
else if not exists (select instructorid from InstructorStudentCourses where instructorid=@insid) 
    DELETE FROM instructors
	WHERE instid = @insid
else 
    select 'table has relation'

----test
exec delete_instructors 14

--------------------question_table
--------------------select_proc--37
create proc select_question
as
begin 
select * from question
end
----test
exec select_question
-------------------------insert_proc--38
create proc insert_question @qtitle varchar(100),@qtype int,@cid int
,@correctans char(1),@mark int
as
begin 
insert into question values (@qtitle ,@qtype ,@cid ,@correctans ,@mark  )
end
----test
exec insert_question 'What is the Method',2,7,'C',9
-------------------------update_proc--39
create proc update_question @qid int, @qtitle varchar(100),@qtype int,@cid int
,@correctans char(1),@mark int
as
begin 
update question
set questiontitle=@qtitle,questiontype=@qtype,courseid=@cid,correctanswer=@correctans,mark=@mark
where questionid=@qid
end
----test
exec update_question 231,'What is Method',2,7,'C',9
-----------------------delete_proc--40
create proc delete_question @qid int
AS
if not exists (select questionid from question where questionid=@qid)
select 'there is no question with this id'
else if not exists (select questionid from ExamQuestions where questionid=@qid) 
    DELETE FROM question
	WHERE questionid = @qid
else 
    select 'table has relation'
----test
exec delete_question 200

--------------------questionchoices_table
--------------------select_proc--41
create proc select_questionchoices
as
begin 
select * from questionschoices
end
----test
exec select_questionchoices
-------------------------insert_proc--42
create proc insert_questionchoices @cid int,@qid int
as
begin 
insert into questionschoices values (@cid,@qid )
end
----test
exec insert_questionchoices 403,190  
-------------------------update_proc--43
create proc update_questionchoices @cid int,@qid int
as
begin 
update questionschoices
set questionid=@qid
where choiceid=@cid
end
----test
exec update_questionchoices 403,191
-----------------------delete_proc--44
create proc delete_questionchoices @cid int
AS
if not exists (select choiceid from questionschoices where choiceid=@cid) 
    DELETE FROM questionschoices
	WHERE choiceid = @cid
else 
    select 'table has relationship'

----test
exec delete_questionchoices 403

--------------------questiontype_table
--------------------select_proc--45
create proc select_questiontype
as
begin 
select * from questiontype
end
----test
exec select_questiontype
-------------------------insert_proc--46
create proc insert_questiontype @qtype varchar(50)
as
begin 
insert into questiontype values (@qtype )
end
----test
exec insert_questiontype 'write statment'  
-------------------------update_proc--47
create proc update_questiontype @qid int,@qtype varchar(50)
as
begin 
update questiontype
set qtype=@qtype
where qtypeid=@qid
end
----test
exec update_questiontype 3,'write statment'
-----------------------delete_proc--48
create proc delete_questiontype @qid int
AS
if not exists (select qtypeid from questiontype where qtypeid=@qid) 
    DELETE FROM questiontype
	WHERE qtypeid = @qid
else 
    select 'table has relationship'

----test
exec delete_questiontype 3

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

--------------------topic_table
--------------------select_proc--61
create proc select_topic
as
begin 
select * from Topics
end
----test
exec select_topic
-------------------------insert_proc--62
create proc insert_topic @cid int,@ttitle varchar(100)
as
begin 
insert into Topics values ( @cid ,@ttitle )
end
----test
exec insert_topic 10,'Hacking' 
-------------------------update_proc--63
create proc update_topic @tid int,@cid int,@ttitle varchar(100)
as
begin 
update Topics
set courseid=@cid,Topictitle=@ttitle 
where Topicid=@tid
end
----test
exec update_topic 31,10,'Hacking'
-----------------------delete_proc--64
alter proc delete_topics @tid int
AS
if not exists (select topicid from Topics where Topicid=@tid)
select 'there is no Topic with this id'
else     
	DELETE FROM Topics
	WHERE Topicid = @tid

----test
exec delete_topics 11

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