-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-08-23 08:58:19.34
create database QLBH
go
use QLBH
-- tables
-- Table: ChiTietDonHang
CREATE TABLE ChiTietDonHang (
    MaCTDH int  NOT NULL,
    MaDH int  NOT NULL,
    MaSP int  NOT NULL,
    SoLuong int  NOT NULL,
    CONSTRAINT ChiTietDonHang_pk PRIMARY KEY  (MaCTDH)
);

-- Table: DonHang
CREATE TABLE DonHang (
    MaDH int  NOT NULL,
    SoLuongDH char(12)  NOT NULL,
    MaKH int  NOT NULL,
    CONSTRAINT DonHang_pk PRIMARY KEY  (MaDH)
);

-- Table: KhachHang
CREATE TABLE KhachHang (
    MaKH int  NOT NULL,
    HoTenKH varchar(255)  NOT NULL,
    Email varchar(255)  NOT NULL,
    SDT int  NOT NULL,
    DiaChi nvarchar(250)  NOT NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY  (MaKH)
);

-- Table: LoaiSanPham
CREATE TABLE LoaiSanPham (
    MaLoaiSP int  NOT NULL,
    TenLoai varchar(255)  NOT NULL,
    MaNhomSP int  NULL,
    CONSTRAINT LoaiSanPham_pk PRIMARY KEY  (MaLoaiSP)
);

-- Table: SanPham
CREATE TABLE SanPham (
    MaSP int  NOT NULL,
    MaLoaiSP int  NOT NULL,
    DVTinh char(10)  NOT NULL,
    TenSP varchar(255)  NOT NULL,
    Gia decimal(12,2)  NOT NULL,
    MoTa varchar(1000)  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY  (MaSP)
);

-- foreign keys
-- Reference: client_purchase (table: DonHang)
ALTER TABLE DonHang ADD CONSTRAINT client_purchase
    FOREIGN KEY (MaKH)
    REFERENCES KhachHang (MaKH);

-- Reference: product_category_product (table: SanPham)
ALTER TABLE SanPham ADD CONSTRAINT product_category_product
    FOREIGN KEY (MaLoaiSP)
    REFERENCES LoaiSanPham (MaLoaiSP);

-- Reference: product_category_product_category (table: LoaiSanPham)
ALTER TABLE LoaiSanPham ADD CONSTRAINT product_category_product_category
    FOREIGN KEY (MaNhomSP)
    REFERENCES LoaiSanPham (MaLoaiSP);

-- Reference: product_purchase_item (table: ChiTietDonHang)
ALTER TABLE ChiTietDonHang ADD CONSTRAINT product_purchase_item
    FOREIGN KEY (MaSP)
    REFERENCES SanPham (MaSP);

-- Reference: purchase_purchase_item (table: ChiTietDonHang)
ALTER TABLE ChiTietDonHang ADD CONSTRAINT purchase_purchase_item
    FOREIGN KEY (MaDH)
    REFERENCES DonHang (MaDH);

-- End of file.


--------Chèn dữ liệu
--Insert bang KhachHang: 
select * from KhachHang
insert into KhachHang values('001','Do Ngoc Son','ngocson@gmail.com','0906668888','Dong Da HN')
insert into KhachHang values('002','Nguyen Dinh Nam', 'dinhnam@gmail.com','0905558888','Gia Lam HN')
insert into KhachHang values('003','Duong Minh Huy', 'minhhuy@gmail.com','0904448888','Ba Dinh HN')
insert into KhachHang values('004','Dam Vinh Hung', 'vinhhung@gmail.com','0903338888','Hai Ba Trung HN')
insert into KhachHang values('005','Nguyen Hoang Hai', 'hoanghai@gmail.com','0902228888','Hoan Kiem HN')

--Insert bang DonHang: 
select * from DonHang
insert into DonHang values(001, '20', 001)
insert into DonHang values(002, '30', 002)
insert into DonHang values(003, '40', 003)
insert into DonHang values(004, '50', 004)
insert into DonHang values(005, '60', 005)

--Insert bang LoaiSanPham: 
select * from LoaiSanPham
insert into LoaiSanPham values(001, 'O To Gia Dinh', 1)
insert into LoaiSanPham values(002, 'O To Thoi Trang', 1)
insert into LoaiSanPham values(003, 'O To Sport', 2)
insert into LoaiSanPham values(004, 'O To Sieu Xe', 2)
insert into LoaiSanPham values(005, 'O To Cho Khach', 3)

--Insert bang SanPham:
delete from SanPham
select * from SanPham
insert into SanPham values('001', '001','Chiec', 'Lamborghini Embolado', '9000000','Dep')
insert into SanPham values('002', '002','Chiec', 'Lamborghini Murcielago', '8000000','Dep')
insert into SanPham values('003', '003','Chiec', 'Lamborghini 2007 Gallardo Superleggera', '7000000','Dep')
insert into SanPham values('004', '004','Chiec', 'Lamborghini concept', '20000000','Dep')
insert into SanPham values('005', '005','Chiec', 'Lamborghini gallardo', '12000000','Dep')

--Insert bang ChiTietDonHang:
delete from ChiTietDonHang
select * from ChiTietDonHang
insert into ChiTietDonHang values(001,001,001,001)
insert into ChiTietDonHang values(002,002,002,002)
insert into ChiTietDonHang values(003,003,003,003)
insert into ChiTietDonHang values(004,004,004,004)
insert into ChiTietDonHang values(005,005,005,005)


