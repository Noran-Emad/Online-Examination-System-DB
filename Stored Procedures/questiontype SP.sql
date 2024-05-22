--------------------questiontype_table
--------------------select_proc--45
create proc select_questiontype
as
begin 
select * from questiontype
end
----test
exec select_questiontype


-------------------------insert_proc--46
create proc insert_questiontype @qtype varchar(50)
as
begin 
insert into questiontype values (@qtype )
end
----test
exec insert_questiontype 'write statment'  


-------------------------update_proc--47
create proc update_questiontype @qid int,@qtype varchar(50)
as
begin 
update questiontype
set qtype=@qtype
where qtypeid=@qid
end
----test
exec update_questiontype 3,'write statment'


-----------------------delete_proc--48
create proc delete_questiontype @qid int
AS
if not exists (select qtypeid from questiontype where qtypeid=@qid) 
    DELETE FROM questiontype
	WHERE qtypeid = @qid
else 
    select 'table has relationship'

----test
exec delete_questiontype 3
