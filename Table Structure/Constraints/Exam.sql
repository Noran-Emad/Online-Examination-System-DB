alter table Exam
add constraint fk_Exam_Course
foreign key (Courseid) references course(courseid);