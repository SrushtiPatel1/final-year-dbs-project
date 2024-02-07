/*************************************************************************************************
*Group 15*
* Name       : Harsh Patel , Srushti Patel
* Email Id   : hpatel371@myseneca.ca, spatel664@myseneca.ca
* Student ID : 114085228,117791228
* Section    : NBB
***************************************************************************************************/

#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <iomanip>
#include <string>
#include <occi.h>

using namespace oracle::occi;
using namespace std;

void InsertGrade(Connection* conn) {
    int err = 0;
    int gradeId, studentId, teacherId, course, semester, year, score;

    cout << "Grade ID: ";
    cin >> gradeId;

    cout << "Student ID: ";
    cin >> studentId;

    cout << "Teacher ID: ";
    cin >> teacherId;

    cout << "Course: ";
    cin >> course;

    cout << "Semester: ";
    cin >> semester;

    cout << "Year: ";
    cin >> year;

    cout << "Score: ";
    cin >> score;

    Statement* stmt = conn->createStatement();
    stmt->setSQL("BEGIN spGradeInsert(:1, :2, :3, :4, :5, :6, :7, :8); END;");
    stmt->registerOutParam(1, Type::OCCIINT, sizeof(err));
    stmt->setNumber(2, gradeId);
    stmt->setNumber(3, studentId);
    stmt->setNumber(4, teacherId);
    stmt->setNumber(5, course);
    stmt->setNumber(6, semester);
    stmt->setNumber(7, year);
    stmt->setNumber(8, score);

    stmt->executeUpdate();
    err = stmt->getInt(1);

    if (err == 0) {
        cout << "SUCCESS: New grade inserted." << endl;
    }
    else {
        cout << "ERROR: New grade could not be inserted. The entered grade ID may already exist." << endl;
    }

    conn->terminateStatement(stmt);
}

int main() {
    
        string usr = "dbs311_233nbb17"; // Update with your username
        string pass = "56532194"; // Update with your password
        string srv = "myoracle12c.senecacollege.ca:1521/oracle12c"; // Update with your server information

    Environment* env = Environment::createEnvironment(Environment::DEFAULT);
    Connection* conn;

    try {
        conn = env->createConnection("dbs311_233nbb17", "56532194", "myoracle12c.senecacollege.ca:1521/oracle12c");
        InsertGrade(conn);
       
        Environment::terminateEnvironment(env);
    }
    catch (SQLException& sqlExcp) {
        cerr << "Exception: " << sqlExcp.what() << " (Error code " << sqlExcp.getErrorCode() << ")" << endl;
    }

    return 0;
}

/*
struct Teacher {
    int teacherid;
    string FirstName;
    string LastName;
    string email;
    string phone_num;
    string subjectname;
};

struct Student {
    int studentId;
    string firstName;
    string lastName;
    string email;
    string grade;
    int teacherId;
    string course;
};

struct OfficeStaff {
    int staffId;
    string firstName;
    string lastName;
    string email;
    string position;
    string dob; // Date of Birth
    string address;
};

struct Salary {
    int salaryId;
    int teacherId;
    double salaryAmount;
    string payrollDate;
    string emailAddress;
};

Environment* env = nullptr;
Connection* conn = nullptr;

// Function prototypes
int mainMenu();
int teacherMenu();
int studentMenu();
int officeStaffMenu();
int salaryMenu();
bool findTeacher(int teacherid, Teacher& teach);
void displayAllTeachers();
bool findStudent(int studentId, Student& student);
void displayAllStudents();
bool findOfficeStaff(int staffId, OfficeStaff& staff);
void displayAllOfficeStaff();
bool findSalaryByTeacher(int teacherId, Salary& salary);
void displayAllSalaries();

int main() {
    string usr = "dbs311_233nbb17"; // Update with your username
    string pass = "56532194"; // Update with your password
    string srv = "myoracle12c.senecacollege.ca:1521/oracle12c"; // Update with your server information

    try {
        env = Environment::createEnvironment(Environment::DEFAULT);
        conn = env->createConnection(usr, pass, srv);
        cout << "Connection is Successful!" << endl;

        int mainChoice;

        do {
            mainChoice = mainMenu();

            if (mainChoice == 1) {
                int teacherChoice;
                do {
                    teacherChoice = teacherMenu();
                    if (teacherChoice == 1) {
                        cout << "Enter Teacher ID: ";
                        int teacherid;
                        cin >> teacherid;
                        Teacher teach;
                        if (findTeacher(teacherid, teach)) {

                            cout << "Teacher ID: " << teach.teacherid << endl;
                            cout << "First Name: " << teach.FirstName << endl;
                            cout << "Last Name: " << teach.LastName << endl;
                            cout << "Email: " << teach.email << endl;
                            cout << "Phone Number: " << teach.phone_num << endl;
                            cout << "Subject Name: " << teach.subjectname << endl;
                        }
                        else {
                            cout << "Invalid Teacher ID" << endl;
                        }
                    }
                    else if (teacherChoice == 2) {
                        cout << "Entering choice to display all Teachers" << endl;
                        displayAllTeachers();
                    }
                } while (teacherChoice != 3);
            }
            else if (mainChoice == 2) {
                int studentChoice;
                do {
                    studentChoice = studentMenu();
                    if (studentChoice == 1) {
                        cout << "Enter Student ID: ";
                        int studentId;
                        cin >> studentId;
                        Student student;
                        if (findStudent(studentId, student)) {
                            // Display student information here
                            cout << "Student ID: " << student.studentId << endl;
                            cout << "First Name: " << student.firstName << endl;
                            cout << "Last Name: " << student.lastName << endl;
                            cout << "Email: " << student.email << endl;
                            cout << "Grade: " << student.grade << endl;
                            cout << "Teacher ID: " << student.teacherId << endl;
                            cout << "Course: " << student.course << endl;
                        }
                        else {
                            cout << "Invalid Student ID" << endl;
                        }
                    }
                    else if (studentChoice == 2) {
                        cout << "Entering choice to display all Students" << endl;
                        displayAllStudents();
                    }
                } while (studentChoice != 3);
            }
            else if (mainChoice == 3) {
                int staffChoice;
                do {
                    staffChoice = officeStaffMenu();
                    if (staffChoice == 1) {
                        cout << "Enter Office Staff ID: ";
                        int staffId;
                        cin >> staffId;
                        OfficeStaff staff;
                        if (findOfficeStaff(staffId, staff)) {
                            // Display office staff information here
                            cout << "Staff ID: " << staff.staffId << endl;
                            cout << "First Name: " << staff.firstName << endl;
                            cout << "Last Name: " << staff.lastName << endl;
                            cout << "Email: " << staff.email << endl;
                            cout << "Position: " << staff.position << endl;
                            cout << "Date of Birth: " << staff.dob << endl;
                            cout << "Address: " << staff.address << endl;
                        }
                        else {
                            cout << "Invalid Office Staff ID" << endl;
                        }
                    }
                    else if (staffChoice == 2) {
                        cout << "Entering choice to display all Office Staff" << endl;
                        displayAllOfficeStaff();
                    }
                } while (staffChoice != 3);
            }
            else if (mainChoice == 4) {
                int salaryChoice;
                do {
                    salaryChoice = salaryMenu();
                    if (salaryChoice == 1) {
                        cout << "Enter Teacher ID to find Salary: ";
                        int teacherId;
                        cin >> teacherId;
                        Salary salary;
                        if (findSalaryByTeacher(teacherId, salary)) {
                            // Display salary information here
                            cout << "Salary ID: " << salary.salaryId << endl;
                            cout << "Teacher ID: " << salary.teacherId << endl;
                            cout << "Salary Amount: $" << fixed << setprecision(2) << salary.salaryAmount << endl;
                            cout << "Payroll Date: " << salary.payrollDate << endl;
                            cout << "Email Address: " << salary.emailAddress << endl;
                        }
                        else {
                            cout << "No Salary found for Teacher ID: " << teacherId << endl;
                        }
                    }
                    else if (salaryChoice == 2) {
                        cout << "Entering choice to display all Salaries" << endl;
                        displayAllSalaries();
                    }
                } while (salaryChoice != 3);
            }
        } while (mainChoice != 5);

        env->terminateConnection(conn);
        Environment::terminateEnvironment(env);
    }
    catch (SQLException& sqlExcp) {
        cout << sqlExcp.getErrorCode() << ": " << sqlExcp.getMessage();
    }
    return 0;
}

int mainMenu() {
    int choice;
    cout << "\n------------------- Main Menu -------------------\n";
    cout << "1. Teacher\n";
    cout << "2. Student\n";
    cout << "3. Office Staff\n";
    cout << "4. Salary\n";
    cout << "5. Exit\n";
    cout << "Please choose a table (1-5): ";


    cin >> choice;
    return choice;
    cout << "\n---------------------------------------\n";
}

int teacherMenu() {
    int choice;
    cout << "\n------------------- Teacher Menu -------------------\n";
    cout << "1. Find Teacher by ID\n";
    cout << "2. Display All Teachers\n";
    cout << "3. Back to Main Menu\n";
    cout << "Enter your choice (1-3): ";
    cin >> choice;
    return choice;
}

int studentMenu() {
    int choice;
    cout << "\n------------------- Student Menu -------------------\n";
    cout << "1. Find Student by ID\n";
    cout << "2. Display All Students\n";
    cout << "3. Back to Main Menu\n";
    cout << "Enter your choice (1-3): ";
    cin >> choice;
    return choice;
}

int officeStaffMenu() {
    int choice;
    cout << "\n------------------- Office Staff Menu -------------------\n";
    cout << "1. Find Office Staff by ID\n";
    cout << "2. Display All Office Staff\n";
    cout << "3. Back to Main Menu\n";
    cout << "Enter your choice (1-3): ";
    cin >> choice;
    return choice;
}

int salaryMenu() {
    int choice;
    cout << "\n------------------- Salary Menu -------------------\n";
    cout << "1. Find Salary by Teacher ID\n";
    cout << "2. Display All Salaries\n";
    cout << "3. Back to Main Menu\n";
    cout << "Enter your choice (1-3): ";
    cin >> choice;
    return choice;
}

void displayAllTeachers() {
    try {
        Statement* stmt = conn->createStatement();
        stmt->setSQL("SELECT * FROM Teacher");
        ResultSet* rs = stmt->executeQuery();

        cout << "\n--------------- List of All Teachers ---------------\n";
        cout << left << setw(10) << "Teacher ID" << setw(20) << "First Name" << setw(20) << "Last Name"
            << setw(30) << "Email" << setw(15) << "Phone Number" << "Subject Name" << endl;

        while (rs->next()) {
            Teacher teacher;
            teacher.teacherid = rs->getInt(1);
            teacher.FirstName = rs->getString(2);
            teacher.LastName = rs->getString(3);
            teacher.email = rs->getString(4);
            teacher.phone_num = rs->getString(6);
            teacher.subjectname = rs->getString(5);

            cout << left << setw(10) << teacher.teacherid << setw(20) << teacher.FirstName << setw(20) << teacher.LastName
                << setw(30) << teacher.email << setw(15) << teacher.phone_num << teacher.subjectname << endl;
        }

        conn->terminateStatement(stmt);
    }
    catch (SQLException& sqlExcp) {
        cout << sqlExcp.getErrorCode() << ": " << sqlExcp.getMessage();
    }
}

// Function to find a teacher by ID
bool findTeacher(int teacherId, Teacher& teacher) {
    try {
        Statement* stmt = conn->createStatement();
        stmt->setSQL("SELECT * FROM Teacher WHERE teacherid = :1");
        stmt->setInt(1, teacherId);
        ResultSet* rs = stmt->executeQuery();

        if (rs->next()) {
            teacher.teacherid = rs->getInt(1);
            teacher.FirstName = rs->getString(2);
            teacher.LastName = rs->getString(3);
            teacher.email = rs->getString(4);
            teacher.phone_num = rs->getString(6);
            teacher.subjectname = rs->getString(5);

            conn->terminateStatement(stmt);
            return true;
        }
        conn->terminateStatement(stmt);
    }
    catch (SQLException& sqlExcp) {
        cout << sqlExcp.getErrorCode() << ": " << sqlExcp.getMessage();
    }
    return false;
}

// Function to find a student by ID
bool findStudent(int studentId, Student& student) {
    try {
        Statement* stmt = conn->createStatement();
        stmt->setSQL("SELECT * FROM Student WHERE studentid = :1");
        stmt->setInt(1, studentId);
        ResultSet* rs = stmt->executeQuery();

        if (rs->next()) {
            student.studentId = rs->getInt(1);
            student.firstName = rs->getString(2);
            student.lastName = rs->getString(3);
            student.email = rs->getString(4);
            student.grade = rs->getString(5);
            student.teacherId = rs->getInt(6);
            student.course = rs->getString(7);

            conn->terminateStatement(stmt);
            return true;
        }
        conn->terminateStatement(stmt);
    }
    catch (SQLException& sqlExcp) {
        cout << sqlExcp.getErrorCode() << ": " << sqlExcp.getMessage();
    }
    return false;
}


void displayAllStudents() {
    try {
        Statement* stmt = conn->createStatement();
        stmt->setSQL("SELECT * FROM Student");
        ResultSet* rs = stmt->executeQuery();

        cout << "\n--------------- List of All Students ---------------\n";
        cout << left << setw(10) << "Student ID" << setw(20) << "First Name" << setw(20) << "Last Name"
            << setw(30) << "Email" << setw(10) << "Grade" << setw(12) << "Teacher ID" << "Course" << endl;

        while (rs->next()) {
            Student student;
            student.studentId = rs->getInt(1);
            student.firstName = rs->getString(2);
            student.lastName = rs->getString(3);
            student.email = rs->getString(4);
            student.grade = rs->getString(5);
            student.teacherId = rs->getInt(6);
            student.course = rs->getString(7);

            cout << left << setw(10) << student.studentId << setw(20) << student.firstName << setw(20) << student.lastName
                << setw(30) << student.email << setw(10) << student.grade << setw(12) << student.teacherId << student.course << endl;
        }

        conn->terminateStatement(stmt);
    }
    catch (SQLException& sqlExcp) {
        cout << sqlExcp.getErrorCode() << ": " << sqlExcp.getMessage();
    }
}

bool findOfficeStaff(int staffId, OfficeStaff& staff) {
    try {
        Statement* stmt = conn->createStatement();
        stmt->setSQL("SELECT * FROM office_staff WHERE staffid = :1");
        stmt->setInt(1, staffId);
        ResultSet* rs = stmt->executeQuery();

        if (rs->next()) {
            staff.staffId = rs->getInt(1);
            staff.firstName = rs->getString(2);
            staff.lastName = rs->getString(3);
            staff.email = rs->getString(4);
            staff.position = rs->getString(5);
            staff.dob = rs->getString(6);
            staff.address = rs->getString(7);

            conn->terminateStatement(stmt);
            return true;
        }
        conn->terminateStatement(stmt);
    }
    catch (SQLException& sqlExcp) {
        cout << sqlExcp.getErrorCode() << ": " << sqlExcp.getMessage();
    }
    return false;
}

void displayAllOfficeStaff() {
    try {
        Statement* stmt = conn->createStatement();
        stmt->setSQL("SELECT * FROM office_staff");
        ResultSet* rs = stmt->executeQuery();

        cout << "\n--------------- List of All Office Staff ---------------\n";
        cout << left << setw(10) << "Staff ID" << setw(20) << "First Name" << setw(20) << "Last Name"
            << setw(30) << "Email" << setw(20) << "Position" << setw(12) << "Date of Birth" << "Address" << endl;

        while (rs->next()) {
            OfficeStaff staff;
            staff.staffId = rs->getInt(1);
            staff.firstName = rs->getString(2);
            staff.lastName = rs->getString(3);
            staff.email = rs->getString(4);
            staff.position = rs->getString(5);
            staff.dob = rs->getString(6);
            staff.address = rs->getString(7);

            cout << left << setw(10) << staff.staffId << setw(20) << staff.firstName << setw(20) << staff.lastName
                << setw(30) << staff.email << setw(20) << staff.position << setw(12) << staff.dob << staff.address << endl;
        }

        conn->terminateStatement(stmt);
    }
    catch (SQLException& sqlExcp) {
        cout << sqlExcp.getErrorCode() << ": " << sqlExcp.getMessage();
    }
}

bool findSalaryByTeacher(int teacherId, Salary& salary) {
    try {
        Statement* stmt = conn->createStatement();
        stmt->setSQL("SELECT * FROM Salary WHERE TeacherID = :1");
        stmt->setInt(1, teacherId);
        ResultSet* rs = stmt->executeQuery();

        if (rs->next()) {
            salary.salaryId = rs->getInt(1);
            salary.teacherId = rs->getInt(2);
            salary.salaryAmount = rs->getDouble(3);
            salary.payrollDate = rs->getString(4);
            salary.emailAddress = rs->getString(5);

            conn->terminateStatement(stmt);
            return true;
        }
        conn->terminateStatement(stmt);
    }
    catch (SQLException& sqlExcp) {
        cout << sqlExcp.getErrorCode() << ": " << sqlExcp.getMessage();
    }
    return false;
}

void displayAllSalaries() {
    try {
        Statement* stmt = conn->createStatement();
        stmt->setSQL("SELECT * FROM Salary");
        ResultSet* rs = stmt->executeQuery();

        cout << "\n--------------- List of All Salaries ---------------\n";
        cout << left << setw(10) << "Salary ID" << setw(10) << "Teacher ID" << setw(20) << "Salary Amount"
            << setw(20) << "Payroll Date" << "Email Address" << endl;

        while (rs->next()) {
            Salary salary;
            salary.salaryId = rs->getInt(1);
            salary.teacherId = rs->getInt(2);
            salary.salaryAmount = rs->getDouble(3);
            salary.payrollDate = rs->getString(4);
            salary.emailAddress = rs->getString(5);

            cout << left << setw(10) << salary.salaryId << setw(10) << salary.teacherId
                << setw(20) << fixed << setprecision(2) << salary.salaryAmount
                << setw(20) << salary.payrollDate << salary.emailAddress << endl;
        }

        conn->terminateStatement(stmt);
    }
    catch (SQLException& sqlExcp) {
        cout << sqlExcp.getErrorCode() << ": " << sqlExcp.getMessage();
    }
}
*/



