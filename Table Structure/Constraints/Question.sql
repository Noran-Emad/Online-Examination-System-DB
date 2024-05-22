alter table question
add constraint fk_course_question
foreign key (courseid)references course(courseid);
go

alter table question
add constraint fk_questiontype_question
foreign key (questiontype)references questiontype(qtypeid);
go