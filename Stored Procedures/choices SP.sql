--------------------choices_table
--------------------select_proc--13
create proc select_choices
as
begin 
select * from choices
end
----test
exec select_choices


-------------------------insert_proc--14
create proc insert_choice @ckey char(1),@ctitle varchar(100)
as
begin 
insert into choices values (@ckey,@ctitle )
end
----test
exec insert_choice 'A','Length, Complexity, performance'


-------------------------update_proc--15
create proc update_choice @cid int,@ckey char(1),@ctitle varchar(100)
as
begin 
update choices
set choiceKey=@ckey,choicestitle=@ctitle
where choicesid=@cid
end
----test
exec update_choice 404 ,'A','performence'


-----------------------delete_proc--16
create proc delete_choice @cid int
AS
if exists (select choicesid from choices where choicesid=@cid) 
    DELETE FROM choices
	WHERE choicesid = @cid
else 
    select 'there is no choice with this id'

----test
exec delete_choice 403
