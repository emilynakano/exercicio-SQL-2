
--1)
SELECT COUNT("endDate") FROM experiences;
--2)
SELECT "userId" AS id, COUNT(id) AS educations FROM educations GROUP BY "userId";
--3)
SELECT users.name AS writer, COUNT(testimonials.id) AS testimonials FROM testimonials JOIN users ON testimonials."writerId"=users.id AND testimonials."writerId"=435 GROUP BY writer;
--4)
SELECT MAX(salary) AS "maximumSalary", roles.name AS role FROM jobs JOIN roles ON jobs."roleId"=roles.id AND jobs.active=true GROUP BY role ORDER BY "maximumSalary" ASC;

--BONUS
SELECT schools.name AS school, courses.name AS course, COUNT(*) AS "studentsCount", educations.status AS role FROM educations JOIN courses ON educations."courseId"=courses.id JOIN schools ON educations."schoolId"=schools.id WHERE educations.status='ongoing' OR educations.status='finished' GROUP BY school, course, educations.status ORDER BY "studentsCount" DESC LIMIT 3;

