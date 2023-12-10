create database QuanLySinhVien;
use QuanLySinhVien;
create table Class(
ClassID int not null primary key auto_increment,
ClassName varchar(60) not null,
StartDate datetime not null,
Statuss bit
);
create table Student(
StudentID int not null primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(30),
Statuss bit,
ClassID int not null,
foreign key (ClassID) references Class(ClassID)
);
create table Subjects(
SubID int not null primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default 1 check (Credit >=1),
Statuss bit default 1
);
create table Mark(
MarkID int not null primary key auto_increment,
SubID int not null,
StudentID int not null,
Mark float default 0 check (Mark between 0 and 100),
Examtimes tinyint default 1,
unique(SubID, StudentID),
foreign key (SubID) references Subjects(SubID),
foreign key (StudentID) references Student(StudentID)
);
