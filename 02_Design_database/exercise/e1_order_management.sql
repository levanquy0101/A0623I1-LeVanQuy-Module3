-- Tạo cơ sở dữ liệu
create database order_management;
use order_management;

-- Tạo bảng number_phone
create table number_phone (
    numphone varchar(30) primary key
);

-- Tạo bảng nha_cc
create table nha_cc (
    MaNCC int primary key unique,
    TenNCC varchar(100),
    Diachi varchar(100),
    SDT varchar(30),
    foreign key (SDT) references number_phone(numphone)
);

-- Tạo bảng vat_tu
create table vat_tu (
    MaVTU int primary key,
    TenVTU varchar(50)
);

-- Tạo bảng don_dh với MaNCC làm khóa ngoại
create table don_dh (
    SoDH int primary key,
    NgayDH date,
    MaNCC int,
    foreign key (MaNCC) references nha_cc(MaNCC)
);

-- Tạo bảng phieu_xuat
create table phieu_xuat (
    SoPX int primary key,
    NgayXuat date
);

-- Tạo bảng phieu_nhap
create table phieu_nhap (
    SoPN int primary key,
    NgayNhap date
);

-- Tạo bảng chi_tiet_phieu_xuat
create table chi_tiet_phieu_xuat (
    phieuxuat int,
    vattu int,
    DGXuat varchar(100),
    SLXuat varchar(100),
    primary key(phieuxuat, vattu),
    foreign key (phieuxuat) references phieu_xuat(SoPX),
    foreign key (vattu) references vat_tu(MaVTU)
);

-- Tạo bảng chi_tiet_phieu_nhap
create table chi_tiet_phieu_nhap (
    phieunhap int,
    vattu int,
    DGNhap varchar(100),
    SLNhap varchar(100),
    primary key(phieunhap, vattu),
    foreign key (phieunhap) references phieu_nhap(SoPN),
    foreign key (vattu) references vat_tu(MaVTU)
);

-- Tạo bảng chi_tiet_donDH
create table chi_tiet_donDH (
    vattu int,
    dondh int,
    primary key (vattu, dondh),
    foreign key (vattu) references vat_tu(MaVTU),
    foreign key (dondh) references don_dh(SoDH)
);
