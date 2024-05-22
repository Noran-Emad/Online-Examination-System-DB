create table StudentExamAnswers (
	Examid int ,
	Studentid int,
	questionid int,
	answer char(1),
	primary key(Examid,Studentid,questionid)
);