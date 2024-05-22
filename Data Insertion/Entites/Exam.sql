--Exam
INSERT INTO Exam (Courseid, Duration)
VALUES 
(1, 120),
(2, 130),
(3, 110),
(4, 90),
(5, 140),
(6, 100),
(7, 110),
(8, 120),
(9, 130),
(10, 100);
go


/* Insert Exam of all courses */
DECLARE @Index INT = 1;

WHILE @Index <= 10
BEGIN
    INSERT INTO ExamQuestions (Examid, questionid)
    SELECT @Index, questionid
    FROM question
    WHERE courseid = @Index;
    
    SET @Index = @Index + 1;
END;



