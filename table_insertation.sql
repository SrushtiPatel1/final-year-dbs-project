INSERT ALL
  INTO Teacher VALUES (1, 'John', 'Doe', 'johndoe@example.com', 'Math', '555-1234567')
  INTO Teacher VALUES(2, 'Jane', 'Smith', 'janesmith@example.com', 'Science', '555-9876543')
  INTO Teacher VALUES(3, 'Bob', 'Johnson', 'bjohnson@example.com', 'History', '555-1112222')
  INTO Teacher VALUES (4, 'Sara', 'Williams', 'saraw@example.com', 'English', '555-5551234')
  INTO Teacher VALUES(5, 'David', 'Brown', 'davidb@example.com', 'Physics', '555-7890000')
  INTO Teacher VALUES(6, 'Linda', 'Lee', 'lindalee@example.com', 'Chemistry', '555-3331111')
  INTO Teacher VALUES(7, 'Tom', 'Miller', 'tomm@example.com', 'Biology', '555-9998888')
  INTO Teacher VALUES(8, 'Mary', 'Wilson', 'maryw@example.com', 'Geography', '555-2223333')
  INTO Teacher VALUES(9, 'Michael', 'Johnson', 'michaelj@example.com', 'Art', '555-7776666')
  INTO Teacher VALUES(10, 'Emily', 'Clark', 'emilyc@example.com', 'Music', '555-4445555')
  INTO Teacher VALUES (11, 'Chris', 'Adams', 'chrisa@example.com', 'Physical Education', '555-1234567')
  INTO Teacher VALUES(12, 'Laura', 'Evans', 'laurae@example.com', 'Computer Science', '555-5551111')
  INTO Teacher VALUES(13, 'Steve', 'Hall', 'steveh@example.com', 'Economics', '555-9876543')
  INTO Teacher VALUES(14, 'Grace', 'Parker', 'gracep@example.com', 'Psychology', '555-7773333')
  INTO Teacher VALUES(15, 'George', 'Martin', 'georgem@example.com', 'Sociology', '555-8889999')
  INTO Teacher VALUES(16, 'Catherine', 'White', 'catherinew@example.com', 'Political Science', '555-3330000')
  INTO Teacher VALUES(17, 'Peter', 'Harris', 'peterh@example.com', 'Philosophy', '555-2221111')
  INTO Teacher VALUES(18, 'Karen', 'Allen', 'karena@example.com', 'Linguistics', '555-4443333')
  INTO Teacher VALUES(19, 'Richard', 'Turner', 'richardt@example.com', 'Statistics', '555-1117777')
  INTO Teacher VALUES (20, 'Susan', 'Scott', 'susans@example.com', 'Environmental Science', '555-6664444')
SELECT * FROM DUAL;



-- Inserting 20 rows of data into the Student table

INSERT ALL
  INTO Student VALUES (1, 'Ravi', 'Kumar', 'ravi_student1@example.com', 'A', 1, 'Math')
  INTO Student VALUES (2, 'Priya', 'Singh', 'priya_student2@example.com', 'B', 2, 'Science')
  INTO Student VALUES (3, 'Amit', 'Mishra', 'amit_student3@example.com', 'C', 3, 'History')
  INTO Student VALUES (4, 'Sneha', 'Gupta', 'sneha_student4@example.com', 'A', 1, 'English')
  INTO Student VALUES (5, 'Vikas', 'Yadav', 'vikas_student5@example.com', 'B', 2, 'Physics')
  INTO Student VALUES (6, 'Neha', 'Sharma', 'neha_student6@example.com', 'A', 1, 'Chemistry')
  INTO Student VALUES (7, 'Rajesh', 'Verma', 'rajesh_student7@example.com', 'C', 3, 'Biology')
  INTO Student VALUES (8, 'Pooja', 'Patel', 'pooja_student8@example.com', 'B', 2, 'Geography')
  INTO Student VALUES (9, 'Amit', 'Sinha', 'amit_student9@example.com', 'A', 1, 'Art')
  INTO Student VALUES (10, 'Anita', 'Saxena', 'anita_student10@example.com', 'C', 3, 'Music')
  INTO Student VALUES (11, 'Saurabh', 'Shukla', 'saurabh_student11@example.com', 'A', 1, 'Physical Education')
  INTO Student VALUES (12, 'Priti', 'Verma', 'priti_student12@example.com', 'B', 2, 'Computer Science')
  INTO Student VALUES (13, 'Ankur', 'Gupta', 'ankur_student13@example.com', 'C', 3, 'Economics')
  INTO Student VALUES (14, 'Swati', 'Sharma', 'swati_student14@example.com', 'A', 1, 'Psychology')
  INTO Student VALUES (15, 'Alok', 'Joshi', 'alok_student15@example.com', 'B', 2, 'Sociology')
  INTO Student VALUES (16, 'Kavita', 'Pandey', 'kavita_student16@example.com', 'C', 3, 'Political Science')
  INTO Student VALUES (17, 'Raj', 'Chauhan', 'raj_student17@example.com', 'A', 1, 'Philosophy')
  INTO Student VALUES (18, 'Neha', 'Mishra', 'neha_student18@example.com', 'B', 2, 'Linguistics')
  INTO Student VALUES (19, 'Pradeep', 'Singh', 'pradeep_student19@example.com', 'C', 3, 'Statistics')
  INTO Student VALUES (20, 'Meera', 'Sharma', 'meera_student20@example.com', 'A', 1, 'Environmental Science')
SELECT * FROM DUAL;




-- Inserting 20 rows of data into the office_staff table 
INSERT ALL
  INTO office_staff VALUES (21, 'Mark', 'Anderson', 'marka@example.com', 'Manager', TO_DATE('1980-05-15', 'YYYY-MM-DD'), '123 Main St, City')
  INTO office_staff VALUES (22, 'Sarah', 'Johnson', 'sarahj@example.com', 'Secretary', TO_DATE('1990-03-20', 'YYYY-MM-DD'), '456 Elm St, Town')
  INTO office_staff VALUES (23, 'James', 'Robinson', 'jamesr@example.com', 'Accountant', TO_DATE('1975-08-10', 'YYYY-MM-DD'), '789 Oak St, Village')
  INTO office_staff VALUES (24, 'Megan', 'Miller', 'meganm@example.com', 'Receptionist', TO_DATE('1988-12-05', 'YYYY-MM-DD'), '101 Pine St, Suburb')
  INTO office_staff VALUES (25, 'Robert', 'Brown', 'robertb@example.com', 'IT Specialist', TO_DATE('1995-06-30', 'YYYY-MM-DD'), '202 Cedar St, County')
  INTO office_staff VALUES (26, 'Amanda', 'Hall', 'amandah@example.com', 'HR Manager', TO_DATE('1985-02-17', 'YYYY-MM-DD'), '303 Birch St, Town')
  INTO office_staff VALUES (27, 'Patrick', 'Wilson', 'patrickw@example.com', 'Marketing Coordinator', TO_DATE('1992-09-14', 'YYYY-MM-DD'), '404 Oak St, City')
  INTO office_staff VALUES (28, 'Julia', 'Lee', 'julial@example.com', 'Finance Director', TO_DATE('1976-11-23', 'YYYY-MM-DD'), '505 Elm St, Suburb')
  INTO office_staff VALUES (29, 'Daniel', 'Garcia', 'danielg@example.com', 'Office Assistant', TO_DATE('1998-04-18', 'YYYY-MM-DD'), '606 Pine St, Village')
  INTO office_staff VALUES (30, 'Natalie', 'Davis', 'natalied@example.com', 'Project Manager', TO_DATE('1982-07-22', 'YYYY-MM-DD'), '707 Cedar St, County')
  INTO office_staff VALUES (31, 'Brian', 'Clark', 'brianc@example.com', 'Executive Assistant', TO_DATE('1991-01-10', 'YYYY-MM-DD'), '808 Birch St, City')
  INTO office_staff VALUES (32, 'Olivia', 'Gomez', 'oliviag@example.com', 'Legal Counsel', TO_DATE('1979-03-05', 'YYYY-MM-DD'), '909 Oak St, Town')
  INTO office_staff VALUES (33, 'William', 'Martinez', 'williamm@example.com', 'Data Analyst', TO_DATE('1987-06-08', 'YYYY-MM-DD'), '1010 Elm St, County')
  INTO office_staff VALUES (34, 'Sophia', 'Hernandez', 'sophiah@example.com', 'Sales Manager', TO_DATE('1983-08-12', 'YYYY-MM-DD'), '1111 Cedar St, Suburb')
  INTO office_staff VALUES (35, 'Nicholas', 'Lopez', 'nicholasl@example.com', 'HR Coordinator', TO_DATE('1994-10-30', 'YYYY-MM-DD'), '1212 Pine St, City')
  INTO office_staff VALUES (36, 'Ava', 'Perez', 'avap@example.com', 'Financial Analyst', TO_DATE('1974-09-25', 'YYYY-MM-DD'), '1313 Birch St, Village')
  INTO office_staff VALUES (37, 'Thomas', 'Gonzalez', 'thomasg@example.com', 'Office Manager', TO_DATE('1986-12-15', 'YYYY-MM-DD'), '1414 Oak St, County')
  INTO office_staff VALUES (38, 'Sofia', 'Rodriguez', 'sofiar@example.com', 'IT Support', TO_DATE('1980-03-02', 'YYYY-MM-DD'), '1515 Elm St, Suburb')
  INTO office_staff VALUES (39, 'Liam', 'Perez', 'liamp@example.com', 'Marketing Manager', TO_DATE('1978-07-11', 'YYYY-MM-DD'), '1616 Cedar St, City')
  INTO office_staff VALUES (40, 'Aria', 'Ortiz', 'ariao@example.com', 'Finance Coordinator', TO_DATE('1993-05-28', 'YYYY-MM-DD'), '1717 Pine St, Town')
SELECT * FROM DUAL;







-- Inserting data into the Grade table
INSERT ALL
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (1, 1, 1, 'Math', 'Fall', 2023, 95.5)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (2, 2, 2, 'Science', 'Fall', 2023, 88.0)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (3, 3, 3, 'History', 'Fall', 2023, 75.0)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (4, 4, 4, 'English', 'Fall', 2023, 91.5)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (5, 5, 5, 'Physics', 'Fall', 2023, 87.0)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (6, 6, 6, 'Chemistry', 'Fall', 2023, 82.5)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (7, 7, 7, 'Biology', 'Fall', 2023, 79.0)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (8, 8, 8, 'Geography', 'Fall', 2023, 88.5)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (9, 9, 9, 'Art', 'Fall', 2023, 76.5)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (10, 10, 10, 'Music', 'Fall', 2023, 92.0)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (11, 11, 11, 'Physical Education', 'Fall', 2023, 94.5)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (12, 12, 12, 'Computer Science', 'Fall', 2023, 89.0)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (13, 13, 13, 'Economics', 'Fall', 2023, 81.5)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (14, 14, 14, 'Psychology', 'Fall', 2023, 90.0)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (15, 15, 15, 'Sociology', 'Fall', 2023, 84.0)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (16, 16, 16, 'Political Science', 'Fall', 2023, 86.5)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (17, 17, 17, 'Philosophy', 'Fall', 2023, 78.5)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (18, 18, 18, 'Linguistics', 'Fall', 2023, 80.0)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (19, 19, 19, 'Statistics', 'Fall', 2023, 77.0)
  INTO Grade (GradeID, StudentID, TeacherID, Course, Semester, Year, Score) VALUES
  (20, 20, 20, 'Environmental Science', 'Fall', 2023, 85.5)
SELECT * FROM DUAL;



-- Inserting data into the Salary table
INSERT ALL
  INTO Salary VALUES (1, 1, 55000.00, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'johndoe@example.com')
  INTO Salary VALUES (2, 2, 60000.50, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'janesmith@example.com')
  INTO Salary VALUES (3, 3, 48000.75, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'bjohnson@example.com')
  INTO Salary VALUES (4, 4, 52000.25, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'saraw@example.com')
  INTO Salary VALUES (5, 5, 58000.00, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'davidb@example.com')
  INTO Salary VALUES (6, 6, 51000.75, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'lindalee@example.com')
  INTO Salary VALUES (7, 7, 59000.25, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'tomm@example.com')
  INTO Salary VALUES (8, 8, 53000.50, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'maryw@example.com')
  INTO Salary VALUES (9, 9, 49000.00, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'michaelj@example.com')
  INTO Salary VALUES (10, 10, 62000.75, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'emilyc@example.com')
  INTO Salary VALUES (11, 11, 56000.50, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'chrisa@example.com')
  INTO Salary VALUES (12, 12, 58000.25, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'laurae@example.com')
  INTO Salary VALUES (13, 13, 49000.00, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'steveh@example.com')
  INTO Salary VALUES (14, 14, 51000.75, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'gracep@example.com')
  INTO Salary VALUES (15, 15, 53000.50, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'georgem@example.com')
  INTO Salary VALUES (16, 16, 56000.50, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'catherinew@example.com')
  INTO Salary VALUES (17, 17, 59000.25, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'peterh@example.com')
  INTO Salary VALUES (18, 18, 62000.75, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'karena@example.com')
  INTO Salary VALUES (19, 19, 58000.25, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'richardt@example.com')
  INTO Salary VALUES (20, 20, 53000.50, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'susans@example.com')
SELECT * FROM DUAL;



-- Inserting data into the FacilityMaintenance table
INSERT ALL
  INTO FacilityMaintenance VALUES (1, 21, TO_DATE('2023-01-05', 'YYYY-MM-DD'), 'Repair HVAC system', 1500.00)
  INTO FacilityMaintenance VALUES (2, 22, TO_DATE('2023-01-08', 'YYYY-MM-DD'), 'Replace office furniture', 2200.50)
  INTO FacilityMaintenance VALUES (3, 23, TO_DATE('2023-01-12', 'YYYY-MM-DD'), 'Fix plumbing issue', 1300.75)
  INTO FacilityMaintenance VALUES (4, 24, TO_DATE('2023-01-18', 'YYYY-MM-DD'), 'Paint reception area', 800.25)
  INTO FacilityMaintenance VALUES (5, 25, TO_DATE('2023-01-22', 'YYYY-MM-DD'), 'Install new IT equipment', 2500.00)
  INTO FacilityMaintenance VALUES (6, 26, TO_DATE('2023-01-25', 'YYYY-MM-DD'), 'Repair office elevator', 1100.75)
  INTO FacilityMaintenance VALUES (7, 27, TO_DATE('2023-01-28', 'YYYY-MM-DD'), 'Replace marketing signage', 2900.25)
  INTO FacilityMaintenance VALUES (8, 28, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 'Fix financial software', 1550.50)
  INTO FacilityMaintenance VALUES (9, 29, TO_DATE('2023-02-08', 'YYYY-MM-DD'), 'Maintenance of office supplies', 2000.00)
  INTO FacilityMaintenance VALUES (10, 30, TO_DATE('2023-02-12', 'YYYY-MM-DD'), 'Install projectors in meeting rooms', 1800.75)
  INTO FacilityMaintenance VALUES (11, 31, TO_DATE('2023-02-18', 'YYYY-MM-DD'), 'Office renovation', 2700.50)
  INTO FacilityMaintenance VALUES (12, 32, TO_DATE('2023-02-22', 'YYYY-MM-DD'), 'Legal document storage upgrade', 1600.25)
  INTO FacilityMaintenance VALUES (13, 33, TO_DATE('2023-02-25', 'YYYY-MM-DD'), 'Data center maintenance', 2200.00)
  INTO FacilityMaintenance VALUES (14, 34, TO_DATE('2023-02-28', 'YYYY-MM-DD'), 'Sales office refurbishment', 2100.75)
  INTO FacilityMaintenance VALUES (15, 35, TO_DATE('2023-03-05', 'YYYY-MM-DD'), 'HR office improvements', 1950.50)
  INTO FacilityMaintenance VALUES (16, 36, TO_DATE('2023-03-08', 'YYYY-MM-DD'), 'Financial analysis software upgrade', 2800.50)
  INTO FacilityMaintenance VALUES (17, 37, TO_DATE('2023-03-12', 'YYYY-MM-DD'), 'Office space management', 2650.25)
  INTO FacilityMaintenance VALUES (18, 38, TO_DATE('2023-03-18', 'YYYY-MM-DD'), 'IT support desk overhaul', 1750.50)
  INTO FacilityMaintenance VALUES (19, 39, TO_DATE('2023-03-22', 'YYYY-MM-DD'), 'Marketing office redesign', 2450.75)
  INTO FacilityMaintenance VALUES (20, 40, TO_DATE('2023-03-25', 'YYYY-MM-DD'), 'Finance department restructuring', 2100.25)
SELECT * FROM DUAL;