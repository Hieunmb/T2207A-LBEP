﻿insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue)
values(N'NCC001',N'Cty TNHH Toàn Pháp',N'Hai Chau','05113999888',568941),
(N'NCC002',N'Cty Cổ phần Đông Du',N'Lien Chieu',05113999889,456789),
(N'NCC003',N'Ông Nguyễn Văn A',N'Hoa Thuan',05113999890,321456),
(N'NCC004',N'Cty Cổ phần Toán Cầu Xanh',N'Hai Chau',05113658945,513364),
(N'NCC005',N'Cty TNHH AMA',N'Thanh Khe',05113875466,546546),
(N'NCC006',N'Bà Trần Thị Bích Vân',N'Lien Chieu',05113587469,524545),
(N'NCC007',N'Cty TNHH Phan Thành',N'Thanh Khe',05113987456,113021),
(N'NCC008',N'Ông Phan Đình Nam',N'Hoa Thuan',05113532456,121230),
(N'NCC009',N'Tập Đoàn Đông Nam Á',N'Lien Chieu',05113987121,533654),
(N'NCC010',N'Cty Cổ phần Rạng Đông',N'Lien Chieu',05113569654,187864);
select * from NHACUNGCAP;
insert into LOAIDICHVU(MaLoaiDV,TenLoaiDV)
values('DV01',N'Dịch vụ xe tải'),
('DV02',N'Dịch vụ xe buýt công cộng theo tuyến cố định'),
('DV03',N'Dịch vụ xe cho thuê theo hợp đồng');
select * from LOAIDICHVU
insert into MUCPHI(MaMP,DonGia,MoTa)
values('MP01',10000,N'Áp dụng từ 1/2015'),
('MP02',15000,N'Áp dụng từ 2/2015'),
('MP03',20000,N'Áp dụng từ 1/2010'),
('MP04',25000,N'Áp dụng từ 2/2011');
select * from MUCPHI
insert into DONGXE(DongXe,HangXe,SoChoNgoi)
values('Hiace','Toyota',16),
('Vios','Toyota',5),
('Escape','Ford',5),
('Cerato','KIA',7),
('Forte	','KIA',5),
('Starex','Huyndai',7),
('Grand-i10','Huyndai',7);
select * from DONGXE
insert into DANGKYCUNGCAP(MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values('DK001','NCC001','DV01','Hiace','MP01','2015-11-20','2016-11-20',4),
('DK002','NCC002','DV02','Vios','MP02','2015-11-20','2017-11-20',3),
('DK003','NCC003','DV03','Escape','MP03','2017-11-20','2018-11-20',5),
('DK004','NCC005','DV01','Cerato','MP04','2015-11-20','2017-11-20',7),
('DK005','NCC002','DV02','Forte','MP03','2019-11-20','2017-11-20',1),
('DK006','NCC004','DV03','Starex','MP04','2016-11-10','2017-11-20',2),
('DK007','NCC005','DV01','Cerato','MP03','2015-11-30','2017-11-20',8),
('DK008','NCC006','DV01','Vios','MP02','2016-02-28','2017-11-20',9),
('DK009','NCC005','DV03','Grand-i10','MP02','2016-04-27','2017-11-20',10),
('DK010','NCC006','DV01','Forte','MP02','2015-11-21','2017-11-20',4),
('DK011','NCC007','DV01','Forte','MP01','2016-12-25','2017-11-20',5),
('DK012','NCC007','DV03','Cerato','MP01','2016-04-14','2017-11-20',6),
('DK013','NCC003','DV02','Cerato','MP01','2015-12-21','2016-12-21',8),
('DK014','NCC008','DV02','Cerato','MP01','2016-05-20','2016-12-30',1),
('DK015','NCC003','DV01','Hiace','MP02','2018-04-24','2019-11-20',6),
('DK016','NCC001','DV03','Grand-i10','MP02','2016-06-22','2019-12-21',8),
('DK017','NCC002','DV03','Cerato','MP03','2016-09-30','2019-09-30',4),
('DK018','NCC008','DV03','Escape','MP04','2017-12-13','2018-09-30',2),
('DK019','NCC003','DV03','Escape','MP03','2016-01-24','2016-12-30',8),
('DK020','NCC002','DV03','Cerato','MP04','2016-03-05','2017-10-21',7),
('DK021','NCC006','DV01','Forte','MP02','2015-01-30','2016-12-30',9),
('DK022','NCC002','DV02','Cerato','MP04','2016-07-25','2017-12-30',6),
('DK023','NCC002','DV01','Forte','MP03','2017-11-30','2018-05-20',5),
('DK024','NCC003','DV03','Forte','MP04','2017-12-23','2019-11-30',8),
('DK025','NCC003','DV03','Hiace','MP02','2016-06-24','2017-10-25',1)
;
select * from DANGKYCUNGCAP
delete NHACUNGCAP
delete DONGXE
delete DANGKYCUNGCAP
delete MUCPHI
delete LOAIDICHVU