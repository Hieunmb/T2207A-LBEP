create table Nguoi(
ten nvarchar(255) not null,
maso int primary key
);
create table SanPham(
maso nvarchar(50) primary key,
masonguoi int not null foreign key references Nguoi(maso),
ngaysx date not null check(ngaysx<getdate()),
);
create table LoaiSanPham(
tenloai nvarchar(255) not null,
maloai nvarchar(50) primary key,
masosp nvarchar(50) foreign key references SanPham(maso),
manguoi int not null foreign key references Nguoi(maso),
);
drop table LoaiSanPham;
drop table SanPham;
drop table Nguoi;

insert into Nguoi(ten,maso)
values(N'Nguyễn Văn An',987688)

insert into SanPham(maso,masonguoi,ngaysx)
values (N'Z37 111111',987688,'2009-12-12')

insert into LoaiSanPham(tenloai,maloai,manguoi,masosp)
values(N'Máy tính sách tay Z37',N'Z37E',987688,N'Z37 111111')
--bai tap 4
select * from LoaiSanPham;
select * from SanPham;
select * from Nguoi;
--bai tap 5
select * from LoaiSanPham order by tenloai asc;
select * from Nguoi order by ten asc;
select * from SanPham where maso in
(select masosp from LoaiSanPham where maloai like N'Z37E');
select * from SanPham where masonguoi in
(select maso from Nguoi where ten like N'Nguyễn Văn An') order by maso desc
--bai tap 6
select count(*) as sosanpham from SanPham where maso in 
(select masosp from LoaiSanPham);
select count(*) as trungbinhsanpham from LoaiSanPham;
select * from SanPham a
inner join LoaiSanPham b on a.maso=b.masosp;
select * from SanPham a
inner join LoaiSanPham b on a.maso=b.masosp
inner join Nguoi c on c.maso=a.masonguoi;
