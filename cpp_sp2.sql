SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE TeacherSelect(
  m_teacherid IN TEACHER.TEACHERID%TYPE
) AS
  v_count NUMBER;
  v_row TEACHER%ROWTYPE;
BEGIN
    SELECT COUNT(*) INTO v_count
  FROM TEACHER
  WHERE TEACHERID = m_teacherid;

  IF v_count > 0 THEN
    DBMS_OUTPUT.PUT_LINE('TEACHER ID EXISTS');
    
    SELECT *
    INTO v_row
    FROM TEACHER
    WHERE TEACHERID = m_teacherid;

       DBMS_OUTPUT.PUT_LINE(
      'TEACHERID: ' || v_row.TEACHERID || ', ' ||
      'FIRSTNAME: ' || v_row.FIRSTNAME || ', ' ||
      'LASTNAME: ' || v_row.LASTNAME || ', ' ||
      'EMAIL: ' || v_row.EMAIL || ', ' ||
      'SUBJECTNAME: ' || v_row.SUBJECTNAME || ', ' ||
      'PHONE_NUM: ' || v_row.PHONE_NUM
    );
  ELSE
    DBMS_OUTPUT.PUT_LINE('TEACHER ID DOES NOT EXIST');
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('ERROR OCCURRED: ' || SQLERRM);
END;

/





CREATE OR REPLACE PROCEDURE TeacherInsert(
  err_code OUT INTEGER,
  M_TEACHERID IN TEACHER.TEACHERID%TYPE,
  M_FIRSTNAME IN TEACHER.FIRSTNAME%TYPE,
  M_LASTNAME IN TEACHER.LASTNAME%TYPE,
  M_EMAIL IN TEACHER.EMAIL%TYPE,
  M_SUBJECTNAME IN TEACHER.SUBJECTNAME%TYPE,
  M_PHONE_NUM IN TEACHER.PHONE_NUM%TYPE
) AS
BEGIN
  INSERT INTO TEACHER (TEACHERID, FIRSTNAME, LASTNAME, EMAIL, SUBJECTNAME, PHONE_NUM)
  VALUES (M_TEACHERID, M_FIRSTNAME, M_LASTNAME, M_EMAIL, M_SUBJECTNAME, M_PHONE_NUM);

  COMMIT;
  err_code := SQL%ROWCOUNT;

  -- Check if err_code is not 1 to indicate an error
  IF err_code = 0  THEN
    DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
  ELSE
    -- Display the inserted data if the insertion was successful
    DBMS_OUTPUT.PUT_LINE('Data Inserted:');
    DBMS_OUTPUT.PUT_LINE('TEACHERID: ' || M_TEACHERID);
    DBMS_OUTPUT.PUT_LINE('FIRSTNAME: ' || M_FIRSTNAME);
    DBMS_OUTPUT.PUT_LINE('LASTNAME: ' || M_LASTNAME);
    DBMS_OUTPUT.PUT_LINE('EMAIL: ' || M_EMAIL);
    DBMS_OUTPUT.PUT_LINE('SUBJECTNAME: ' || M_SUBJECTNAME);
    DBMS_OUTPUT.PUT_LINE('PHONE_NUM: ' || M_PHONE_NUM);
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
    DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/


CREATE OR REPLACE PROCEDURE TeacherDelete(
  err_code OUT INTEGER,
  m_teacherid IN TEACHER.TEACHERID%TYPE
) AS
BEGIN
  DELETE FROM TEACHER
  WHERE TEACHERID = m_teacherid;
  err_code := SQL%ROWCOUNT;
  COMMIT;
  IF err_code = 0  THEN
    DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
  ELSE
    DBMS_OUTPUT.PUT_LINE('DELETED SUCCESSFULLY');
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
    DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/



SET SERVEROUTPUT ON

-- Create the TeacherUpdate procedure
CREATE OR REPLACE PROCEDURE TeacherUpdate(
  err_code OUT INTEGER,
  m_teacherid IN TEACHER.TEACHERID%TYPE,
  m_phone_num IN TEACHER.PHONE_NUM%TYPE
) AS
BEGIN
  UPDATE TEACHER
  SET PHONE_NUM = m_phone_num
  WHERE TEACHERID = m_teacherid;
  err_code := SQL%ROWCOUNT;
  COMMIT;

  IF err_code = 0 THEN
    DBMS_OUTPUT.PUT_LINE('NOT UPDATED' || SQLERRM);
  ELSE
    DBMS_OUTPUT.PUT_LINE('UPDATED SUCCESSFULLY');
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
    DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/

