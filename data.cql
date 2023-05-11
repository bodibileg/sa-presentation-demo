-- describe keyspaces
desc keyspaces;

-- describe test keyspace
desc test;

-- use test keyspace
use test;


-- desc tables
desc tables;

-- create table
create table if NOT EXISTS students(id int, name text, gpa double, country text, primary key(id));

-- desc students will show structure of it
desc students;

-- drop table
drop table students;

-- insert a student
insert into students (id, name, gpa, country) values(1, 'bodibileg', 4.0, 'Mongolia');

-- select students
select * from students;

--update a student
update students set country = 'USA' where id = 1;

--delete a student
delete students where id = 1;

-- insert a student with time to live
insert into students (id, name, gpa, country) values(2, 'bodi', 4.0, 'Mongolia') USING TTL 60;

-- select time remaining for a student
select TTL(country) from test.students where id=2;