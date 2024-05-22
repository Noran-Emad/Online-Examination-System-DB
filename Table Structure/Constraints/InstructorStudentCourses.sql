alter table InstructorStudentCourses 
	add constraint fk_InstructorStudentCourses
	foreign key (courseid) references course(courseid),
	foreign key (Studentid) references student(studid),
	foreign key (Instructorid) references instructors(instid)