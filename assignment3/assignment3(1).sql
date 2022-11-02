insert into KhachHang3(TenKH,SoCMT,DiaChi)
values(N'Nguyễn Nguyệt Nga',123456789,N'Hà Nội')

insert into SoThueBao(SoTB,LoaiTB,NgayDK,SoCMT)
values(123456789,N'Trả trước','2002-12-12',123456789)
-- bai tap 4
select * from KhachHang3;
select * from SoThueBao;
--bai tap 5
select * from SoThueBao where SoTB=0123456789;
select * from KhachHang3 where SoCMT=123456789;
select SoTB from SoThueBao where SoCMT=123456789;
select SoTB from SoThueBao where NgayDK like '2009-12-12';
select SoTB from SoThueBao where SoCMT in(select SoCMT from KhachHang3 where DiaChi like N'Hà Nội');
--bai tap 6
select count(*) as TongSoKhachHang from KhachHang3;
select count(*) as TongSoThueBao from SoThueBao;
select count(*) as TongSoThueBaoNgayDK from SoThueBao where NgayDK like '2009-12-12' ;
select * from KhachHang3 a 
inner join SoThueBao b on a.SoCMT=b.SoCMT;