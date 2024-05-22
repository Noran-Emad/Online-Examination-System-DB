create table choices (
	choicesid int identity primary key,
	choiceKey char check(choiceKey IN ('A', 'B', 'C', 'D')),
	choicestitle varchar(500) not null
);