alter table instructors
add constraint fk_branchdepartment_instructors
foreign key (branchid, deptid) references branchdepartment(branchid, deptid);