-- Insert data into branchdepartment table with random relationships
INSERT INTO branchdepartment (branchid, deptid)
VALUES
-- Smart village branch
(1, 1),  -- Software Engineering Department
(1, 3),  -- Information Systems Department
(1, 5),  -- Cybersecurity Department

-- Alexandria branch
(2, 2),  -- Computer Science Department
(2, 4),  -- Networking Department

-- Ismailia branch
(3, 1),  -- Software Engineering Department
(3, 2),  -- Computer Science Department
(3, 4),  -- Networking Department

-- Minya branch
(4, 3),  -- Information Systems Department
(4, 5),  -- Cybersecurity Department

-- Menoufia branch
(5, 1),  -- Software Engineering Department
(5, 4),  -- Networking Department
(5, 5);  -- Cybersecurity Department
go