create table KhachHang3(
TenKH nvarchar(255) not null,
SoCMT int primary key,
DiaChi nvarchar(255) not null,
);
create table SoThueBao(
SoTB int primary key,
LoaiTB nvarchar(50) not null,
SoCMT int foreign key references KhachHang3(SoCMT),
NgayDK date not null check(NgayDK<getdate()),
);
drop table SoThueBao;
drop table KhachHang3;