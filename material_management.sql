create database `quanlyvatlieu`;
use quanlyvatlieu;
create table NhaCC
(
    `MaNCC`  int primary key,
    `TenNCC` varchar(255) not null,
    `DiaChi` varchar(50)  not null
);
create table NCC_SDT
(
    `MaNCC` int not null,
    `SDT`   int not null,
    primary key (MaNCC, SDT)
);
create table DONDH
(
    `SoDH`   int primary key,
    `NgayDH` datetime,
    `MaNCC`  int not null,
    foreign key (MaNCC) references NCC_SDT (MaNCC)
);
create table PHIEUXUAT
(
    `SoPX`     int primary key,
    `NgayXuat` datetime not null
);
create table VATTU
(
    `MaVatTu`  int primary key,
    `TenVatTu` varchar(45)
);
create table PHIEUNHAP
(
    `SoPN`     int primary key,
    `NgayNhap` datetime
);

create table ChiTietPhieuXuat
(
    `SoPX`        int    not null,
    `MaVatTu`     int    not null,
    `DonGiaXuat`  double not null,
    `SoLuongXuat` int    not null,
    foreign key (SoPX) references PHIEUXUAT (SoPX),
    foreign key (MaVatTu) references VATTU (MaVatTu)
);
create table ChiTietPhieuNhap
(
    `SoPN`        int    not null,
    `MaVatTu`     int    not null,
    `DonGiaNhap`  double not null,
    `SoLuongNhap` int    not null,
    foreign key (SoPN) references PHIEUNHAP (SoPN),
    foreign key (MaVatTu) references VATTU (MaVatTu)
);
