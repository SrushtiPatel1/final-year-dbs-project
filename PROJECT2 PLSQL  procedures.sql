CREATE OR REPLACE PROCEDURE spGradeInsert(
  err_code OUT INTEGER,
  m_gradeid IN GRADE.GRADEID%TYPE,
  m_studentid IN GRADE.STUDENTID%TYPE,
  m_teacherid IN GRADE.TEACHERID%TYPE,
  m_course IN GRADE.COURSE%TYPE,
  m_semester IN GRADE.SEMESTER%TYPE,
  m_year IN GRADE.YEAR%TYPE,
  m_score IN GRADE.SCORE%TYPE
) AS
BEGIN
  INSERT INTO GRADE (GRADEID, STUDENTID, TEACHERID, COURSE, SEMESTER, YEAR, SCORE)
  VALUES (m_gradeid, m_studentid, m_teacherid, m_course, m_semester, m_year, m_score);
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;







CREATE OR REPLACE PROCEDURE spGradeUpdate(
  err_code OUT INTEGER,
  m_gradeid IN GRADE.GRADEID%TYPE,
  m_score IN GRADE.SCORE%TYPE
) AS
BEGIN
  UPDATE GRADE
  SET SCORE = m_score
  WHERE GRADEID = m_gradeid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;



CREATE OR REPLACE PROCEDURE spGradeDelete(
  err_code OUT INTEGER,
  m_gradeid IN GRADE.GRADEID%TYPE
) AS
BEGIN
  DELETE FROM GRADE
  WHERE GRADEID = m_gradeid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;



CREATE OR REPLACE PROCEDURE spGradeSelect(
  err_code OUT INTEGER,
  m_gradeid IN GRADE.GRADEID%TYPE,
  m_grade_data OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN m_grade_data FOR
    SELECT * FROM GRADE
    WHERE GRADEID = m_gradeid;
  
  err_code := 0;  -- Indicates success
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    err_code := -1; -- Indicates no data found
  WHEN OTHERS THEN
    err_code := -1; -- Indicates an error
END;


/*salary  table*/

CREATE OR REPLACE PROCEDURE spSalaryInsert(
  err_code OUT INTEGER,
  m_salaryid IN SALARY.SALARYID%TYPE,
  m_teacherid IN SALARY.TEACHERID%TYPE,
  m_salaryamount IN SALARY.SALARYAMOUNT%TYPE,
  m_payrolldate IN SALARY.PAYROLLDATE%TYPE,
  m_emailaddress IN SALARY.EMAILADDRESS%TYPE
) AS
BEGIN
  INSERT INTO SALARY (SALARYID, TEACHERID, SALARYAMOUNT, PAYROLLDATE, EMAILADDRESS)
  VALUES (m_salaryid, m_teacherid, m_salaryamount, m_payrolldate, m_emailaddress);
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;



CREATE OR REPLACE PROCEDURE spSalaryUpdate(
  err_code OUT INTEGER,
  m_salaryid IN SALARY.SALARYID%TYPE,
  m_salaryamount IN SALARY.SALARYAMOUNT%TYPE
) AS
BEGIN
  UPDATE SALARY
  SET SALARYAMOUNT = m_salaryamount
  WHERE SALARYID = m_salaryid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;


CREATE OR REPLACE PROCEDURE spSalaryDelete(
  err_code OUT INTEGER,
  m_salaryid IN SALARY.SALARYID%TYPE
) AS
BEGIN
  DELETE FROM SALARY
  WHERE SALARYID = m_salaryid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;






CREATE OR REPLACE PROCEDURE spSalarySelect(
  err_code OUT INTEGER,
  m_salaryid IN SALARY.SALARYID%TYPE,
  m_salary_data OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN m_salary_data FOR
    SELECT * FROM SALARY
    WHERE SALARYID = m_salaryid;
  
  err_code := 0;  -- Indicates success
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    err_code := -1; -- Indicates no data found
  WHEN OTHERS THEN
    err_code := -1; -- Indicates an error
END;



/*STUDENT TABLE*/

CREATE OR REPLACE PROCEDURE spStudentInsert(
  err_code OUT INTEGER,
  m_studentid IN STUDENT.STUDENTID%TYPE,
  m_firstname IN STUDENT.FIRSTNAME%TYPE,
  m_lastname IN STUDENT.LASTNAME%TYPE,
  m_email IN STUDENT.EMAIL%TYPE,
  m_grade IN STUDENT.GRADE%TYPE,
  m_section IN STUDENT.SECTION%TYPE,
  m_subjectname IN STUDENT.SUBJECTNAME%TYPE
) AS
BEGIN
  INSERT INTO STUDENT (STUDENTID, FIRSTNAME, LASTNAME, EMAIL, GRADE, SECTION, SUBJECTNAME)
  VALUES (m_studentid, m_firstname, m_lastname, m_email, m_grade, m_section, m_subjectname);
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;



CREATE OR REPLACE PROCEDURE spStudentUpdate(
  err_code OUT INTEGER,
  m_studentid IN STUDENT.STUDENTID%TYPE,
  m_email IN STUDENT.EMAIL%TYPE
) AS
BEGIN
  UPDATE STUDENT
  SET EMAIL = m_email
  WHERE STUDENTID = m_studentid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;


CREATE OR REPLACE PROCEDURE spStudentDelete(
  err_code OUT INTEGER,
  m_studentid IN STUDENT.STUDENTID%TYPE
) AS
BEGIN
  DELETE FROM STUDENT
  WHERE STUDENTID = m_studentid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;


CREATE OR REPLACE PROCEDURE spStudentSelect(
  err_code OUT INTEGER,
  m_studentid IN STUDENT.STUDENTID%TYPE,
  m_student_data OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN m_student_data FOR
    SELECT * FROM STUDENT
    WHERE STUDENTID = m_studentid;
  
  err_code := 0;  -- Indicates success
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    err_code := -1; -- Indicates no data found
  WHEN OTHERS THEN
    err_code := -1; -- Indicates an error
END;


/*TEACHER*/

CREATE OR REPLACE PROCEDURE spTeacherInsert(
  err_code OUT INTEGER,
  m_teacherid IN TEACHER.TEACHERID%TYPE,
  m_firstname IN TEACHER.FIRSTNAME%TYPE,
  m_lastname IN TEACHER.LASTNAME%TYPE,
  m_email IN TEACHER.EMAIL%TYPE,
  m_subjectname IN TEACHER.SUBJECTNAME%TYPE,
  m_phone_num IN TEACHER.PHONE_NUM%TYPE
) AS
BEGIN
  INSERT INTO TEACHER (TEACHERID, FIRSTNAME, LASTNAME, EMAIL, SUBJECTNAME, PHONE_NUM)
  VALUES (m_teacherid, m_firstname, m_lastname, m_email, m_subjectname, m_phone_num);
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;


CREATE OR REPLACE PROCEDURE spTeacherUpdate(
  err_code OUT INTEGER,
  m_teacherid IN TEACHER.TEACHERID%TYPE,
  m_email IN TEACHER.EMAIL%TYPE
) AS
BEGIN
  UPDATE TEACHER
  SET EMAIL = m_email
  WHERE TEACHERID = m_teacherid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;


CREATE OR REPLACE PROCEDURE spTeacherDelete(
  err_code OUT INTEGER,
  m_teacherid IN TEACHER.TEACHERID%TYPE
) AS
BEGIN
  DELETE FROM TEACHER
  WHERE TEACHERID = m_teacherid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;


CREATE OR REPLACE PROCEDURE spTeacherSelect(
  err_code OUT INTEGER,
  m_teacherid IN TEACHER.TEACHERID%TYPE,
  m_teacher_data OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN m_teacher_data FOR
    SELECT * FROM TEACHER
    WHERE TEACHERID = m_teacherid;
  
  err_code := 0;  -- Indicates success
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    err_code := -1; -- Indicates no data found
  WHEN OTHERS THEN
    err_code := -1; -- Indicates an error
END;



/*OFFICE STAFF*/


CREATE OR REPLACE PROCEDURE spOfficeStaffInsert(
  err_code OUT INTEGER,
  m_staffid IN OFFICE_STAFF.STAFFID%TYPE,
  m_firstname IN OFFICE_STAFF.FIRSTNAME%TYPE,
  m_lastname IN OFFICE_STAFF.LASTNAME%TYPE,
  m_email IN OFFICE_STAFF.EMAIL%TYPE,
  m_position IN OFFICE_STAFF.POSITION%TYPE,
  m_dob IN OFFICE_STAFF.DOB%TYPE,
  m_address IN OFFICE_STAFF.ADDRESS%TYPE
) AS
BEGIN
  INSERT INTO OFFICE_STAFF (STAFFID, FIRSTNAME, LASTNAME, EMAIL, POSITION, DOB, ADDRESS)
  VALUES (m_staffid, m_firstname, m_lastname, m_email, m_position, m_dob, m_address);
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;


CREATE OR REPLACE PROCEDURE spOfficeStaffUpdate(
  err_code OUT INTEGER,
  m_staffid IN OFFICE_STAFF.STAFFID%TYPE,
  m_email IN OFFICE_STAFF.EMAIL%TYPE
) AS
BEGIN
  UPDATE OFFICE_STAFF
  SET EMAIL = m_email
  WHERE STAFFID = m_staffid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;



CREATE OR REPLACE PROCEDURE spOfficeStaffDelete(
  err_code OUT INTEGER,
  m_staffid IN OFFICE_STAFF.STAFFID%TYPE
) AS
BEGIN
  DELETE FROM OFFICE_STAFF
  WHERE STAFFID = m_staffid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;



CREATE OR REPLACE PROCEDURE spOfficeStaffSelect(
  err_code OUT INTEGER,
  m_staffid IN OFFICE_STAFF.STAFFID%TYPE,
  m_staff_data OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN m_staff_data FOR
    SELECT * FROM OFFICE_STAFF
    WHERE STAFFID = m_staffid;
  
  err_code := 0;  -- Indicates success
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    err_code := -1; -- Indicates no data found
  WHEN OTHERS THEN
    err_code := -1; -- Indicates an error
END;



/*FACILITYMAINTENANCE*/


CREATE OR REPLACE PROCEDURE spFacilityMaintenanceInsert(
  err_code OUT INTEGER,
  m_maintenanceid IN FACILITYMAINTENANCE.MAINTENANCEID%TYPE,
  m_staffid IN FACILITYMAINTENANCE.STAFFID%TYPE,
  m_maintenancedate IN FACILITYMAINTENANCE.MAINTENANCEDATE%TYPE,
  m_descriptions IN FACILITYMAINTENANCE.DESCRIPTIONS%TYPE,
  m_cost IN FACILITYMAINTENANCE.COST%TYPE
) AS
BEGIN
  INSERT INTO FACILITYMAINTENANCE (MAINTENANCEID, STAFFID, MAINTENANCEDATE, DESCRIPTIONS, COST)
  VALUES (m_maintenanceid, m_staffid, m_maintenancedate, m_descriptions, m_cost);
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;


CREATE OR REPLACE PROCEDURE spFacilityMaintenanceUpdate(
  err_code OUT INTEGER,
  m_maintenanceid IN FACILITYMAINTENANCE.MAINTENANCEID%TYPE,
  m_cost IN FACILITYMAINTENANCE.COST%TYPE
) AS
BEGIN
  UPDATE FACILITYMAINTENANCE
  SET COST = m_cost
  WHERE MAINTENANCEID = m_maintenanceid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;


CREATE OR REPLACE PROCEDURE spFacilityMaintenanceDelete(
  err_code OUT INTEGER,
  m_maintenanceid IN FACILITYMAINTENANCE.MAINTENANCEID%TYPE
) AS
BEGIN
  DELETE FROM FACILITYMAINTENANCE
  WHERE MAINTENANCEID = m_maintenanceid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
END;


CREATE OR REPLACE PROCEDURE spFacilityMaintenanceSelect(
  err_code OUT INTEGER,
  m_maintenanceid IN FACILITYMAINTENANCE.MAINTENANCEID%TYPE,
  m_maintenance_data OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN m_maintenance_data FOR
    SELECT * FROM FACILITYMAINTENANCE
    WHERE MAINTENANCEID = m_maintenanceid;
  
  err_code := 0;  -- Indicates success
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    err_code := -1; -- Indicates no data found
  WHEN OTHERS THEN
    err_code := -1; -- Indicates an error
END;
