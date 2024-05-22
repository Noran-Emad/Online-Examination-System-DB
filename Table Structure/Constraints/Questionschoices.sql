alter table questionschoices
add constraint fk_question_choices
foreign key (questionid)references question(questionid);
go

alter table questionschoices
add constraint fk_questionchoices_choices
foreign key (choiceid)references choices(choicesid);
go