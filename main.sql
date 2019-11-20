CREATE DATABASE student_examination_sys;
CREATE TABLE student_examination_sys.STUDENT (
  id INT(3) ZEROFILL, 
  name VARCHAR(100), 
  age INT, 
  sex VARCHAR(6),
  PRIMARY KEY (id)
);
CREATE TABLE student_examination_sys.SUBJECT (
  id INT, 
  subject VARCHAR(100), 
  teacher VARCHAR(100), 
  description VARCHAR(500),
  PRIMARY KEY (id)
);
CREATE TABLE student_examination_sys.SCORE (
  id INT, 
  student_id INT(3) ZEROFILL, 
  subject_id INT, 
  score DOUBLE,
  PRIMARY KEY (id),
  FOREIGN KEY (student_id)
    REFERENCES STUDENT(id),
  FOREIGN KEY (subject_id)
    REFERENCES SUBJECT(id)
);

INSERT INTO student_examination_sys.STUDENT (id, name, age, sex)
  VALUES (1, 'zhangsan', 18, 'male');

INSERT INTO student_examination_sys.STUDENT (id, name, age, sex)
  VALUES (2, 'lisi', 20, 'female');

INSERT INTO student_examination_sys.SUBJECT (id, subject, teacher, description)
  VALUES (1001, 'Chinese', 'Mr. Wang', 'the exam is easy');

INSERT INTO student_examination_sys.SUBJECT (id, subject, teacher, description)
  VALUES (1002, 'math', 'Miss Liu', 'the exam is difficult');

INSERT INTO student_examination_sys.SCORE (id, student_id, subject_id, score)
  VALUES (1, 001, 1001, 80);

INSERT INTO student_examination_sys.SCORE (id, student_id, subject_id, score)
  VALUES (2, 002, 1002, 60);

INSERT INTO student_examination_sys.SCORE (id, student_id, subject_id, score)
  VALUES (3, 001, 1001, 70);

INSERT INTO student_examination_sys.SCORE (id, student_id, subject_id, score)
  VALUES (4, 002, 1002, 60.5);
