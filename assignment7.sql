create table BoPhan(
   MaBoPhan nvarchar(20) primary key not null,
   TenBoPhan nvarchar(255) not null,
);
create table NhanVien(
   ChucVu nvarchar(255) not null,
   TenNhanVien nvarchar(255) not null,
   DiaChi nvarchar(255) not null,
   MucLuong decimal(12,4) not null check(MucLuong>=0),
   SDT int primary key not null,
   NgaySinh date not null,
   BangCap text not null,
   MaBoPhan nvarchar(20) foreign key references BoPhan(MaBoPhan) not null
);
create table ThietBiSuDung(
   SoLuong int not null check(SoLuong>=0),
   TenThietBi varchar(20) not null,
   MaThietBi varchar(20) primary key not null,
);
create table NhanVien_ThietBiSuDung(
   SDT int foreign key references NhanVien(SDT) not null,
   MaThietBi varchar(20) foreign key references ThietBiSuDung(MaThietBi) not null,
);
drop table NhanVien_ThietBiSuDung;
drop table ThietBiSuDung;
drop table NhanVien;
drop table BoPhan;