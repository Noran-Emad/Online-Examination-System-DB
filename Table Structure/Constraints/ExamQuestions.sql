alter table ExamQuestions
add constraint fk_ExamQuestions_question
foreign key (questionid) references question(questionid);

alter table ExamQuestions
add constraint fk_ExamQuestions_question
foreign key (questionid) references question(questionid);