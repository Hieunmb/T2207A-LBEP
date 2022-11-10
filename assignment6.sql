create table NhaXuatBan(
NXB nvarchar(50) not null,
DiaChi nvarchar(255) not null,
id int identity(1,1) primary key
);
create table TacGia(
Ten nvarchar(100) not null,
id int identity(1,1) primary key
);
create table LoaiSach(
Ten nvarchar(100) not null,
id int identity(1,1) primary key
);
create table Sach(
MaSach nvarchar(50) primary key,
TenSach nvarchar(255) not null,
NamXB int not null,
LanXuatBan int not null,
TomTat nvarchar(255) not null,
idtg int foreign key references TacGia(id),
idls int foreign key references LoaiSach(id),
idnxb int foreign key references NhaXuatBan(id),
GiaBan int not null,
SoLuong int not null
);
create procedure proc_nxb @nxb nvarchar(50),@dc nvarchar(255) as
insert into NhaXuatBan(NXB,DiaChi)
values(@nxb,@dc)
select * from NhaXuatBan;

exec proc_nxb @nxb=N'Tri Thức',@dc=N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội';

create procedure proc_tg @t nvarchar(100) as
insert into TacGia(Ten)
values(@t);
select * from TacGia;

exec proc_tg @t=N'Eran Katz';

create procedure proc_ls @t nvarchar(100) as
insert into LoaiSach(Ten)
values(@t);
select * from LoaiSach;

exec proc_ls @t=N'Khoa học xã hội';

create procedure proc_s @ms nvarchar(50),@ts nvarchar(255),@nxb int,
@lxb int,@tt nvarchar(255),@idtg int,@idls int,@idnxb int,@gb int,@sl int as
insert into Sach(MaSach,TenSach,NamXB,LanXuatBan,TomTat,idtg,idls,idnxb,GiaBan,SoLuong)
values(@ms,@ts,@nxb,@lxb,@tt,@idtg,@idls,@idnxb,@gb,@sl);
select * from Sach;

exec proc_s @ms=N'B001',@ts=N'Trí tuệ Do Thái',@nxb=2010,@lxb=1,@tt=N'Bạn có muốn biết: Người Do Thái sáng tạo ra cái gì và nguồn gốc
trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dần hé lộ
những bí ẩn về sự thông thái của người Do Thái, của một dân tộc
thông tuệ với những phương pháp và kỹ thuật phát triển tầng lớp trí
thức đã được giữ kín hàng nghìn năm như một bí ẩn mật mang tính
văn hóa.',@idtg=1,@idls=1,@idnxb=1,@gb=79000,@sl=100;
--3
select * from Sach where NamXB>2008 and NamXB<2022;
--4
select top 10 * from Sach order by GiaBan desc;
--5
select * from Sach where TenSach like N'%tin học%';
--6
select * from Sach where TenSach like N'%T' order by GiaBan desc;
--7
select * from Sach where idnxb in (select id from NhaXuatBan where NXB like N'Tri Thức');
--8
select * from NhaXuatBan where id in(select idnxb from Sach where TenSach like N'Trí tuệ Do Thái');
--9
select a.MaSach,a.TenSach,c.NXB,a.NamXB,b.Ten from Sach a 
inner join LoaiSach b on a.idls=b.id
inner join NhaXuatBan c on a.idnxb=c.id;
--10
select top 1 * from Sach order by GiaBan desc;
--11
select top 1 * from Sach order by SoLuong desc;
--12
select * from Sach where idtg in (select id from TacGia where Ten like N'Eran Katz');
--13
update Sach set GiaBan=GiaBan-(GiaBan*10/100) where NamXB<2008;
--14
select * from Sach where idnxb in (select id from NhaXuatBan);
--15
select * from Sach where idls in (select id from LoaiSach);
--16
create index ma_index on Sach(MaSach);
create index ten_index on Sach(TenSach);
create index nxb_index on Sach(NamXB);
create index lan_index on Sach(LanXuatBan);
create index tt_index on Sach(TomTat);
create index idtg_index on Sach(idtg);
create index idls_index on Sach(idls);
create index idnxb_index on Sach(idnxb);
create index gb_index on Sach(Giaban);
create index sl_index on Sach(SoLuong);
--17
create procedure view_all as
select * from Sach;
select * from TacGia;
select * from LoaiSach;
select * from NhaXuatBan
exec view_all;

