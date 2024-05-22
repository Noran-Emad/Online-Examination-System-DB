alter table StudentExam
add constraint fk_StudentExam_Student foreign key (Studentid) references student(studid);

alter table StudentExam
add constraint fk_StudentExam_Exam foreign key (Examid) references Exam(Examid);