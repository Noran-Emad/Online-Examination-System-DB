create table questionschoices (
	choiceid int ,
	questionid int not null,
	primary key (choiceid, questionid),
);