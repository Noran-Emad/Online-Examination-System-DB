create table instructors (
	instid int identity primary key,
	instfname varchar(100) null,
	instlname varchar(100) null,
	instaddress varchar(400) null,
	instphone varchar(100) null,
	deptid int not null,
	branchid int not null,
	instHireDate date null,
);