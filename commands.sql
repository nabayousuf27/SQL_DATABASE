create database college;
create database xyz_company;
drop database xyz_company;
use college;
create table student(
name varchar(50) ,
roll_number int primary key,
subjects varchar(50)
);
Insert into student  
values
("naba" , 231020 , "computer");
select * from student;
