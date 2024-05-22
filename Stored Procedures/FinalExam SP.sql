alter proc  sp_CreateExam
	@crsId int,
	@exDuration int,
	@numTFQ int,
	@numMCQ int
	
as
begin 
		-- Insert exam detials
		insert into Exam(Courseid, Duration)
		values (@crsId, @exDuration)

		declare @exId int
		set @exId = SCOPE_IDENTITY()
		--set @exId = 10

		-- Insert TF questions into examquestion table
		insert into ExamQuestions (Examid, questionid)
		select top (@numTFQ) @exId,  q.questionid
		from question q
		where q.courseid = @crsId and q.questiontype = 1

		-- Insert MCQ questions into examquestion table
		insert into ExamQuestions (Examid, questionid)
		select top (@numMCQ) @exId,  q.questionid
		from question q
		where q.courseid = @crsId and q.questiontype = 2

		-- Get exam's questions and choices
		select q.questiontitle as Question ,  c.choiceKey as 'Choice Key', choicestitle  as Choice
		from question q
		join questionschoices qc
				on  q.questionid = qc.questionid 
		join choices c
				on qc.choiceid = c.choicesid 
		where q.questionid in 
			(select questionId from ExamQuestions where Examid = @exId	)
		order by q.questionid ,[Choice Key]
		/*-- Exam model answer
		select q.questiontitle as Question , q.correctAnswer as Answer , q.mark as Mark
		from question q, ExamQuestions eq
		where q.questionid = eq.questionid and eq.Examid = @exId*/

	select @exId 
end
-- Test 
Go
exec sp_CreateExam @crsId = 2, @exDuration =  15, @numTFQ = 2, @numMCQ = 1


-- Save Exam Answers--
Go 
create proc saveExamAnswers
	@examId int,
	@stdId int,
	@qusId int,
	@ans char
as
begin try
	if not exists (select ExamId from Exam where ExamId = @ExamId)
		begin 
			select 'No exam with this id' 
		end
	else if not exists (select questionid from question where questionid = @qusId)
		begin 
			select 'No question with this id' 
		end
	else if not exists (select studid from student where studid = @stdId)
		begin 
			select 'No Student with this id' 
		end
	else 
		begin
		--begin inserting student answers
			insert into StudentExamAnswers (Studentid, Examid, questionid, answer)
			values(@stdId, @examId,  @qusId, @ans)
	end
end try
begin catch
	select ERROR_MESSAGE() as ErrorMsg
end catch

-- Test --
GO
exec saveExamAnswers @examId = 11, @stdId = 1, @qusId = 1, @ans = 'A';
exec saveExamAnswers @examId = 11, @stdId = 1, @qusId = 11, @ans = 'A';
exec saveExamAnswers @examId = 11, @stdId = 1, @qusId = 12, @ans = 'B';


create proc getStudentGrade
	@examId int,
	@stdId int
as
begin try
	if not exists (select ExamId from Exam where ExamId = @ExamId)
		begin 
			select 'No exam with this id' 
		end
	else if not exists (select studid from student where studid = @stdId)
		begin 
			select 'No Student with this id' 
		end
	else 
		begin
		--declare exam's  total mark depend on each question mark
			declare @TotalMark int = 0			--exam total mark
			select @TotalMark = sum(mark)
			from question
			where questionid in
				(select questionId from ExamQuestions where Examid = @examId	)

			declare @totalGrade int = 0			--Studen total grade
			select @totalGrade = case when Q.correctanswer = SEA.answer 
									then @totalGrade + Q.mark 
									else @totalGrade 
							     end
			from StudentExamAnswers SEA
			inner join question Q on SEA.questionid = Q.questionid
			where SEA.Examid = @examId and SEA.Studentid = @stdId

			insert into StudentExam(Studentid, Examid, Grade, TotalMark)
			values(@stdId, @examId, @totalGrade, @TotalMark)

			declare @totalGradeInPercentage decimal(5,2) ;
			select @totalGradeInPercentage = (@totalGrade*100.0)/@totalMark

			select concat(@totalGradeInPercentage, '%') as [Total Grade in Percentage]
		end
end try

begin catch
	select ERROR_MESSAGE() as ErrorMsg
end catch
-- Test --
GO
getStudentGrade @examId = 11, @stdId = 1
