insert into KhachHang(ten,diachi,dienthoai)
values(N'Nguyễn Văn An',N'111 Nguyễn Trãi, Thanh Xuân,Hà Nội','0987654321')--kiểu dữ liệu number ko cần nháy đơn
select * from KhachHang;
insert into DanhSachHang(tenhang,donvi,mota,gia,soluong)
values(N'Máy tính T450',N'Chiếc',N'Máy nhập mới',1000,1);
insert into DanhSachHang(tenhang,donvi,mota,gia,soluong)
values(N'Điện thoại Nokia5670',N'Chiếc',N'Điện thoại đang hot',200,2),
(N'Máy in Samsung 450',N'Chiếc',N'Máy in đang ế',100,1);
select * from DanhSachHang;
insert into DonHang(ma,ngaydat,tongtien,dienthoai)
values('123','2022-10-25',1500,'0987654321');
select * from DonHang
insert into DonHang_DanhSachHang(ma,soluong,thanhtien)
values('123',1,1000),
('123',2,400),
('123',1,100);
select * from DonHang_DanhSachHang
update DanhSachHang set gia=150 where id=4;
update DanhSachHang set gia=gia+50 where id=2;
update DanhSachHang set gia=gia+50,mota=N'Máy xịn mới nhập' where id=3;
update DanhSachHang set gia=gia+50 where gia<1000;
delete from DanhSachHang where id=3;
select * from DanhSachHang;
select tenhang as productName,donvi as unit,gia as price from DanhSachHang;
--loc
select * from DanhSachHang where gia>200 and gia<1000;
select * from DanhSachHang where gia>200 or donvi like N'Chiec';
select * from DanhSachHang where id=1 or id=3 or id=5 or id=6;
select * from DanhSachHang where id in(1,3,5,6,7,8,9);
--tim kiem
select * from DanhSachHang where tenhang like 'Máy%';-- start of Máy
select * from DanhSachHang where tenhang like '%T450';-- end of mới
select * from DanhSachHang where tenhang like '%t%';--contain
--sap xep
select * from DanhSachHang order by gia desc;-- sap xep tu cao den thap
select * from DanhSachHang order by gia asc;-- sap xep tu thap den cao
-- lay theo so luong
select top 1 * from DanhSachHang order by gia desc;
select top 40 percent * from DanhSachHang order by gia desc;
select top 1 * from DonHang order by tongtien desc;
--thong ke
select count(*) from DonHang;
select count(*) from DanhSachHang;

select sum(tongtien) as doanhthu from DonHang;
select avg(tongtien) as trungbinh from DonHang;
select * from DonHang;
--thong ke dang nhom
select avg(tongtien) as trungbinh, count(*) as soluong, dienthoai from DonHang group by dienthoai;
--bai tap
select * from KhachHang order by ten asc;
select * from DanhSachHang order by gia desc;
select * from DanhSachHang;
select count(*) as soluongkhachhang from KhachHang;
select count(*) as somathang from DanhSachHang;
select sum(tongtien) as tongtienhang from DonHang;
