create table InstructorStudentCourses (
	courseid int,
	Studentid int,
	Instructorid int,
	degree int null,
	primary key(courseid,Studentid,Instructorid)
);