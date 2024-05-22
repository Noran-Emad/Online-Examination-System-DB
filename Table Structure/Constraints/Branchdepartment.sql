alter table branchdepartment
add constraint fk_deptid foreign key (deptid) references department(deptid);
go

alter table branchdepartment
add constraint fk_branchid foreign key (branchid) references branch(branchid);
go

alter table branchdepartment
add constraint UC_BranchDepartment unique (branchid, deptid);
go