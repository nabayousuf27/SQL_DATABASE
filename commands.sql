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

create database  IF NOT EXISTS college;
create database  IF NOT EXISTS university;
drop database IF EXISTS university; 
show databases;
show tables;
-- table queries 
-- creating user table
create database if not exists instagram ;
use instagram;
create table user(
id int primary key,
name varchar(50),
email varchar(50),
followers int ,
following int 
);
INSERT INTO user
values
(1, "Naba" ,"nabay0519@gmaail.com",999 , 50),
(2, "Mishaal" ,"Mishaal0519@gmaail.com",800 , 10),
(3, "laiba" ,"laiba0519@gmaail.com",700 , 40);
SHOW tables;
SELECT * FROM user;

-- constrains
-- NOT NULL , UNIQUE ,  DEFAULT , CHECK
-- Creating Table With Constrain

create table user2(
id int PRIMARY KEY ,
age int,
namme varchar(50) NOT NULL,
email varchar(50) unique,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK(age >= 13)
);
SELECT * FROM user2;
INSERT INTO user2
(id ,age , namme, email, followers,following)
VALUES
(1, 13,"naba" ,"naba@gmail.com",110,30),
(2, 16,"mishaal" ,"mishaal@gmail.com",160,70),
(3, 16,"laiba" ,"laiba@gmail.com",100,90);
delete from user2;



