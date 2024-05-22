create table question (
	questionid int identity primary key,
	questiontitle varchar(500) not null,
	questiontype int not null,
	courseid int null,
	correctanswer char check(correctanswer IN ('A', 'B', 'C', 'D')) not null,
	mark int not null,
);