alter table Topics
add constraint fk_TopicsCourse
foreign key (courseid) references course(courseid);