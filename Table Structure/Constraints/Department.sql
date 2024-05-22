alter table department
add constraint fk_deptmanager_instructors
foreign key (deptmanager) references instructors(instid);