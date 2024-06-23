DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects (
    id                  serial PRIMARY KEY,
    title               varchar(15),
    difficulty_level    integer,
    description         varchar(255)
);

DROP TABLE IF EXISTS instructors;
CREATE TABLE instructors (
    id                  serial PRIMARY KEY,
    first_name          varchar(25) NOT NULL,
    last_name           varchar(25) NOT NULL,
    age                 integer,
    description         varchar(255)
);

INSERT INTO instructors (id, first_name, last_name, age, description) VALUES
(1, 'John', 'Doe', 35, 'Experienced instructor with a passion for teaching the magical arts of coding.'),
(2, 'Jane', 'Smith', 28, 'Friendly and knowledgeable educator specializing in the mystical world of technology.'),
(3, 'Michael', 'Johnson', 40, 'Enthusiastic teacher with expertise in the ancient scrolls of mathematics.'),
(4, 'Emily', 'Anderson', 32, 'Inspiring and dedicated instructor focusing on the mystical secrets of science education.'),
(5, 'Robert', 'Brown', 45, 'Experienced professional in the enchanted realms of arts and literature education.'),
(6, 'Olivia', 'Miller', 29, 'Energetic and creative instructor with a background in the melodic spells of music.'),
(7, 'David', 'Taylor', 38, 'Passionate about history and making it interesting for students weaving tales of the past like a magical bard.'),
(8, 'Sophia', 'Clark', 31, 'Innovative educator dedicated to fostering critical thinking skills guiding students like a wise wizard.'),
(9, 'Daniel', 'White', 36, 'Dynamic instructor with a focus on physical education shaping aspiring wizards for the challenges ahead.'),
(10, 'Ava', 'Martin', 27, 'Focused on language arts and effective communication skills imparting the magical art of expression.');


INSERT INTO subjects (id, title, difficulty_level, description) VALUES
(1, 'Python', 3, 'High-level programming language known for its readability and versatility.'),
(2, 'Javascript', 2, 'Scripting language commonly used for web development.'),
(3, 'OOP', 4, 'Object-Oriented Programming paradigm for structuring code.'),
(4, 'Data Structures', 3, 'Study of organizing and storing data for efficient retrieval and manipulation.'),
(5, 'HTML', 1, 'Markup language used for creating the structure of web pages.'),
(6, 'CSS', 2, 'Style sheet language for enhancing the presentation of web pages.'),
(7, 'React', 3, 'JavaScript library for building user interfaces, particularly for single-page applications.'),
(8, 'SQL', 3, 'Structured Query Language for managing and manipulating relational databases.'),
(9, 'Django', 4, 'High-level Python web framework for rapid development and clean, pragmatic design.'),
(10, 'Flask', 2, 'Lightweight web framework in Python for building web applications.'),
(11, 'PostgreSQL', 3, 'Powerful open-source relational database management system.'),
(12, 'AWS EC2', 4, 'Elastic Compute Cloud for scalable and resizable compute capacity.'),
(13, 'Route53', 2, 'Amazons scalable and highly available Domain Name System (DNS) web service.');
