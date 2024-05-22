create table student (
	studid int identity primary key,
	studfname varchar(50) null,
	studlname varchar(50) null,
	studphone varchar(11) null,
	studaddress varchar(500) null,
	studleader int null,
	deptid int not null,
	branchid int not null
);