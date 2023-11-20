SELECT * FROM Homework;

SELECT Lesson.name AS lesson_name, Lesson.updatedat, Homework.name AS hw_name, Homework.description 
FROM Lesson JOIN Homework ON Lesson.homework_id = Homework.id;

SELECT Lesson.name AS lesson_name, Lesson.updatedat, Homework.name AS hw_name, Homework.description 
FROM Lesson JOIN Homework ON Lesson.homework_id = Homework.id ORDER BY Lesson.updatedat;

SELECT Schedule.name AS sch_name, Schedule.updatedat, Lesson.name AS l_name, Lesson.updatedat
FROM Schedule 
JOIN Lesson_schedule ON Schedule.id = Lesson_schedule.schedule_id
JOIN Lesson ON Lesson_schedule.lesson_id = Lesson.id
ORDER By Schedule.id;

SELECT Schedule.name AS sch_name, count(Lesson.name) AS amount_lessons
FROM Schedule 
JOIN Lesson_schedule ON Schedule.id = Lesson_schedule.schedule_id
JOIN Lesson ON Lesson_schedule.lesson_id = Lesson.id
GROUP BY Schedule.name;