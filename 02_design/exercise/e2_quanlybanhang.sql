create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int primary key,
cName varchar(100),
cAge int
);
create table Orders(
oID int primary key,
oDate date,
oTotalPrice double,
cID int,
foreign key (cID) references Customer(cID)
);
create table Product(
pID int primary key,
pName varchar(100),
pPrice double
);
create table OrderDetail(
oID int,
pID int,
odQTY varchar(100),
primary key(oID, pID),
foreign key (oID) references Orders(oID),
foreign key (pID) references Product(pID)
);