SELECT cassandra_students.student_id, cassandra_students.academic_year , cassandra_students.class_id , cassandra_students.current_level , cassandra_modules.level, 
cassandra_modules.module_description, cassandra_modules.module_name
FROM cassandra_students
Left JOIN cassandra_modules ON cassandra_students.id=cassandra_modules.id





SELECT   cassandra_students.student_id 'student', cassandra_module.id AS 'name'
FROM     department d
  LEFT JOIN people p ON p.department_id = d.id

ORDER BY department



CREATE TABLE module_student (
ID int NOT NULL PRIMARY KEY,

    LastName varchar(255) NOT NULL,

    FirstName varchar(255),

    Age int

);





SELECT cassandra_modules.id,  cassandra_modules.level, cassandra_modules.module_description, cassandra_modules.module_name, cassandra_students.*

FROM cassandra_modules

inner JOIN cassandra_students

ON cassandra_modules.id = cassandra_students.id



SELECT cassandra_test_report.student_id,  cassandra_test_report.accuracy_rating,cassandra_test_report.effort_rating, cassandra_students.*

FROM cassandra_test_report

Inner JOIN cassandra_students

ON cassandra_test_report.student_id = cassandra_students.student_id





SELECT cassandra_schools.school_id, cassandra_schools.growth_rate ,cassandra_schools.state, cassandra_classes_by_school.*
FROM cassandra_schools
Inner JOIN cassandra_classes_by_school
ON cassandra_schools.school_id = cassandra_schools.school_id



/*connecting classes by school to students data*/

SELECT cassandra_classes_by_school.*, cassandra_students.*
FROM cassandra_classes_by_school
Inner JOIN cassandra_students
ON cassandra_classes_by_school.class_id = cassandra_students.class_id



/**/

SELECT cassandra_schools.*, cassandra_teachers_by_school.*
FROM cassandra_schools
Inner JOIN cassandra_teachers_by_school
ON cassandra_schools.school_id = cassandra_teachers_by_school.school_id





/*just testing to see if it possible to merge three tables at the same time */

SELECT cassandra_event_log_diagnostic.* , cassandra_students.*, cassandra_diagnostic_status.*
FROM cassandra_event_log_diagnostic
INNER JOIN (cassandra_students INNER JOIN cassandra_diagnostic_status
ON cassandra_students.student_ID=cassandra_diagnostic_status.student_ID)
ON cassandra_event_log_diagnostic.student_ID = cassandra_students.student_ID





/**/

SELECT cassandra_modules



/*tried the below code to isolate only some columns of a table*/

DROP TABLE module_status
DROP TABLE module_mastered



CREATE TABLE module_mastered AS
SELECT cassandra_student_module_mastered.student_id FROM cassandra_student_module_mastered


CREATE TABLE module_status_v4 AS 
SELECT  cassandra_student_module_status.student_id FROM cassandra_student_module_status

/*Result: would only give me student_id and wouldn't add other columns - not sure why*/





/*trying to see if joins will work*/

SELECT cassandra_student_module_status.student_id,  cassandra_student_module_status.class_id,  cassandra_student_module_status.completed, cassandra_students.*
FROM cassandra_student_module_status
INNER JOIN cassandra_students
ON cassandra_student_module_status.student_id = cassandra_students.student.id

