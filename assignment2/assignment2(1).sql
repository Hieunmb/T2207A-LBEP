insert into Hang(MaSoHang,TenHang,DiaChi,DienThoai)
values(123,'Asus','USA',983232)
select * from Hang;
insert into SanPham(TenSanPham,Mota,DonVi,Gia,SoLuong,MaSoHang)
values(N'Máy Tính T450',N'Máy nhập cũ',N'Chiếc',1000,10,123),
(N'Điện thoại Nokia5670',N'Điện thoại đang hot',N'Chiếc',200,200,123),
(N'Máy In Samsung 450',N'Máy in đang loại bình',N'Chiếc',100,10,123);
select * from SanPham;
select * from Hang order by TenHang desc;
select * from SanPham order by Gia desc;
select * from Hang where TenHang like N'Asus';
select * from SanPham where SoLuong<11; 
select * from SanPham where MaSoHang=123;
select count(*) as SoHang from Hang;
select count(*) as SoSanPham from SanPham;
select count(*) as SoSanPham from SanPham where MaSoHang=123;
select top 1 * from SanPham order by TenSanPham asc;