alter table StudentExamAnswers 
	add constraint fk_StudentExamAnswers_Exam
	foreign key (Examid) references Exam(Examid),
	foreign key (Studentid) references student(studid),
	foreign key (questionid) references question(questionid)