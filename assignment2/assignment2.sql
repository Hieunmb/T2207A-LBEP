create table Hang(
MaSoHang nvarchar(25) primary key,
TenHang nvarchar(255) not null,
DiaChi nvarchar(255) not null,
DienThoai int not null,
);
create table SanPham(
TenSanPham nvarchar(255) not null,
Mota nvarchar(255) not null,
DonVi nvarchar(50) not null,
Gia int not null,
SoLuong int not null,
id int primary key identity(1,1),
MaSoHang nvarchar(25) foreign key references Hang(MaSoHang),
);
drop table SanPham;
drop table Hang;