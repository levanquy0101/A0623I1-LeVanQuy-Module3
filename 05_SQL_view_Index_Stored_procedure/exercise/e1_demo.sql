-- Bước 1: Tạp cơ sở dữ liệu
create database demo;
use demo;

-- Bước 2: Tạo bảng và chèn dữ liệu
create table Products(
Id int auto_increment,
productCode varchar(20) unique,
productName varchar(50),
productPrice double,
productAmount int,
productDescription varchar(100),
productStatus int,
primary key (Id)
);
insert into Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
values 
('P001', 'Product 1', 19.99, 100, 'Description 1', 1),
('P002', 'Product 2', 29.99, 50, 'Description 2', 1),
('P003', 'Product 3', 39.99, 75, 'Description 3', 0);

-- Bước 3:
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
-- So sánh câu truy vấn trước và sau khi tạo index

-- Bước 4:
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
-- Tiến hành sửa đổi view
-- Tiến hành xoá view
create view productinfo as
select productCode, productName, productPrice, productStatus
from products;
create or replace view productinfo as
select productCode, productName, productPrice, productStatus
from products
where productStatus = true;
drop view if exists productinfo;

-- Bước 5:
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
-- Tạo store procedure thêm một sản phẩm mới
-- Tạo store procedure sửa thông tin sản phẩm theo id
-- Tạo store procedure xoá sản phẩm theo id
