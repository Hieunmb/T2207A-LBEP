create table NHACUNGCAP(
MaNhaCC nvarchar(20) primary key,
TenNhaCC nvarchar(255) not null,
DiaChi nvarchar(255) not null,
SoDT varchar(15) not null,
MaSoThue varchar(20) not null,
);
create table LOAIDICHVU(
MaLoaiDV nvarchar(20) primary key,
TenLoaiDV nvarchar(255) not null,
);
create table MUCPHI(
MaMP nvarchar(20) primary key,
DonGia int not null,
MoTa ntext
);
create table DONGXE(
DongXe nvarchar(20) primary key,
HangXe nvarchar(20) not null,
SoChoNgoi int not null check(SoChoNgoi>0),
);
create table DANGKYCUNGCAP(
MaDKCC nvarchar(20) primary key,
MaNhaCC nvarchar(20) foreign key references NHACUNGCAP(MaNhaCC),
MaLoaiDV nvarchar(20) foreign key references LOAIDICHVU(MaLoaiDV),
DongXe nvarchar(20) foreign key references DONGXE(DongXe),
MaMP nvarchar(20) foreign key references MUCPHI(MaMP),
NgayBatDauCungCap date not null,
NgayKetThucCungCap date not null,
SoLuongXeDangKy int not null
);
drop table DANGKYCUNGCAP;
drop table DONGXE;
drop table MUCPHI;
drop table LOAIDICHVU;
drop table NHACUNGCAP;