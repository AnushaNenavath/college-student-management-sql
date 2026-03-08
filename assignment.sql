--  College Student Management Database

-- Create a database named college_db
create database college_db ;

-- Task 2 : Use the created database. 
use college_db;


show databases;

     -- Task 3: Create a table named students with the following columns: 
create table students(
student_id INT,
name VARCHAR(50),
age INT,
city VARCHAR(50),
course VARCHAR(50)
);

        -- Task4 : Create a table named trainers
create table trainers(
trainer_id  INT,
trainer_name VARCHAR(50),
subject VARCHAR(50),
experience INT 
);

-- Task 5 :Display the structure of the students table. 
       describe students;   

-- Task 6 :Add a new column email to the students table. 
         alter table students add column email VARCHAR(50);

-- Task 7 : the column city to increase the size to VARCHAR(100) 
      alter table students modify city VARCHAR(100);

-- Task 8 :Rename the column course to course_name.
       alter table students rename column course to course_name;

-- Task 9 : Delete the column email from the students table.
         alter table students drop column email;

-- Task 10 :Delete the column email from the students table.
                  drop table  trainers;


                           -- DML

-- Task 11 
-- Insert 5 student records into the students table. 
-- Example: 
-- student_id name age city course_name 
insert into students values (1,'anusha',23,'hyderabad','java full stack'),(2,'Asha',21,'Kerala','data analyst'),(3,'mahi',24,'Andra Pradesh','java'),(4,'samar',27,'Madya Pradesh','python'),(5,'subidhi',29,'bihar','frontEnd');

-- Task 12 :Insert 3 more students into the table.
insert into students values(6,'ashu',30,'Odisa','java full satck');
insert into students values(7,'sagar',36,'jharkand','python');
insert into students values(8,'supriya',27,'karnataka','java');

-- Task 13 : Update the city of one student. 
-- Example: Change city from Hyderabad to Chennai. 
set sql_safe_updates = 0;

update students  set city = 'chennai'where city = 'hyderabad';

-- Task 14 :Update the course_name of a student. 

update students set course_name  = 'python full stack' where course_name = 'data analyst';

-- Task 15 : Increase the age of a student by 1 year. 

-- Task 15: Increase the age of a student by 1 year.
UPDATE students SET age = age + 1 WHERE student_id = 1;

-- Task 16 : Delete a student whose student_id = 3 
delete from students where student_id = 3;

-- Task 17 : Delete all students whose city = 'delhi' 
delete from students where city = 'delhi';

-- Task 18 : Display all students from the table.
select* from students;

-- Task 19 : Display only name and city of students.
select name,city from students;

-- Task 20: Display students whose age is greater than 21.
select * from students where age>21;

-- Task 21: Display students whose city is 'Hyderabad'. 
select* from students where city = 'hyderabad';

-- Task 22 : Display students whose course_name is 'Java Full Stack'.
select * from students where course_name = 'java full stack';

-- Task 23:Display students whose age is less than 23.
select * from students where age<23;

SELECT * FROM students WHERE city != 'Chennai';
-- Task 24: Display students whose age is between 20 and 25. 
select * from students where  age between 20 and 25;

-- Task 25 : Display students whose name starts with 'A'.
select * from students where name like 'A%';

-- Task 26:Display students whose name ends with 'n'. 
select * from students where name like'%n';

-- Task 28 :Display students whose name contains 'ra'.
select* from students

Select * FROM students WHERE name LIKE '%ra%';
-- Task 29 :Display students sorted by age (ascending). 
select * from students order by age asc;

-- Task 30: Display students sorted by name (descending).

select* from students ;

