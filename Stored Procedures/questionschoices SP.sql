--------------------questionchoices_table
--------------------select_proc--41
create proc select_questionchoices
as
begin 
select * from questionschoices
end
----test
exec select_questionchoices


-------------------------insert_proc--42
create proc insert_questionchoices @cid int,@qid int
as
begin 
insert into questionschoices values (@cid,@qid )
end
----test
exec insert_questionchoices 403,190  


-------------------------update_proc--43
create proc update_questionchoices @cid int,@qid int
as
begin 
update questionschoices
set questionid=@qid
where choiceid=@cid
end
----test
exec update_questionchoices 403,191


-----------------------delete_proc--44
create proc delete_questionchoices @cid int
AS
if not exists (select choiceid from questionschoices where choiceid=@cid) 
    DELETE FROM questionschoices
	WHERE choiceid = @cid
else 
    select 'table has relationship'

----test
exec delete_questionchoices 403
