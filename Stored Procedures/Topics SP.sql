--------------------topic_table
--------------------select_proc--61
create proc select_topic
as
begin 
select * from Topics
end
----test
exec select_topic


-------------------------insert_proc--62
create proc insert_topic @cid int,@ttitle varchar(100)
as
begin 
insert into Topics values ( @cid ,@ttitle )
end
----test
exec insert_topic 10,'Hacking' 


-------------------------update_proc--63
create proc update_topic @tid int,@cid int,@ttitle varchar(100)
as
begin 
update Topics
set courseid=@cid,Topictitle=@ttitle 
where Topicid=@tid
end
----test
exec update_topic 31,10,'Hacking'


-----------------------delete_proc--64
alter proc delete_topics @tid int
AS
if not exists (select topicid from Topics where Topicid=@tid)
select 'there is no Topic with this id'
else     
	DELETE FROM Topics
	WHERE Topicid = @tid

----test
exec delete_topics 11
