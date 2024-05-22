alter table student
add constraint fk_branchdepartment
foreign key (branchid, deptid) references branchdepartment(branchid, deptid);
go

alter table student
add constraint fk_student_student1
foreign key (studleader) references student(studid);
go