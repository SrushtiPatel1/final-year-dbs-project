CREATE TABLE teacher (
    teacherid INT PRIMARY KEY,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    email VARCHAR(255),
    phone_num VARCHAR(15),
    subjectname VARCHAR (255)
);

CREATE TABLE student (
    studentid INT PRIMARY KEY,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    email VARCHAR(255) UNIQUE, -- Assuming email should be unique for each student
    grade VARCHAR(50),
    section VARCHAR(50),
    subjectname VARCHAR(255)
);

CREATE TABLE office_staff (
    staffid INT PRIMARY KEY,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    email VARCHAR(255) UNIQUE, -- Assuming email should be unique for each staff member
    position VARCHAR(255),
    DOB DATE,  -- Assuming DOB (Date of Birth) is of DATE type
    address VARCHAR(500)
);


CREATE TABLE Grade (
    GradeID INT PRIMARY KEY,
    StudentID INT,
    TeacherID INT,
    Course VARCHAR(255),
    Semester VARCHAR(255),
    Year INT,
    Score FLOAT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID)
);

CREATE TABLE Salary (
    SalaryID INT PRIMARY KEY,
    TeacherID INT,
    SalaryAmount DECIMAL(10, 2),
    PayrollDate DATE,
    EmailAddress VARCHAR(255),
    FOREIGN KEY (teacherID) REFERENCES teacher(teacherID)
);

CREATE TABLE FacilityMaintenance (
    MaintenanceID INT PRIMARY KEY,
    StaffID INT,
    MaintenanceDate DATE,
    Description VARCHAR(255),
    Cost DECIMAL(10, 2),
    FOREIGN KEY (StaffID) REFERENCES office_Staff(StaffID)
);