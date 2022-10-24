create table KhachHang(
   ten nvarchar(100) not null,
   diachi ntext not null,
   dienthoai varchar(15) primary key
);
create table DanhSachHang(
   tenhang nvarchar(255) not null,
   donvi nvarchar(255) not null,
   mota nvarchar(255),
   gia nvarchar(255) not null check(gia>=0) default 0,
   soluong integer not null,
   id integer primary key identity(1,1)
);
create table DonHang(
   ma varchar(20) primary key,
   ngaydat date not null check(ngaydat>= getdate()) default getdate(),
   tongtien decimal(12,4) not null check(tongtien>=0),
   dienthoai varchar(15) not null foreign key references KhachHang(dienthoai)
);
create table DonHang_DanhSachHang(
   ma varchar(20) not null foreign key references DonHang(ma),
   id integer not null foreign key references DanhSachHang(id),
   soluong integer not null check(soluong>0),
   thanhtien decimal(12,4) check(thanhtien>=0) not null
);
drop table DonHang_DanhSachHang;
drop table DonHang;
drop table DanhSachHang;
drop table KhachHang;
