
/*STUDENT TABLE*/
CREATE OR REPLACE PROCEDURE StudentSelect(
  m_studentid IN STUDENT.STUDENTID%TYPE
) AS
  v_count NUMBER;
  v_row STUDENT%ROWTYPE;
BEGIN
  SELECT COUNT(*) INTO v_count
  FROM STUDENT
  WHERE STUDENTID = m_studentid;

  IF v_count > 0 THEN
    DBMS_OUTPUT.PUT_LINE('STUDENT ID EXISTS');
    
    -- Fetch the row data into v_row
    SELECT *
    INTO v_row
    FROM STUDENT
    WHERE STUDENTID = m_studentid;

  
    DBMS_OUTPUT.PUT_LINE(
      'STUDENTID: ' || v_row.STUDENTID || ', ' ||
      'FIRSTNAME: ' || v_row.FIRSTNAME || ', ' ||
      'LASTNAME: ' || v_row.LASTNAME || ', ' ||
      'EMAIL: ' || v_row.EMAIL || ', ' ||
      'GRADE: ' || v_row.GRADE || ', ' ||
      'SECTION: ' || v_row.SECTION || ', ' ||
      'SUBJECTNAME: ' || v_row.SUBJECTNAME
    );
  ELSE
    DBMS_OUTPUT.PUT_LINE('STUDENT ID DOES NOT EXIST');
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('ERROR OCCURRED: ' || SQLERRM);
END;
/
SET SERVEROUTPUT ON

BEGIN
  StudentSelect(10);
END;









-- Create the StudentInsert procedure
CREATE OR REPLACE PROCEDURE StudentInsert(
  err_code OUT INTEGER,
  M_STUDENTID IN STUDENT.STUDENTID%TYPE,
  M_FIRSTNAME IN STUDENT.FIRSTNAME%TYPE,
  M_LASTNAME IN STUDENT.LASTNAME%TYPE,
  M_EMAIL IN STUDENT.EMAIL%TYPE,
  M_GRADE IN STUDENT.GRADE%TYPE,
  M_SECTION IN STUDENT.SECTION%TYPE,
  M_SUBJECTNAME IN STUDENT.SUBJECTNAME%TYPE
) AS
BEGIN
  INSERT INTO STUDENT (STUDENTID, FIRSTNAME, LASTNAME, EMAIL, GRADE, SECTION, SUBJECTNAME)
  VALUES (M_STUDENTID, M_FIRSTNAME, M_LASTNAME, M_EMAIL, M_GRADE, M_SECTION, M_SUBJECTNAME);

  COMMIT;
  err_code := SQL%ROWCOUNT;

 
  IF err_code = 0 THEN
    DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
  ELSE
  
    DBMS_OUTPUT.PUT_LINE('Data Inserted:');
    DBMS_OUTPUT.PUT_LINE('STUDENTID: ' || M_STUDENTID);
    DBMS_OUTPUT.PUT_LINE('FIRSTNAME: ' || M_FIRSTNAME);
    DBMS_OUTPUT.PUT_LINE('LASTNAME: ' || M_LASTNAME);
    DBMS_OUTPUT.PUT_LINE('EMAIL: ' || M_EMAIL);
    DBMS_OUTPUT.PUT_LINE('GRADE: ' || M_GRADE);
    DBMS_OUTPUT.PUT_LINE('SECTION: ' || M_SECTION);
    DBMS_OUTPUT.PUT_LINE('SUBJECTNAME: ' || M_SUBJECTNAME);
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
    DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/

DECLARE
  err_code INTEGER;
BEGIN
  StudentInsert(
    err_code,
    401,        
    'harsh',       
    'patel',        
    'hpatel.doe@example.com',  
    'A',          
    1,            
    'Math'        
  );
END;
/








-- Create the StudentDelete procedure
CREATE OR REPLACE PROCEDURE StudentDelete(
  err_code OUT INTEGER,
  M_STUDENTID IN STUDENT.STUDENTID%TYPE
) AS
BEGIN
  DELETE FROM STUDENT
  WHERE STUDENTID = M_STUDENTID;
  err_code := SQL%ROWCOUNT;
  COMMIT;
  IF err_code = 0 THEN
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


DECLARE
  err_code INTEGER;
BEGIN
  StudentDelete(err_code, 401);
END;
/

















-- Enable DBMS_OUTPUT to see the procedure's output
SET SERVEROUTPUT ON;

-- Create the StudentUpdate procedure to update
CREATE OR REPLACE PROCEDURE StudentUpdateSection(
  err_code OUT INTEGER,
  m_studentid IN STUDENT.STUDENTID%TYPE,
  m_section IN STUDENT.SECTION%TYPE
) AS
BEGIN
  UPDATE STUDENT
  SET SECTION = m_section
  WHERE STUDENTID = m_studentid;
  err_code := SQL%ROWCOUNT;
  COMMIT;

  IF err_code = 0 THEN
    DBMS_OUTPUT.PUT_LINE('NOT UPDATED' || SQLERRM);
  ELSE
    DBMS_OUTPUT.PUT_LINE('SECTION UPDATED SUCCESSFULLY');
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    err_code := -1;
    DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/

DECLARE
  err_code INTEGER;
BEGIN
  StudentUpdateSection(err_code, 5, 8); 
END;
/
