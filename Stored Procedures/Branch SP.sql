use iti
--------------------branch_table
--------------------select_proc--1
create proc select_branch 
as
begin 
select * from branch
end
----test
exec select_branch


-------------------------insert_proc--2
create proc insert_branch @bname varchar(50),@baddress varchar(100),@bphone varchar(50)
as
begin 
insert into branch values (@bname ,@baddress ,@bphone )
end
----test
exec insert_branch 'cairo','misr elkadema','01010212022'


-------------------------update_proc--3
create proc update_branch @bid int,@bname varchar(50),@baddress varchar(100),@bphone varchar(50)
as
begin 
update branch
set branchname=@bname,branchaddress=@baddress,branchphone=@bphone
where branchid=@bid
end
----test
exec update_branch 6,'Giza','haram maryotya','01010010101'


-----------------------delete_proc--4
CREATE proc delete_branch
    @bid int
AS
BEGIN
    DELETE FROM branch
	WHERE branchid = @bid
END
----test
exec delete_branch 6