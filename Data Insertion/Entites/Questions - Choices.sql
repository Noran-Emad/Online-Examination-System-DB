-- Inserting questions for course 1 (Introduction to Programming)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('What is a variable in programming?', 2, 1, 'A', 10),
    ('What is the purpose of loops?', 2, 1, 'B', 8),
    ('What is a function?', 2, 1, 'C', 9),
    ('What is conditional branching?', 2, 1, 'D', 7),
    ('What is the syntax for defining a function in Python?', 2, 1, 'A', 10),
    ('What is object-oriented programming?', 2, 1, 'C', 9),
    ('What is the main advantage of using arrays?', 2, 1, 'B', 8),
    ('What is recursion?', 2, 1, 'D', 7),
    ('What are the different data types in programming?', 2, 1, 'A', 10),
    ('What is the purpose of comments in code?', 2, 1, 'B', 8);
	go


-- Inserting choices for the questions of course 1 (Introduction to Programming)
INSERT INTO choices (choiceKey, choicestitle)
VALUES
    ('A', 'A storage location with a specific type'),
    ('B', 'Repeatedly executing a block of code'),
    ('C', 'A named block of code that performs a specific task'),
    ('D', 'A decision-making process based on conditions'),

    ('A', 'A repetitive process in programming'),
    ('B', 'Defining multiple variables at once'),
    ('C', 'A named block of code that can be reused'),
    ('D', 'A specific type of loop in Python'),

    ('A', 'A method of storing data in a structured format'),
    ('B', 'Enhancing code readability and maintainability'),
    ('C', 'A technique for solving problems recursively'),
    ('D', 'A process of defining multiple functions in one file'),

    ('A', 'Integer, String, Boolean, Float'),
    ('B', 'A means of communicating with other programmers'),
    ('C', 'A way to organize and structure code'),
    ('D', 'A method for executing code repeatedly'),

    ('A', 'A storage location with a specific type'),
    ('B', 'Repeatedly executing a block of code'),
    ('C', 'A named block of code that performs a specific task'),
    ('D', 'A decision-making process based on conditions'),

    ('A', 'A repetitive process in programming'),
    ('B', 'Defining multiple variables at once'),
    ('C', 'A named block of code that can be reused'),
    ('D', 'A specific type of loop in Python'),

    ('A', 'A method of storing data in a structured format'),
    ('B', 'Enhancing code readability and maintainability'),
    ('C', 'A technique for solving problems recursively'),
    ('D', 'A process of defining multiple functions in one file'),

    ('A', 'Integer, String, Boolean, Float'),
    ('B', 'A means of communicating with other programmers'),
    ('C', 'A way to organize and structure code'),
    ('D', 'A method for executing code repeatedly'),

    ('A', 'A storage location with a specific type'),
    ('B', 'Repeatedly executing a block of code'),
    ('C', 'A named block of code that performs a specific task'),
    ('D', 'A decision-making process based on conditions'),

    ('A', 'A repetitive process in programming'),
    ('B', 'Defining multiple variables at once'),
    ('C', 'A named block of code that can be reused'),
    ('D', 'A specific type of loop in Python');
	go

-- Associating choices with questions for course 1 (Introduction to Programming)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (1, 3), (1, 4), (1, 5), (1, 6),
    (2, 7), (2, 8), (2, 9), (2, 10),
    (3, 11), (3, 12), (3, 13), (3, 14),
    (4, 15), (4, 16), (4, 17), (4, 18),
    (5, 19), (5, 20), (5, 21), (5, 22),
    (6, 23), (6, 24), (6, 25), (6, 26),
    (7, 27), (7, 28), (7, 29), (7, 30),
    (8, 31), (8, 32), (8, 33), (8, 34),
    (9, 35), (9, 36), (9, 37), (9, 38),
    (10, 39), (10, 40), (10, 41), (10, 42);
	go

-- Inserting true/false questions for course 1 (Introduction to Programming)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('Python is an interpreted language.', 1, 1, 'A', 9),
    ('Java is a compiled language.', 1, 1, 'B', 8),
    ('A variable in programming can hold multiple values at once.', 1, 1, 'B', 7),
    ('Conditional statements are used for making decisions in programming.', 1, 1, 'A', 9),
    ('Recursion is a technique used to iterate over a list.', 1, 1, 'B', 8),
    ('Object-oriented programming (OOP) focuses on objects and classes.', 1, 1, 'A', 9),
    ('Arrays in programming are used to store multiple values of the same type.', 1, 1, 'A', 8),
    ('Functions in programming are reusable blocks of code.', 1, 1, 'A', 9),
    ('Comments in code are ignored by the compiler or interpreter.', 1, 1, 'A', 7),
    ('Programming languages can be categorized as high-level or low-level.', 1, 1, 'A', 8);
	go

-- Associating choices with true/false questions for course 1 (Introduction to Programming)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (11, 1), -- Python is an interpreted language. (True)
    (11, 2), -- Python is an interpreted language. (False)
    (12, 1), -- Java is a compiled language. (True)
    (12, 2), -- Java is a compiled language. (False)
    (13, 1), -- A variable in programming can hold multiple values at once. (True)
    (13, 2), -- A variable in programming can hold multiple values at once. (False)
    (14, 1), -- Conditional statements are used for making decisions in programming. (True)
    (14, 2), -- Conditional statements are used for making decisions in programming. (False)
    (15, 1), -- Recursion is a technique used to iterate over a list. (True)
    (15, 2), -- Recursion is a technique used to iterate over a list. (False)
    (16, 1), -- Object-oriented programming (OOP) focuses on objects and classes. (True)
    (16, 2), -- Object-oriented programming (OOP) focuses on objects and classes. (False)
    (17, 1), -- Arrays in programming are used to store multiple values of the same type. (True)
    (17, 2), -- Arrays in programming are used to store multiple values of the same type. (False)
    (18, 1), -- Functions in programming are reusable blocks of code. (True)
    (18, 2), -- Functions in programming are reusable blocks of code. (False)
    (19, 1), -- Comments in code are ignored by the compiler or interpreter. (True)
    (19, 2), -- Comments in code are ignored by the compiler or interpreter. (False)
    (20, 1), -- Programming languages can be categorized as high-level or low-level. (True)
    (20, 2); -- Programming languages can be categorized as high-level or low-level. (False)
	go



-- Inserting MCQ questions for course 2 (Database Management Systems)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('What is a primary key in a database?', 2, 2, 'A', 10),
    ('What is the purpose of SQL?', 2, 2, 'D', 8),
    ('What is normalization in database design?', 2, 2, 'B', 9),
    ('What is a foreign key?', 2, 2, 'C', 7),
    ('What is the purpose of a database index?', 2, 2, 'A', 10),
    ('What is a transaction in database management?', 2, 2, 'D', 9),
    ('What are the ACID properties in database transactions?', 2, 2, 'C', 8),
    ('What is data integrity in a database?', 2, 2, 'B', 7),
    ('What are the different types of database relationships?', 2, 2, 'A', 10),
    ('What is database security?', 2, 2, 'C', 9);
	go

-- Inserting choices for MCQ questions of course 2 (Database Management Systems)
INSERT INTO choices (choiceKey, choicestitle)
VALUES
    ('A', 'A unique identifier for each record in a table'),
    ('B', 'An index used to ensure data is stored efficiently'),
    ('C', 'A field that links to the primary key of another table'),
    ('D', 'A constraint that ensures each value in a column is unique'),

    ('A', 'To define the structure of a relational database'),
    ('B', 'To manipulate and query data in a relational database'),
    ('C', 'To enforce data integrity rules in a relational database'),
    ('D', 'To manage and control access to a relational database'),

    ('A', 'The process of organizing data to minimize redundancy and dependency'),
    ('B', 'The process of designing a database schema'),
    ('C', 'The process of securing data in a database'),
    ('D', 'The process of optimizing database performance'),

    ('A', 'A field that uniquely identifies each record in a table'),
    ('B', 'A field that links to another table''s primary key'),
    ('C', 'A field that ensures referential integrity'),
    ('D', 'A field that contains duplicate values'),

    ('A', 'To enforce data consistency and improve query performance'),
    ('B', 'To ensure data is stored in a secure manner'),
    ('C', 'To provide a quick lookup of data based on specific criteria'),
    ('D', 'To allow for efficient sorting and filtering of data'),

    ('A', 'A unit of work performed within a database management system'),
    ('B', 'A query executed against a database'),
    ('C', 'A sequence of database operations that are treated as a single logical unit'),
    ('D', 'A process of data migration from one table to another'),

    ('A', 'Atomicity, Consistency, Isolation, Durability'),
    ('B', 'Aggregation, Clustering, Indexing, Distribution'),
    ('C', 'Atomicity, Consistency, Isolation, Durability'),
    ('D', 'Access, Concurrency, Integrity, Distribution'),

    ('A', 'The accuracy, consistency, and reliability of data stored in a database'),
    ('B', 'The process of optimizing database performance'),
    ('C', 'The prevention of unauthorized access and modification of data'),
    ('D', 'The ability to recover data in case of system failure'),

    ('A', 'One-to-One, One-to-Many, Many-to-Many'),
    ('B', 'Primary Key, Foreign Key, Composite Key'),
    ('C', 'One-to-One, One-to-Many, Many-to-Many'),
    ('D', 'Unique Key, Candidate Key, Super Key'),

    ('A', 'The practice of protecting a database from unauthorized access, use, or disclosure'),
    ('B', 'The process of optimizing database performance'),
    ('C', 'The prevention of unauthorized access and modification of data'),
    ('D', 'The ability to recover data in case of system failure');
	go


-- Associating choices with MCQ questions for course 2 (Database Management Systems)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
(21, 43), (21, 44), (21, 45), (21, 46),
(22, 47), (22, 48), (22, 49), (22, 50),
(23, 51), (23, 52), (23, 53), (23, 54),
(24, 55), (24, 56), (24, 57), (24, 58),
(25, 59), (25, 60), (25, 61), (25, 62),
(26, 63), (26, 64), (26, 65), (26, 66),
(27, 67), (27, 68), (27, 69), (27, 70),
(28, 71), (28, 72), (28, 73), (28, 74),
(29, 75), (29, 76), (29, 77), (29, 78),
(30, 79), (30, 80), (30, 81), (30, 82);
go



-- Inserting true/false questions for course 2 (Database Management Systems)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('A primary key uniquely identifies each record in a table.', 1, 2, 'A', 10),
    ('SQL stands for Structured Query Language.', 1, 2, 'A', 8),
    ('Normalization is the process of organizing data to minimize redundancy.', 1, 2, 'A', 9),
    ('A foreign key links to the primary key of another table.', 1, 2, 'A', 7),
    ('A database index is used to enforce data integrity rules.', 1, 2, 'B', 10),
    ('A transaction in database management is a single logical unit of work.', 1, 2, 'A', 9),
    ('The ACID properties in database transactions stand for Atomicity, Consistency, Isolation, Durability.', 1, 2, 'A', 8),
    ('Data integrity in a database ensures the accuracy and consistency of data.', 1, 2, 'A', 7),
    ('Database relationships include One-to-One, One-to-Many, and Many-to-Many.', 1, 2, 'A', 10),
    ('Database security involves protecting data from unauthorized access and modification.', 1, 2, 'A', 9);
	go



-- Associating choices with true/false questions for course 2 (Database Management Systems)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
(31, 1), (31, 2), -- A primary key uniquely identifies each record in a table.
(32, 1), (32, 2), -- SQL stands for Structured Query Language.
(33, 1), (33, 2), -- Normalization is the process of organizing data to minimize redundancy.
(34, 1), (34, 2), -- A foreign key links to the primary key of another table.
(35, 1), (35, 2), -- A database index is used to enforce data integrity rules.
(36, 1), (36, 2), -- A transaction in database management is a single logical unit of work.
(37, 1), (37, 2), -- The ACID properties in database transactions stand for Atomicity, Consistency, Isolation, Durability.
(38, 1), (38, 2), -- Data integrity in a database ensures the accuracy and consistency of data.
(39, 1), (39, 2), -- Database relationships include One-to-One, One-to-Many, and Many-to-Many.
(40, 1), (40, 2); -- Database security involves protecting data from unauthorized access and modification.
go



-- Inserting MCQ questions for course 3 (Web Development Fundamentals)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('What does HTML stand for?', 2, 3, 'A', 10),
    ('What is the correct syntax for adding a comment in HTML?', 2, 3, 'B', 8),
    ('Which tag is used to define an unordered list in HTML?', 2, 3, 'C', 9),
    ('What does CSS stand for?', 2, 3, 'D', 7),
    ('Which CSS property is used to control the size of text?', 2, 3, 'A', 10),
    ('What is the correct syntax for referencing an external JavaScript file?', 2, 3, 'B', 9),
    ('Which event occurs when the user clicks on an HTML element?', 2, 3, 'C', 8),
    ('What is the purpose of the <div> tag in HTML?', 2, 3, 'D', 7),
    ('What is the purpose of the "float" property in CSS?', 2, 3, 'A', 10),
    ('Which programming language is commonly used for server-side web development?', 2, 3, 'B', 9);
	go


-- Inserting choices for the questions of course 3 (Web Development Fundamentals)
INSERT INTO choices (choiceKey, choicestitle)
VALUES
    ('A', 'Hyper Text Markup Language'),
    ('B', 'Hypertext Markup Language'),
    ('C', 'Hyperlinks and Text Markup Language'),
    ('D', 'Home Tool Markup Language'),

    ('A', '<!-- Comment -->'),
    ('B', '// Comment'),
    ('C', '** Comment **'),
    ('D', '** Comment //'),

    ('A', '<ol>'),
    ('B', '<ul>'),
    ('C', '<list>'),
    ('D', '<li>'),

    ('A', 'Cascading Style Sheets'),
    ('B', 'Creative Style Sheets'),
    ('C', 'Computer Style Sheets'),
    ('D', 'Colorful Style Sheets'),

    ('A', 'font-size'),
    ('B', 'text-size'),
    ('C', 'font-style'),
    ('D', 'text-style'),

    ('A', '<script src="script.js"></script>'),
    ('B', '<script href="script.js"></script>'),
    ('C', '<script name="script.js"></script>'),
    ('D', '<script link="script.js"></script>'),

    ('A', 'onmouseover'),
    ('B', 'onload'),
    ('C', 'onclick'),
    ('D', 'onsubmit'),

    ('A', 'To define a section or division in an HTML document'),
    ('B', 'To create a clickable link'),
    ('C', 'To format text with a specific style'),
    ('D', 'To insert an image'),

    ('A', 'To position an element to the left or right of its container'),
    ('B', 'To style text with a specific font'),
    ('C', 'To create a responsive layout'),
    ('D', 'To apply animation effects'),

    ('A', 'JavaScript'),
    ('B', 'PHP'),
    ('C', 'Python'),
    ('D', 'Java');
	go


	-- Associating choices with MCQ questions for course 3 (Web Development Fundamentals)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
(41, 83), (41, 84), (41, 85), (41, 86),
(42, 87), (42, 88), (42, 89), (42, 90),
(43, 91), (43, 92), (43, 93), (43, 94),
(44, 95), (44, 96), (44, 97), (44, 98),
(45, 99), (45, 100), (45, 101), (45, 102),
(46, 103), (46, 104), (46, 105), (46, 106),
(47, 107), (47, 108), (47, 109), (47, 110),
(48, 111), (48, 112), (48, 113), (48, 114),
(49, 115), (49, 116), (49, 117), (49, 118),
(50, 119), (50, 120), (50, 121), (50, 122);
go




-- Inserting true/false questions for course 3 (Web Development Fundamentals)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('HTML stands for "Hyper Text Markup Language".', 1, 3, 'A', 10),
    ('CSS is a programming language used for creating dynamic and interactive web pages.', 1, 3, 'B', 10),
    ('JavaScript is a scripting language that allows you to create dynamic and interactive websites.', 1, 3, 'A', 10),
    ('PHP is a server-side scripting language commonly used for web development.', 1, 3, 'A', 10),
    ('SQL is a programming language used for creating and managing databases.', 1, 3, 'A', 10),
    ('Bootstrap is a JavaScript library used for building responsive and mobile-first websites.', 1, 3, 'B', 10),
    ('AJAX allows you to send and receive data asynchronously between the web browser and the server.', 1, 3, 'A', 10),
    ('RESTful APIs are a type of web service that allows communication between different systems over the internet.', 1, 3, 'A', 10),
    ('Cookies are files stored on the client-side that can be used to track user activity on a website.', 1, 3, 'A', 10),
    ('Session variables are stored on the client-side and can be accessed across different pages of a website.', 1, 3, 'B', 10);
	go

-- Associating choices with true/false questions for course 3 (Web Development Fundamentals)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (51, 1), -- HTML stands for "Hyper Text Markup Language". (True)
    (51, 2), -- HTML stands for "Hyper Text Markup Language". (False)
    (52, 1), -- CSS is a programming language used for creating dynamic and interactive web pages. (True)
    (52, 2), -- CSS is a programming language used for creating dynamic and interactive web pages. (False)
    (53, 1), -- JavaScript is a scripting language that allows you to create dynamic and interactive websites. (True)
    (53, 2), -- JavaScript is a scripting language that allows you to create dynamic and interactive websites. (False)
    (54, 1), -- PHP is a server-side scripting language commonly used for web development. (True)
    (54, 2), -- PHP is a server-side scripting language commonly used for web development. (False)
    (55, 1), -- SQL is a programming language used for creating and managing databases. (True)
    (55, 2), -- SQL is a programming language used for creating and managing databases. (False)
    (56, 1), -- Bootstrap is a JavaScript library used for building responsive and mobile-first websites. (True)
    (56, 2), -- Bootstrap is a JavaScript library used for building responsive and mobile-first websites. (False)
    (57, 1), -- AJAX allows you to send and receive data asynchronously between the web browser and the server. (True)
    (57, 2), -- AJAX allows you to send and receive data asynchronously between the web browser and the server. (False)
    (58, 1), -- RESTful APIs are a type of web service that allows communication between different systems over the internet. (True)
    (58, 2), -- RESTful APIs are a type of web service that allows communication between different systems over the internet. (False)
    (59, 1), -- Cookies are files stored on the client-side that can be used to track user activity on a website. (True)
    (59, 2), -- Cookies are files stored on the client-side that can be used to track user activity on a website. (False)
    (60, 1), -- Session variables are stored on the client-side and can be accessed across different pages of a website. (True)
    (60, 2); -- Session variables are stored on the client-side and can be accessed across different pages of a website. (False)
	go




-- Inserting questions for course 4 (Network Security)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('What is encryption?', 2, 4, 'A', 9),
    ('What is a firewall?', 2, 4, 'B', 8),
    ('What is a VPN?', 2, 4, 'C', 7),
    ('What is a DoS attack?', 2, 4, 'D', 9),
    ('What is a phishing attack?', 2, 4, 'A', 8),
    ('What is malware?', 2, 4, 'C', 9),
    ('What is a vulnerability assessment?', 2, 4, 'B', 8),
    ('What is penetration testing?', 2, 4, 'D', 7),
    ('What is biometric authentication?', 2, 4, 'A', 10),
    ('What is two-factor authentication?', 2, 4, 'B', 8);
	go

-- Inserting choices for the questions of course 4 (Network Security)
INSERT INTO choices (choiceKey, choicestitle)
VALUES
    ('A', 'A method used to secure data by converting it into a code that only authorized parties can access'),
    ('B', 'A security device or software that monitors and controls incoming and outgoing network traffic'),
    ('C', 'A secure connection established over a public network, typically used to access private networks securely'),
    ('D', 'A type of cyber attack that floods a network or server with traffic to disrupt normal operations'),

    ('A', 'A method used to secure data by converting it into a code that only authorized parties can access'),
    ('B', 'A security device or software that monitors and controls incoming and outgoing network traffic'),
    ('C', 'A secure connection established over a public network, typically used to access private networks securely'),
    ('D', 'A type of cyber attack that floods a network or server with traffic to disrupt normal operations'),

    ('A', 'A method used to secure data by converting it into a code that only authorized parties can access'),
    ('B', 'A security device or software that monitors and controls incoming and outgoing network traffic'),
    ('C', 'A secure connection established over a public network, typically used to access private networks securely'),
    ('D', 'A type of cyber attack that floods a network or server with traffic to disrupt normal operations'),

    ('A', 'A method used to secure data by converting it into a code that only authorized parties can access'),
    ('B', 'A security device or software that monitors and controls incoming and outgoing network traffic'),
    ('C', 'A secure connection established over a public network, typically used to access private networks securely'),
    ('D', 'A type of cyber attack that floods a network or server with traffic to disrupt normal operations'),

    ('A', 'A method used to secure data by converting it into a code that only authorized parties can access'),
    ('B', 'A security device or software that monitors and controls incoming and outgoing network traffic'),
    ('C', 'A secure connection established over a public network, typically used to access private networks securely'),
    ('D', 'A type of cyber attack that floods a network or server with traffic to disrupt normal operations'),

    ('A', 'A method used to secure data by converting it into a code that only authorized parties can access'),
    ('B', 'A security device or software that monitors and controls incoming and outgoing network traffic'),
    ('C', 'A secure connection established over a public network, typically used to access private networks securely'),
    ('D', 'A type of cyber attack that floods a network or server with traffic to disrupt normal operations'),

    ('A', 'A method used to secure data by converting it into a code that only authorized parties can access'),
    ('B', 'A security device or software that monitors and controls incoming and outgoing network traffic'),
    ('C', 'A secure connection established over a public network, typically used to access private networks securely'),
    ('D', 'A type of cyber attack that floods a network or server with traffic to disrupt normal operations'),

    ('A', 'A method used to secure data by converting it into a code that only authorized parties can access'),
    ('B', 'A security device or software that monitors and controls incoming and outgoing network traffic'),
    ('C', 'A secure connection established over a public network, typically used to access private networks securely'),
    ('D', 'A type of cyber attack that floods a network or server with traffic to disrupt normal operations'),

    ('A', 'A method used to secure data by converting it into a code that only authorized parties can access'),
    ('B', 'A security device or software that monitors and controls incoming and outgoing network traffic'),
    ('C', 'A secure connection established over a public network, typically used to access private networks securely'),
    ('D', 'A type of cyber attack that floods a network or server with traffic to disrupt normal operations'),

    ('A', 'A method used to secure data by converting it into a code that only authorized parties can access'),
    ('B', 'A security device or software that monitors and controls incoming and outgoing network traffic'),
    ('C', 'A secure connection established over a public network, typically used to access private networks securely'),
    ('D', 'A type of cyber attack that floods a network or server with traffic to disrupt normal operations');
	go

-- Associating choices with questions for course 4 (Network Security)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (61, 123), (61, 124), (61, 125), (61, 126),
    (62, 127), (62, 128), (62, 129), (62, 130),
    (63, 131), (63, 132), (63, 133), (63, 134),
    (64, 135), (64, 136), (64, 137), (64, 138),
    (65, 139), (65, 140), (65, 141), (65, 142),
    (66, 143), (66, 144), (66, 145), (66, 146),
    (67, 147), (67, 148), (67, 149), (67, 150),
    (68, 151), (68, 152), (68, 153), (68, 154),
    (69, 155), (69, 156), (69, 157), (69, 158),
    (70, 159), (70, 160), (70, 161), (70, 162);
	go





-- Inserting true/false questions for Course 4 (Network Security)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('Firewalls are used to protect a network by blocking unauthorized access.', 1, 4, 'A', 10),
    ('A VPN (Virtual Private Network) encrypts data to ensure secure communication over the internet.', 1, 4, 'A', 10),
    ('Phishing is a type of cyber attack that involves tricking individuals into revealing sensitive information.', 1, 4, 'A', 10),
    ('SSL/TLS (Secure Sockets Layer/Transport Layer Security) certificates are used to encrypt data in transit between a client and a server.', 1, 4, 'A', 10),
    ('Denial of Service (DoS) attacks aim to make a network or website unavailable to users by flooding it with excessive traffic.', 1, 4, 'A', 10),
    ('Two-factor authentication (2FA) requires users to provide two different authentication factors to verify their identity.', 1, 4, 'A', 10),
    ('Malware is a type of software designed to damage or gain unauthorized access to a computer system.', 1, 4, 'A', 10),
    ('IPsec (Internet Protocol Security) is a protocol suite used to secure internet communications by encrypting and authenticating IP packets.', 1, 4, 'A', 10),
    ('A honeypot is a security mechanism used to detect, deflect, or counteract unauthorized use of information systems.', 1, 4, 'A', 10),
    ('Social engineering is a method of manipulating individuals to divulge confidential information or perform actions.', 1, 4, 'A', 10);
	go

	-- Associating choices with true/false questions for Course 4 (Network Security)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (71, 1), (71, 2), -- Firewalls are used to protect a network by blocking unauthorized access. (True)
    (72, 1), (72, 2), -- A VPN encrypts data to ensure secure communication over the internet. (True)
    (73, 1), (73, 2), -- Phishing involves tricking individuals into revealing sensitive information. (True)
    (74, 1), (74, 2), -- SSL/TLS certificates encrypt data in transit between a client and a server. (True)
    (75, 1), (75, 2), -- DoS attacks aim to make a network or website unavailable by flooding it with excessive traffic. (True)
    (76, 1), (76, 2), -- Two-factor authentication requires users to provide two different authentication factors. (True)
    (77, 1), (77, 2), -- Malware is software designed to damage or gain unauthorized access to a computer system. (True)
    (78, 1), (78, 2), -- IPsec is a protocol suite used to secure internet communications. (True)
    (79, 1), (79, 2), -- A honeypot is a security mechanism used to detect unauthorized use of information systems. (True)
    (80, 1), (80, 2); -- Social engineering manipulates individuals to divulge confidential information or perform actions. (True)
	go




	-- Inserting questions for Course 5 (Artificial Intelligence)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('What is Artificial Intelligence (AI)?', 2, 5, 'A', 9),
    ('What are the main goals of AI?', 2, 5, 'B', 8),
    ('What are the different types of AI?', 2, 5, 'C', 7),
    ('What is machine learning?', 2, 5, 'D', 9),
    ('What are neural networks?', 2, 5, 'A', 8),
    ('What is deep learning?', 2, 5, 'C', 9),
    ('What is natural language processing (NLP)?', 2, 5, 'B', 8),
    ('What is computer vision?', 2, 5, 'D', 7),
    ('What are the applications of AI?', 2, 5, 'A', 7),
    ('What are the ethical considerations in AI?', 2, 5, 'B', 9);
	go


-- Inserting choices for the questions of Course 5 (Artificial Intelligence)
INSERT INTO choices (choiceKey, choicestitle)
VALUES
    ('A', 'The simulation of human intelligence processes by machines, especially computer systems'),
    ('B', 'To mimic human cognitive functions such as learning, reasoning, and problem-solving'),
    ('C', 'The study of algorithms that improve automatically through experience'),
    ('D', 'The ability of a computer program to learn from data and improve over time'),

    ('A', 'To simulate human intelligence, solve complex problems, and improve decision-making'),
    ('B', 'To mimic human cognitive functions such as learning, reasoning, and problem-solving'),
    ('C', 'The study of algorithms that improve automatically through experience'),
    ('D', 'The ability of a computer program to learn from data and improve over time'),

    ('A', 'Narrow AI, General AI, and Superintelligent AI'),
    ('B', 'Machine Learning, Deep Learning, and Reinforcement Learning'),
    ('C', 'Symbolic AI, Connectionist AI, and Fuzzy AI'),
    ('D', 'Weak AI, Strong AI, and Artificial General Intelligence'),

    ('A', 'The study of algorithms that improve automatically through experience'),
    ('B', 'A subset of AI that focuses on the development of computer programs that can access data and use it to learn for themselves'),
    ('C', 'A type of AI that enables machines to learn from experience, adjust to new inputs, and perform human-like tasks'),
    ('D', 'The ability of a computer program to learn from data and improve over time'),

    ('A', 'A set of algorithms, modeled loosely after the human brain, that are designed to recognize patterns'),
    ('B', 'A type of machine learning algorithm that uses multiple layers of nodes to process complex data inputs'),
    ('C', 'A subset of machine learning that uses artificial neural networks with many layers of processing units'),
    ('D', 'A method of training AI models on large datasets to make predictions or decisions'),

    ('A', 'A subset of machine learning that uses artificial neural networks with many layers of processing units'),
    ('B', 'A type of machine learning algorithm that uses multiple layers of nodes to process complex data inputs'),
    ('C', 'A method of training AI models on large datasets to make predictions or decisions'),
    ('D', 'A set of algorithms, modeled loosely after the human brain, that are designed to recognize patterns'),

    ('A', 'The ability of computers to understand, interpret, and generate human language'),
    ('B', 'A field of AI that focuses on the interaction between computers and human language'),
    ('C', 'The study of algorithms that improve automatically through experience'),
    ('D', 'A method of training AI models on large datasets to make predictions or decisions'),

    ('A', 'The ability of computers to interpret visual information from the real world'),
    ('B', 'A field of AI that focuses on the interaction between computers and human language'),
    ('C', 'A type of machine learning algorithm that uses multiple layers of nodes to process complex data inputs'),
    ('D', 'A subset of machine learning that uses artificial neural networks with many layers of processing units'),

    ('A', 'Natural Language Processing (NLP), Computer Vision, and Robotics'),
    ('B', 'Machine Learning, Deep Learning, and Reinforcement Learning'),
    ('C', 'Symbolic AI, Connectionist AI, and Fuzzy AI'),
    ('D', 'Weak AI, Strong AI, and Artificial General Intelligence'),

    ('A', 'Privacy, bias, accountability, and job displacement'),
    ('B', 'Ethical considerations related to AI development, deployment, and use'),
    ('C', 'The study of algorithms that improve automatically through experience'),
    ('D', 'A method of training AI models on large datasets to make predictions or decisions');
	go

-- Associating choices with questions for Course 5 (Artificial Intelligence)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (81, 163), (81, 164), (81, 165), (81, 166),
    (82, 167), (82, 168), (82, 169), (82, 170),
    (83, 171), (83, 172), (83, 173), (83, 174),
    (84, 175), (84, 176), (84, 177), (84, 178),
    (85, 179), (85, 180), (85, 181), (85, 182),
    (86, 183), (86, 184), (86, 185), (86, 186),
    (87, 187), (87, 188), (87, 189), (87, 190),
    (88, 191), (88, 192), (88, 193), (88, 194),
    (89, 195), (89, 196), (89, 197), (89, 198),
    (90, 199), (90, 200), (90, 201), (90, 202);
	go

-- Inserting true/false questions for Course 5 (Artificial Intelligence)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('Artificial Intelligence (AI) aims to mimic human cognitive functions such as learning and reasoning.', 1, 5, 'A', 9),
    ('Deep learning is a subset of machine learning that focuses on training neural networks with large datasets.', 1, 5, 'A', 8),
    ('Natural Language Processing (NLP) is the study of algorithms that improve automatically through experience.', 1, 5, 'B', 7),
    ('Computer vision is the ability of computers to understand, interpret, and generate human language.', 1, 5, 'B', 9),
    ('Ethical considerations related to AI include privacy, bias, accountability, and job displacement.', 1, 5, 'A', 8),
    ('Narrow AI, General AI, and Superintelligent AI are the different types of artificial intelligence.', 1, 5, 'A', 9),
    ('Machine learning is a field of AI that focuses on the interaction between computers and human language.', 1, 5, 'B', 8),
    ('Artificial General Intelligence (AGI) refers to the ability of computers to understand, interpret, and generate human language.', 1, 5, 'B', 7),
    ('Reinforcement learning is a type of machine learning algorithm that uses multiple layers of nodes to process complex data inputs.', 1, 5, 'B', 9),
    ('Symbolic AI, Connectionist AI, and Fuzzy AI are the different types of neural networks.', 1, 5, 'B', 7);
	go

-- Associating true/false answers with questions for Course 5 (Artificial Intelligence)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (91, 1), (91, 2), -- Artificial Intelligence (AI) aims to mimic human cognitive functions such as learning and reasoning. (True/False)
    (92, 1), (92, 2), -- Deep learning is a subset of machine learning that focuses on training neural networks with large datasets. (True/False)
    (93, 1), (93, 2), -- Natural Language Processing (NLP) is the study of algorithms that improve automatically through experience. (True/False)
    (94, 1), (94, 2), -- Computer vision is the ability of computers to understand, interpret, and generate human language. (True/False)
    (95, 1), (95, 2), -- Ethical considerations related to AI include privacy, bias, accountability, and job displacement. (True/False)
    (96, 1), (96, 2), -- Narrow AI, General AI, and Superintelligent AI are the different types of artificial intelligence. (True/False)
    (97, 1), (97, 2), -- Machine learning is a field of AI that focuses on the interaction between computers and human language. (True/False)
    (98, 1), (98, 2), -- Artificial General Intelligence (AGI) refers to the ability of computers to understand, interpret, and generate human language. (True/False)
    (99, 1), (99, 2), -- Reinforcement learning is a type of machine learning algorithm that uses multiple layers of nodes to process complex data inputs. (True/False)
    (100, 1), (100, 2); -- Symbolic AI, Connectionist AI, and Fuzzy AI are the different types of neural networks. (True/False)
	go


-- Inserting questions for Course 6 (Data Science Essentials)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('What is data science?', 2, 6, 'B', 9),
    ('What are the main stages of the data science process?', 2, 6, 'C', 8),
    ('What is the difference between supervised and unsupervised learning?', 2, 6, 'D', 7),
    ('What is feature engineering?', 2, 6, 'A', 9),
    ('What is the purpose of data visualization in data science?', 2, 6, 'B', 8),
    ('What are some commonly used programming languages in data science?', 2, 6, 'C', 9),
    ('What is the importance of data cleaning in the data science workflow?', 2, 6, 'D', 8),
    ('What is overfitting in machine learning?', 2, 6, 'A', 7),
    ('What are some techniques for dimensionality reduction in data science?', 2, 6, 'B', 10),
    ('What is the role of data scientists in organizations?', 2, 6, 'C', 8);
	go

-- Inserting choices for the questions of Course 6 (Data Science Essentials)
INSERT INTO choices (choiceKey, choicestitle)
VALUES
    ('A', 'A field that combines domain expertise, programming skills, and statistical knowledge to extract insights from data'),
    ('B', 'The study of data, its cleaning, analysis, and interpretation to extract useful insights and knowledge'),
    ('C', 'The process of designing, conducting, and analyzing experiments to gain insights from data'),
    ('D', 'The application of algorithms and models to make predictions based on data'),

    ('A', 'Data Collection, Data Preprocessing, Analysis, Deployment'),
    ('B', 'Data Collection, Data Visualization, Model Building, Evaluation'),
    ('C', 'Data Collection, Data Cleaning, Data Exploration, Model Building'),
    ('D', 'Data Collection, Data Analysis, Model Building, Deployment'),

    ('A', 'Supervised learning uses labeled data, while unsupervised learning uses unlabeled data'),
    ('B', 'Supervised learning uses unlabeled data, while unsupervised learning uses labeled data'),
    ('C', 'Supervised learning uses algorithms, while unsupervised learning does not use any algorithm'),
    ('D', 'Supervised learning is used for classification, while unsupervised learning is used for regression'),

    ('A', 'The process of selecting and transforming variables to create new features'),
    ('B', 'The process of cleaning and preprocessing data before analysis'),
    ('C', 'The process of visualizing data to gain insights and communicate findings'),
    ('D', 'The process of building predictive models using machine learning algorithms'),

    ('A', 'To present data in a graphical format for easier understanding and interpretation'),
    ('B', 'To explore data patterns, trends, and relationships for insights and decision-making'),
    ('C', 'To summarize data statistics and metrics for reporting purposes'),
    ('D', 'To store data in a structured format for easy access and retrieval'),

    ('A', 'Python, R, SQL'),
    ('B', 'Java, C++, MATLAB'),
    ('C', 'JavaScript, HTML, CSS'),
    ('D', 'PHP, Ruby, Swift'),

    ('A', 'To ensure that data is accurate, consistent, and reliable for analysis'),
    ('B', 'To visualize data patterns and relationships for insights and decision-making'),
    ('C', 'To clean and preprocess data to prepare it for analysis and modeling'),
    ('D', 'To apply machine learning algorithms to make predictions and recommendations'),

    ('A', 'When a model learns the training data too well, capturing noise instead of signal'),
    ('B', 'When a model fails to learn from the training data and performs poorly on unseen data'),
    ('C', 'When a model fails to generalize to new, unseen data despite good performance on training data'),
    ('D', 'When a model performs well on both training and testing data'),

    ('A', 'Principal Component Analysis (PCA), t-Distributed Stochastic Neighbor Embedding (t-SNE)'),
    ('B', 'K-Means Clustering, Hierarchical Clustering, Singular Value Decomposition (SVD)'),
    ('C', 'Logistic Regression, Decision Trees, Support Vector Machines (SVM)'),
    ('D', 'Linear Regression, Polynomial Regression, Ridge Regression'),

    ('A', 'To analyze data and extract actionable insights to support decision-making processes'),
    ('B', 'To build and deploy machine learning models to solve business problems'),
    ('C', 'To design experiments and conduct statistical analyses to validate hypotheses'),
    ('D', 'To develop software applications and tools for data collection and storage');
	go

-- Associating choices with questions for Course 6 (Data Science Essentials)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (101, 203), (101, 204), (101, 205), (101, 206),
    (102, 207), (102, 208), (102, 209), (102, 210),
    (103, 211), (103, 212), (103, 213), (103, 214),
    (104, 215), (104, 216), (104, 217), (104, 218),
    (105, 219), (105, 220), (105, 221), (105, 222),
    (106, 223), (106, 224), (106, 225), (106, 226),
    (107, 227), (107, 228), (107, 229), (107, 230),
    (108, 231), (108, 232), (108, 233), (108, 234),
    (109, 235), (109, 236), (109, 237), (109, 238),
    (110, 239), (110, 240), (110, 241), (110, 242);
	go

-- Inserting true/false questions for Course 6 (Data Science Essentials)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('Data science is the study of data and its applications in various fields.', 1, 6, 'A', 9),
    ('Data visualization is not an important aspect of the data science workflow.', 1, 6, 'B', 8),
    ('Supervised learning uses labeled data to train models.', 1, 6, 'A', 7),
    ('Feature engineering involves creating new features from existing data.', 1, 6, 'A', 9),
    ('Dimensionality reduction is not a technique used in data preprocessing.', 1, 6, 'B', 8),
    ('Unsupervised learning algorithms require labeled data for training.', 1, 6, 'B', 9),
    ('Overfitting occurs when a model learns the noise in the training data.', 1, 6, 'A', 8),
    ('Data scientists play a minor role in organizations and are not involved in decision-making.', 1, 6, 'B', 7),
    ('Machine learning models cannot be deployed to production systems for real-world use.', 1, 6, 'B', 10),
    ('Data cleaning is an essential step in the data science process.', 1, 6, 'A', 8);
	go


-- Associating true/false answers with questions for Course 6 (Data Science Essentials)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (111, 1), -- Data science is the study of data and its applications in various fields. (True)
    (111, 2), -- Data science is the study of data and its applications in various fields. (False)
    (112, 1), -- Data visualization is not an important aspect of the data science workflow. (True)
    (112, 2), -- Data visualization is not an important aspect of the data science workflow. (False)
    (113, 1), -- Supervised learning uses labeled data to train models. (True)
    (113, 2), -- Supervised learning uses labeled data to train models. (False)
    (114, 1), -- Feature engineering involves creating new features from existing data. (True)
    (114, 2), -- Feature engineering involves creating new features from existing data. (False)
    (115, 1), -- Dimensionality reduction is not a technique used in data preprocessing. (True)
    (115, 2), -- Dimensionality reduction is not a technique used in data preprocessing. (False)
    (116, 1), -- Unsupervised learning algorithms require labeled data for training. (True)
    (116, 2), -- Unsupervised learning algorithms require labeled data for training. (False)
    (117, 1), -- Overfitting occurs when a model learns the noise in the training data. (True)
    (117, 2), -- Overfitting occurs when a model learns the noise in the training data. (False)
    (118, 1), -- Data scientists play a minor role in organizations and are not involved in decision-making. (True)
    (118, 2), -- Data scientists play a minor role in organizations and are not involved in decision-making. (False)
    (119, 1), -- Machine learning models cannot be deployed to production systems for real-world use. (True)
    (119, 2), -- Machine learning models cannot be deployed to production systems for real-world use. (False)
    (120, 1), -- Data cleaning is an essential step in the data science process. (True)
    (120, 2); -- Data cleaning is an essential step in the data science process. (False)
	go



-- Inserting multiple-choice questions for Course 7 (Computer Networks)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('What is a computer network?', 2, 7, 'A', 9),
    ('What is the purpose of an IP address?', 2, 7, 'B', 8),
    ('What is a router?', 2, 7, 'C', 7),
    ('What is the role of DNS?', 2, 7, 'D', 9),
    ('What is the OSI model?', 2, 7, 'A', 8),
    ('What is TCP/IP?', 2, 7, 'B', 9),
    ('What is the difference between LAN and WAN?', 2, 7, 'C', 8),
    ('What is a firewall?', 2, 7, 'D', 7),
    ('What is a switch?', 2, 7, 'A', 7),
    ('What is packet switching?', 2, 7, 'B', 8);
	go

-- Inserting choices for the questions of Course 7 (Computer Networks)
INSERT INTO choices (choiceKey, choicestitle)
VALUES
    ('A', 'A set of interconnected devices that can communicate with each other'),
    ('B', 'A unique identifier assigned to each device on a network'),
    ('C', 'A device that forwards data packets between computer networks'),
    ('D', 'A system that translates domain names to IP addresses'),

    ('A', 'To uniquely identify devices on a network and facilitate communication'),
    ('B', 'To determine the physical layout of a network'),
    ('C', 'To provide security to a network by blocking unauthorized access'),
    ('D', 'To connect different types of networks together'),

    ('A', 'A device that forwards data packets between computer networks'),
    ('B', 'A piece of hardware that connects multiple computers in a network'),
    ('C', 'A device that translates domain names to IP addresses'),
    ('D', 'A protocol used to transfer files over the internet'),

    ('A', 'To provide security to a network by blocking unauthorized access'),
    ('B', 'To determine the physical layout of a network'),
    ('C', 'To translate domain names to IP addresses'),
    ('D', 'To facilitate communication between devices on a network'),

    ('A', 'A reference model that describes how data is transmitted over a network'),
    ('B', 'A suite of protocols used for communication over the internet'),
    ('C', 'A device that forwards data packets between computer networks'),
    ('D', 'A hardware component used to connect devices within a local area network'),

    ('A', 'A reference model that describes how data is transmitted over a network'),
    ('B', 'A suite of protocols used for communication over the internet'),
    ('C', 'A hardware component used to connect devices within a local area network'),
    ('D', 'A device that forwards data packets between computer networks'),

    ('A', 'A protocol used to transfer files over the internet'),
    ('B', 'A reference model that describes how data is transmitted over a network'),
    ('C', 'A device that connects multiple computers in a network'),
    ('D', 'A piece of hardware that translates domain names to IP addresses'),

    ('A', 'A device that connects multiple computers in a network'),
    ('B', 'A device that forwards data packets between computer networks'),
    ('C', 'A hardware component used to connect devices within a local area network'),
    ('D', 'A protocol used to transfer files over the internet'),

    ('A', 'A method of transmitting data over a network in discrete units'),
    ('B', 'A device that connects multiple computers in a network'),
    ('C', 'A protocol used to transfer files over the internet'),
    ('D', 'A reference model that describes how data is transmitted over a network'),

    ('A', 'A piece of hardware that connects multiple computers in a network'),
    ('B', 'A device that forwards data packets between computer networks'),
    ('C', 'A reference model that describes how data is transmitted over a network'),
    ('D', 'A suite of protocols used for communication over the internet');
	go


-- Associating choices with questions for Course 7 (Computer Networks)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (121, 243), (121, 244), (121, 245), (121, 246),
    (122, 247), (122, 248), (122, 249), (122, 250),
    (123, 251), (123, 252), (123, 253), (123, 254),
    (124, 255), (124, 256), (124, 257), (124, 258),
    (125, 259), (125, 260), (125, 261), (125, 262),
    (126, 263), (126, 264), (126, 265), (126, 266),
    (127, 267), (127, 268), (127, 269), (127, 270),
    (128, 271), (128, 272), (128, 273), (128, 274),
    (129, 275), (129, 276), (129, 277), (129, 278),
    (130, 279), (130, 280), (130, 281), (130, 282);
	go

	
-- Inserting True/False questions for Course 7 (Computer Networks)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('TCP is a connectionless protocol.', 1, 7, 'B', 9),
    ('UDP is a reliable protocol.', 1, 7, 'B', 8),
    ('IP addresses are assigned dynamically by DHCP.', 1, 7, 'A', 7),
    ('A subnet mask is used to identify the network portion of an IP address.', 1, 7, 'A', 9),
    ('DNS resolves domain names to IP addresses.', 1, 7, 'A', 8),
    ('HTTP is a secure protocol for transferring data over the web.', 1, 7, 'B', 9),
    ('FTP is used for real-time communication between two hosts.', 1, 7, 'B', 8),
    ('SSH provides encrypted communication over an insecure network.', 1, 7, 'A', 7),
    ('ARP is used to map IP addresses to MAC addresses.', 1, 7, 'A', 9),
    ('A router operates at the application layer of the OSI model.', 1, 7, 'B', 8);
	go

-- Associating choices with True/False questions for Course 7 (Computer Networks)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (131, 1), (131, 2),
    (132, 1), (132, 2),
    (133, 1), (133, 2),
    (134, 1), (134, 2),
    (135, 1), (135, 2),
    (136, 1), (136, 2),
    (137, 1), (137, 2),
    (138, 1), (138, 2),
    (139, 1), (139, 2),
    (140, 1), (140, 2);
	go



-- Inserting MCQ questions for Course 8 (Operating Systems)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('What is the main function of an operating system?', 2, 8, 'A', 9),
    ('What is a process in an operating system?', 2, 8, 'B', 8),
    ('What is virtual memory?', 2, 8, 'C', 7),
    ('What is a deadlock?', 2, 8, 'D', 9),
    ('What is the purpose of the file system?', 2, 8, 'A', 8),
    ('What is a kernel?', 2, 8, 'C', 9),
    ('What is a shell?', 2, 8, 'D', 8),
    ('What is multiprogramming?', 2, 8, 'A', 7),
    ('What is a semaphore?', 2, 8, 'C', 9),
    ('What is CPU scheduling?', 2, 8, 'B', 8);
	go

-- Inserting choices for the MCQ questions of Course 8 (Operating Systems)
INSERT INTO choices (choiceKey, choicestitle)
VALUES
    ('A', 'To manage computer hardware resources and provide services for application software'),
    ('B', 'A program in execution, representing a single sequence of instructions'),
    ('C', 'A mechanism that allows the execution of processes that are not completely in memory'),
    ('D', 'A situation where two or more competing actions are each waiting for the other to finish'),

    ('A', 'To manage computer hardware resources and provide services for application software'),
    ('B', 'A program in execution, representing a single sequence of instructions'),
    ('C', 'A mechanism that allows the execution of processes that are not completely in memory'),
    ('D', 'A situation where two or more competing actions are each waiting for the other to finish'),

    ('A', 'To manage computer hardware resources and provide services for application software'),
    ('B', 'A program in execution, representing a single sequence of instructions'),
    ('C', 'A mechanism that allows the execution of processes that are not completely in memory'),
    ('D', 'A situation where two or more competing actions are each waiting for the other to finish'),

    ('A', 'To manage computer hardware resources and provide services for application software'),
    ('B', 'A program in execution, representing a single sequence of instructions'),
    ('C', 'A mechanism that allows the execution of processes that are not completely in memory'),
    ('D', 'A situation where two or more competing actions are each waiting for the other to finish'),

    ('A', 'To manage computer hardware resources and provide services for application software'),
    ('B', 'A program in execution, representing a single sequence of instructions'),
    ('C', 'A mechanism that allows the execution of processes that are not completely in memory'),
    ('D', 'A situation where two or more competing actions are each waiting for the other to finish'),

    ('A', 'To manage computer hardware resources and provide services for application software'),
    ('B', 'A program in execution, representing a single sequence of instructions'),
    ('C', 'A mechanism that allows the execution of processes that are not completely in memory'),
    ('D', 'A situation where two or more competing actions are each waiting for the other to finish'),

    ('A', 'To manage computer hardware resources and provide services for application software'),
    ('B', 'A program in execution, representing a single sequence of instructions'),
    ('C', 'A mechanism that allows the execution of processes that are not completely in memory'),
    ('D', 'A situation where two or more competing actions are each waiting for the other to finish'),

    ('A', 'To manage computer hardware resources and provide services for application software'),
    ('B', 'A program in execution, representing a single sequence of instructions'),
    ('C', 'A mechanism that allows the execution of processes that are not completely in memory'),
    ('D', 'A situation where two or more competing actions are each waiting for the other to finish'),

    ('A', 'To manage computer hardware resources and provide services for application software'),
    ('B', 'A program in execution, representing a single sequence of instructions'),
    ('C', 'A mechanism that allows the execution of processes that are not completely in memory'),
    ('D', 'A situation where two or more competing actions are each waiting for the other to finish'),

    ('A', 'To manage computer hardware resources and provide services for application software'),
    ('B', 'A program in execution, representing a single sequence of instructions'),
    ('C', 'A mechanism that allows the execution of processes that are not completely in memory'),
    ('D', 'A situation where two or more competing actions are each waiting for the other to finish');
	go

-- Associating choices with MCQ questions for Course 8 (Operating Systems)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (141, 283), (141, 284), (141, 285), (141, 286),
    (142, 287), (142, 288), (142, 289), (142, 290),
    (143, 291), (143, 292), (143, 293), (143, 294),
    (144, 295), (144, 296), (144, 297), (144, 298),
    (145, 299), (145, 300), (145, 301), (145, 302),
    (146, 303), (146, 304), (146, 305), (146, 306),
    (147, 307), (147, 308), (147, 309), (147, 310),
    (148, 311), (148, 312), (148, 313), (148, 314),
    (149, 315), (149, 316), (149, 317), (149, 318),
    (150, 319), (150, 320), (150, 321), (150, 322);
	go



-- Inserting True/False questions for Course 8 (Operating Systems)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('An operating system manages computer hardware resources and provides services for application software.', 1, 8, 'A', 9),
    ('A deadlock occurs when two or more competing actions are each waiting for the other to finish.', 1, 8, 'A', 8),
    ('A kernel is a program in execution, representing a single sequence of instructions.', 1, 8, 'B', 7),
    ('Multiprogramming is the ability of an operating system to execute multiple processes simultaneously.', 1, 8, 'B', 9),
    ('CPU scheduling is the process of determining which processes are assigned to the CPU at any given time.', 1, 8, 'A', 8),
    ('A semaphore is a mechanism that allows the execution of processes that are not completely in memory.', 1, 8, 'B', 9),
    ('A shell is a program that interprets user commands and executes them.', 1, 8, 'A', 8),
    ('Virtual memory is the ability of an operating system to execute processes that are not completely in memory.', 1, 8, 'B', 7),
    ('The file system is responsible for managing computer hardware resources.', 1, 8, 'B', 9),
    ('CPU scheduling is a critical function of an operating system that determines the order in which processes are executed.', 1, 8, 'A', 8);
	go


-- Associating choices with True/False questions for Course 8 (Operating Systems)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (151, 1), (151, 2),
    (152, 1), (152, 2),
    (153, 1), (153, 2),
    (154, 1), (154, 2),
    (155, 1), (155, 2),
    (156, 1), (156, 2),
    (157, 1), (157, 2),
    (158, 1), (158, 2),
    (159, 1), (159, 2),
    (160, 1), (160, 2);
	go



-- Inserting questions and choices for course 9
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('What is virtualization?', 2, 9, 'A', 8),
    ('What is cloud computing?', 2, 9, 'B', 9),
    ('What is a container?', 2, 9, 'C', 7),
    ('What is Docker?', 2, 9, 'D', 8),
    ('What is a hypervisor?', 2, 9, 'A', 9),
    ('What is Infrastructure as a Service (IaaS)?', 2, 9, 'B', 8),
    ('What is Platform as a Service (PaaS)?', 2, 9, 'C', 7),
    ('What is Software as a Service (SaaS)?', 2, 9, 'D', 9),
    ('What are the benefits of virtualization?', 2, 9, 'A', 8),
    ('What are the challenges of cloud computing?', 2, 9, 'B', 9);

-- Inserting choices for the questions
INSERT INTO choices (choiceKey, choicestitle)
VALUES
    ('A', 'The process of creating a virtual version of a computer hardware platform, operating system, storage device, or network resources.'),
    ('B', 'A type of computing that relies on sharing computing resources rather than having local servers or personal devices to handle applications.'),
    ('C', 'A lightweight, standalone, executable package that includes everything needed to run a piece of software, including the code, runtime, system tools, system libraries, and settings.'),
    ('D', 'A platform for developing, shipping, and running applications in containers.'),

    ('A', 'The process of creating a virtual version of a computer hardware platform, operating system, storage device, or network resources.'),
    ('B', 'A type of computing that relies on sharing computing resources rather than having local servers or personal devices to handle applications.'),
    ('C', 'A lightweight, standalone, executable package that includes everything needed to run a piece of software, including the code, runtime, system tools, system libraries, and settings.'),
    ('D', 'A platform for developing, shipping, and running applications in containers.'),

    ('A', 'The process of creating a virtual version of a computer hardware platform, operating system, storage device, or network resources.'),
    ('B', 'A type of computing that relies on sharing computing resources rather than having local servers or personal devices to handle applications.'),
    ('C', 'A lightweight, standalone, executable package that includes everything needed to run a piece of software, including the code, runtime, system tools, system libraries, and settings.'),
    ('D', 'A platform for developing, shipping, and running applications in containers.'),

    ('A', 'The process of creating a virtual version of a computer hardware platform, operating system, storage device, or network resources.'),
    ('B', 'A type of computing that relies on sharing computing resources rather than having local servers or personal devices to handle applications.'),
    ('C', 'A lightweight, standalone, executable package that includes everything needed to run a piece of software, including the code, runtime, system tools, system libraries, and settings.'),
    ('D', 'A platform for developing, shipping, and running applications in containers.'),

    ('A', 'A software or hardware component that creates and runs virtual machines.'),
    ('B', 'A type of cloud computing service that provides virtualized computing resources over the internet.'),
    ('C', 'A lightweight, standalone, executable package that includes everything needed to run a piece of software, including the code, runtime, system tools, system libraries, and settings.'),
    ('D', 'A platform for developing, shipping, and running applications in containers.'),

    ('A', 'A type of cloud computing service that provides virtualized computing resources over the internet.'),
    ('B', 'A software or hardware component that creates and runs virtual machines.'),
    ('C', 'A platform for developing, shipping, and running applications in containers.'),
    ('D', 'A lightweight, standalone, executable package that includes everything needed to run a piece of software, including the code, runtime, system tools, system libraries, and settings.'),

    ('A', 'A lightweight, standalone, executable package that includes everything needed to run a piece of software, including the code, runtime, system tools, system libraries, and settings.'),
    ('B', 'A type of cloud computing service that provides virtualized computing resources over the internet.'),
    ('C', 'A software or hardware component that creates and runs virtual machines.'),
    ('D', 'A platform for developing, shipping, and running applications in containers.'),

    ('A', 'A type of cloud computing service that provides virtualized computing resources over the internet.'),
    ('B', 'A software or hardware component that creates and runs virtual machines.'),
    ('C', 'A platform for developing, shipping, and running applications in containers.'),
    ('D', 'A lightweight, standalone, executable package that includes everything needed to run a piece of software, including the code, runtime, system tools, system libraries, and settings.'),

    ('A', 'The process of creating a virtual version of a computer hardware platform, operating system, storage device, or network resources.'),
    ('B', 'A type of computing that relies on sharing computing resources rather than having local servers or personal devices to handle applications.'),
    ('C', 'A lightweight, standalone, executable package that includes everything needed to run a piece of software, including the code, runtime, system tools, system libraries, and settings.'),
    ('D', 'A platform for developing, shipping, and running applications in containers.'),

    ('A', 'Security and isolation, resource optimization, flexibility and scalability, disaster recovery.'),
    ('B', 'Security and privacy, data sovereignty, vendor lock-in, network connectivity and latency.'),
    ('C', 'Data integration and interoperability, legal and compliance issues, performance and reliability, vendor management.'),
    ('D', 'Interoperability and standards, data consistency and integrity, integration complexity, regulatory compliance.');
	go


-- Associating choices with questions for Course 9
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (161, 323), (161, 324), (161, 325), (161, 326),
    (162, 327), (162, 328), (162, 329), (162, 330),
    (163, 331), (163, 332), (163, 333), (163, 334),
    (164, 335), (164, 336), (164, 337), (164, 338),
    (165, 339), (165, 340), (165, 341), (165, 342),
    (166, 343), (166, 344), (166, 345), (166, 346),
    (167, 347), (167, 348), (167, 349), (167, 350),
    (168, 351), (168, 352), (168, 353), (168, 354),
    (169, 355), (169, 356), (169, 357), (169, 358),
    (170, 359), (170, 360), (170, 361), (170, 362);
	go


-- Inserting True/False questions for Course 9
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('JavaScript is a programming language commonly used for frontend web development.', 1, 9, 'A', 10),
    ('CSS stands for Cascading Script Style.', 1, 9, 'B', 8),
    ('HTML is a markup language used to structure content on the web.', 1, 9, 'A', 9),
    ('React is a backend framework for building web applications.', 1, 9, 'B', 7),
    ('Node.js allows JavaScript to be run on the server-side.', 1, 9, 'A', 8),
    ('Angular is a frontend framework developed by Facebook.', 1, 9, 'B', 9),
    ('Bootstrap is a CSS framework used for building responsive websites.', 1, 9, 'A', 8),
    ('MongoDB is a relational database management system.', 1, 9, 'B', 7),
    ('Python is commonly used for data analysis and machine learning.', 1, 9, 'A', 7),
    ('Django is a JavaScript library used for building user interfaces.', 1, 9, 'B', 9);
	go

-- Associating choices with True/False questions for Course 9
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (171, 1), (171, 2),
    (172, 1), (172, 2),
    (173, 1), (173, 2),
    (174, 1), (174, 2),
    (175, 1), (175, 2),
    (176, 1), (176, 2),
    (177, 1), (177, 2),
    (178, 1), (178, 2),
    (179, 1), (179, 2),
    (180, 1), (180, 2);
	go




-- Inserting MCQ questions for Course 10 (continued)
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('What is the primary purpose of using VPNs?', 2, 10, 'A', 10),
    ('Which encryption algorithm is commonly used for securing Wi-Fi networks?', 2, 10, 'B', 8),
    ('What is the purpose of a firewall in network security?', 2, 10, 'C', 9),
    ('What is the difference between symmetric and asymmetric encryption?', 2, 10, 'D', 7),
    ('What are the essential components of a strong password?', 2, 10, 'A', 10),
    ('What is the purpose of biometric authentication?', 2, 10, 'B', 9),
    ('What is the concept of zero trust security?', 2, 10, 'C', 8),
    ('What is the role of intrusion detection systems (IDS) in cybersecurity?', 2, 10, 'D', 7),
    ('What are common methods used in social engineering attacks?', 2, 10, 'A', 10),
    ('What are the main objectives of penetration testing?', 2, 10, 'B', 9);
	go

-- Inserting choices for the MCQ questions of Course 10 (continued)
INSERT INTO choices (choiceKey, choicestitle)
VALUES
    ('A', 'To provide secure remote access to network resources'),
    ('B', 'To encrypt data transmitted over the internet'),
    ('C', 'To protect data confidentiality and integrity'),
    ('D', 'To prevent unauthorized access to network resources'),

    ('A', 'AES (Advanced Encryption Standard)'),
    ('B', 'WPA2 (Wi-Fi Protected Access 2)'),
    ('C', 'RSA (Rivest-Shamir-Adleman)'),
    ('D', 'SHA (Secure Hash Algorithm)'),

    ('A', 'To filter and monitor incoming and outgoing network traffic'),
    ('B', 'To encrypt data transmitted over the internet'),
    ('C', 'To authenticate users and devices'),
    ('D', 'To provide secure remote access to network resources'),

    ('A', 'Symmetric encryption uses the same key for both encryption and decryption, while asymmetric encryption uses different keys'),
    ('B', 'Symmetric encryption is faster but less secure than asymmetric encryption'),
    ('C', 'Symmetric encryption is only used for data at rest, while asymmetric encryption is used for data in motion'),
    ('D', 'Symmetric encryption is suitable for securing communications between devices'),

    ('A', 'Length, Complexity, Uniqueness'),
    ('B', 'Length, Complexity, Randomness'),
    ('C', 'Complexity, Randomness, Regular updates'),
    ('D', 'Length, Regular updates, Biometric features'),

    ('A', 'To verify the identity of users based on unique biological characteristics'),
    ('B', 'To authenticate users based on something they are'),
    ('C', 'To confirm user identities through possession of physical tokens'),
    ('D', 'To validate user identities based on something they know'),

    ('A', 'The principle of assuming that all users, devices, and applications are untrusted until proven otherwise'),
    ('B', 'The concept of trusting all users, devices, and applications by default'),
    ('C', 'The practice of isolating sensitive data from unauthorized access'),
    ('D', 'The philosophy of granting unlimited access to trusted users'),

    ('A', 'To identify and respond to potential security incidents in real-time'),
    ('B', 'To encrypt data transmitted over the internet'),
    ('C', 'To prevent malware infections on network devices'),
    ('D', 'To provide secure remote access to network resources'),

    ('A', 'Phishing, Spear phishing, Social engineering, Vishing'),
    ('B', 'Firewall, Antivirus, Encryption, Authentication'),
    ('C', 'DDoS attacks, Man-in-the-middle attacks, Zero-day exploits, Ransomware'),
    ('D', 'Denial-of-service attacks, SQL injection, Cross-site scripting, Botnets'),

    ('A', 'To identify vulnerabilities in a system or network infrastructure'),
    ('B', 'To test the performance and reliability of network devices'),
    ('C', 'To recover lost data in case of system failure'),
    ('D', 'To monitor network traffic for suspicious activities');
	go

-- Associating choices with MCQ questions for Course 10 (continued)
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (181, 363), (181, 364), (181, 365), (181, 366),
    (182, 367), (182, 368), (182, 369), (182, 370),
    (183, 371), (183, 372), (183, 373), (183, 374),
    (184, 375), (184, 376), (184, 377), (184, 378),
    (185, 379), (185, 380), (185, 381), (185, 382),
    (186, 383), (186, 384), (186, 385), (186, 386),
    (187, 387), (187, 388), (187, 389), (187, 390),
    (188, 391), (188, 392), (188, 393), (188, 394),
    (189, 395), (189, 396), (189, 397), (189, 398),
    (190, 399), (190, 400), (190, 401), (190, 402);
	go


-- Inserting True/False questions for Course 10
INSERT INTO question (questiontitle, questiontype, courseid, correctanswer, mark)
VALUES
    ('Firewalls are used to prevent unauthorized access to network resources.', 1, 10, 'A', 10),
    ('Biometric authentication relies on something the user knows, such as a password or PIN.', 1, 10, 'B', 8),
    ('Zero trust security assumes that all users, devices, and applications are trustworthy by default.', 1, 10, 'B', 9),
    ('Penetration testing is primarily used to identify vulnerabilities in a system or network infrastructure.', 1, 10, 'A', 7),
    ('Social engineering attacks exploit vulnerabilities in software and hardware systems.', 1, 10, 'B', 10),
    ('Intrusion detection systems (IDS) are designed to prevent malware infections on network devices.', 1, 10, 'B', 9),
    ('Encryption is the process of converting plaintext into ciphertext to protect data confidentiality.', 1, 10, 'A', 8),
    ('Phishing is a form of social engineering attack that uses physical tokens to gain access to sensitive information.', 1, 10, 'B', 7),
    ('Denial-of-service (DoS) attacks aim to authenticate users based on unique biological characteristics.', 1, 10, 'B', 10),
    ('Machine learning algorithms are commonly used for identifying potential security incidents in real-time.', 1, 10, 'B', 9);
	go

-- Associating True/False questions with their choices
INSERT INTO questionschoices (questionid, choiceid)
VALUES 
    (191, 1), -- Firewalls are used to prevent unauthorized access to network resources. (True)
    (191, 2), -- Firewalls are used to prevent unauthorized access to network resources. (False)
    (192, 1), -- Biometric authentication relies on something the user knows, such as a password or PIN. (True)
    (192, 2), -- Biometric authentication relies on something the user knows, such as a password or PIN. (False)
    (193, 1), -- Zero trust security assumes that all users, devices, and applications are trustworthy by default. (True)
    (193, 2), -- Zero trust security assumes that all users, devices, and applications are trustworthy by default. (False)
    (194, 1), -- Penetration testing is primarily used to identify vulnerabilities in a system or network infrastructure. (True)
    (194, 2), -- Penetration testing is primarily used to identify vulnerabilities in a system or network infrastructure. (False)
    (195, 1), -- Social engineering attacks exploit vulnerabilities in software and hardware systems. (True)
    (195, 2), -- Social engineering attacks exploit vulnerabilities in software and hardware systems. (False)
    (196, 1), -- Intrusion detection systems (IDS) are designed to prevent malware infections on network devices. (True)
    (196, 2), -- Intrusion detection systems (IDS) are designed to prevent malware infections on network devices. (False)
    (197, 1), -- Encryption is the process of converting plaintext into ciphertext to protect data confidentiality. (True)
    (197, 2), -- Encryption is the process of converting plaintext into ciphertext to protect data confidentiality. (False)
    (198, 1), -- Phishing is a form of social engineering attack that uses physical tokens to gain access to sensitive information. (True)
    (198, 2), -- Phishing is a form of social engineering attack that uses physical tokens to gain access to sensitive information. (False)
    (199, 1), -- Denial-of-service (DoS) attacks flood networks, servers, or systems with excessive traffic to make them unavailable to users. (True)
    (199, 2), -- Denial-of-service (DoS) attacks flood networks, servers, or systems with excessive traffic to make them unavailable to users. (False)
    (200, 1), -- Multi-factor authentication (MFA) requires only one form of authentication for access. (True)
    (200, 2); -- Multi-factor authentication (MFA) requires only one form of authentication for access. (False)
	go