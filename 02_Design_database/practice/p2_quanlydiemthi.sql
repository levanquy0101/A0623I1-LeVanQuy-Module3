create database quanlydiemthi;
use quanlydiemthi;

create table hocsinh (
    mahs int primary key,
    tenhs varchar(255),
    ngaysinh date,
    lop varchar(10),
    gt char(1)
);
create table giaovien (
    magv int primary key,
    tengv varchar(255),
    sdt varchar(20)
);
create table monhoc (
    mamh int primary key,
    tenmh varchar(255),
    magv int,
    foreign key (magv) references giaovien(magv)
);
create table bangdiem (
    mahs int,
    mamh int,
    diemthi float,
    ngaykt date,
    primary key (mahs, mamh),
    foreign key (mahs) references hocsinh(mahs),
    foreign key (mamh) references monhoc(mamh)
);
