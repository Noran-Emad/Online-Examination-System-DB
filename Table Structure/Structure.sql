
/* Create DataBase */
create database ITI
use ITI

/* Create Tables */
create table branch (
	branchid int identity primary key,
	branchname varchar(100) null,
	branchaddress varchar(500) null,
	branchphone varchar(11) null,
);
go

create table department (
	deptid int identity primary key,
	deptname varchar(100) null,
	deptmanager int null,
);
go

create table branchdepartment (
	branchid int ,
	deptid int ,
	primary key (branchid, deptid),
);
go

create table student (
	studid int identity primary key,
	studfname varchar(50) null,
	studlname varchar(50) null,
	studphone varchar(11) null,
	studaddress varchar(500) null,
	studleader int null,
	deptid int not null,
	branchid int not null
);
go


create table instructors (
	instid int identity primary key,
	instfname varchar(100) null,
	instlname varchar(100) null,
	instaddress varchar(400) null,
	instphone varchar(100) null,
	deptid int not null,
	branchid int not null,
	instHireDate date null,
);
go


create table course (
	courseid int identity primary key,
	coursename varchar(100) null,
	courseDuration int null,
);
go


create table question (
	questionid int identity primary key,
	questiontitle varchar(500) not null,
	questiontype int not null,
	courseid int null,
	correctanswer char check(correctanswer IN ('A', 'B', 'C', 'D')) not null,
	mark int not null,
);
go

create table choices (
	choicesid int identity primary key,
	choiceKey char check(choiceKey IN ('A', 'B', 'C', 'D')),
	choicestitle varchar(500) not null
);
go

create table questionschoices (
	choiceid int ,
	questionid int not null,
	primary key (choiceid, questionid),
);
go

create table questiontype (
	qtypeid int identity primary key,
	qtype varchar(250) not null
);
go

create table Exam (
	Examid int identity primary key,
	Courseid int not null,
	Duration int
);
go

create table ExamQuestions (
	Examid int,
	questionid int,
	primary key(Examid,questionid)
);
go

create table StudentExam (
	Examid int ,
	Studentid int,
	Grade int,
	primary key(Examid,Studentid)
);
go

create table StudentExamAnswers (
	Examid int ,
	Studentid int,
	questionid int,
	answer char(1),
	primary key(Examid,Studentid,questionid)
);
go

create table Topics (
	Topicid int primary key identity,
	courseid int,
	Topictitle varchar(200),
);
go

create table InstructorStudentCourses (
	courseid int,
	Studentid int,
	Instructorid int,
	degree int null,
	primary key(courseid,Studentid,Instructorid)
);
go

/* Alter Tables To Add Foreign Key */

alter table InstructorStudentCourses 
	add constraint fk_InstructorStudentCourses
	foreign key (courseid) references course(courseid),
	foreign key (Studentid) references student(studid),
	foreign key (Instructorid) references instructors(instid)
go

alter table StudentExamAnswers 
	add constraint fk_StudentExamAnswers_Exam
	foreign key (Examid) references Exam(Examid),
	foreign key (Studentid) references student(studid),
	foreign key (questionid) references question(questionid)
go

alter table ExamQuestions
add constraint fk_ExamQuestions_Exam
foreign key (Examid) references Exam(Examid);
go

alter table ExamQuestions
add constraint fk_ExamQuestions_question
foreign key (questionid) references question(questionid);
go

alter table Topics
add constraint fk_TopicsCourse
foreign key (courseid) references course(courseid);
go

alter table Exam
add constraint fk_Exam_Course
foreign key (Courseid) references course(courseid);
go

alter table StudentExam
add constraint fk_StudentExam_Student foreign key (Studentid) references student(studid);
go

alter table StudentExam
add constraint fk_StudentExam_Exam foreign key (Examid) references Exam(Examid);
go

alter table department
add constraint fk_deptmanager_instructors
foreign key (deptmanager) references instructors(instid);
go

alter table branchdepartment
add constraint fk_deptid foreign key (deptid) references department(deptid);
go

alter table branchdepartment
add constraint fk_branchid foreign key (branchid) references branch(branchid);
go

alter table branchdepartment
add constraint UC_BranchDepartment unique (branchid, deptid);
go

alter table student
add constraint fk_branchdepartment
foreign key (branchid, deptid) references branchdepartment(branchid, deptid);
go


alter table instructors
add constraint fk_branchdepartment_instructors
foreign key (branchid, deptid) references branchdepartment(branchid, deptid);
GO

alter table question
add constraint fk_course_question
foreign key (courseid)references course(courseid);
go

alter table question
add constraint fk_questiontype_question
foreign key (questiontype)references questiontype(qtypeid);
go

alter table questionschoices
add constraint fk_question_choices
foreign key (questionid)references question(questionid);
go

alter table questionschoices
add constraint fk_questionchoices_choices
foreign key (choiceid)references choices(choicesid);
go

alter table student
add constraint fk_student_student1
foreign key (studleader) references student(studid);
go
