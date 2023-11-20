CREATE TABLE IF NOT EXISTS Homework
(
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
	name varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS Lesson
(
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
	name varchar(255) NOT NULL,
	updatedAt varchar(255) NOT NULL,
	homework_id bigint NOT NULL REFERENCES Homework(id) UNIQUE,
	PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS Schedule
(
	id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
	name varchar(255) NOT NULL,
	updatedAt varchar(255) NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS Lesson_schedule
(
	lesson_id bigint NOT NULL REFERENCES Lesson(id),
	schedule_id bigint NOT NULL REFERENCES Schedule(id)
);