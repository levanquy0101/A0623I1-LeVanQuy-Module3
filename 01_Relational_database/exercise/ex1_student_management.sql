create database student_management;
use student_management;
create table class(
	id int,
    name varchar(100),
    primary key(id)
);
create table teacher(
	id int,
    name varchar(100),
    age int,
    country varchar(100),
    primary key(id)
);