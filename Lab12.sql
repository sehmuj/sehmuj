--Sherish Mujtaba
SELECT CONCAT(course_name, ' - ', semester) AS course_details
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses
--WHERE lab_day = 'Friday'; colum does not exist
  
SELECT id, title, due_date
FROM assignments
WHERE due_date > CURRENT_DATE;

SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

SELECT course_id, course_name, LENGTH(course_name) AS name_length
FROM courses
ORDER BY name_length DESC
LIMIT 1;

SELECT UPPER(course_name) AS course_name_uppercase
FROM courses;

SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

SELECT id, title, course_id
FROM assignments
WHERE due_date IS NULL;
