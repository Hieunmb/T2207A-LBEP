create table DanhBa(
HoVaTen nvarchar(255) not null,
DiaChi nvarchar(255) not null,
NgaySinh date not null check(NgaySinh<getdate()),
id int primary key,
);
create table SDT(
SDT int primary key,
id int foreign key references DanhBa(id), 
);
drop table SDT;
drop table DanhBa;

insert into DanhBa(HoVaTen,DiaChi,NgaySinh,id)
values (N'Nguyễn Văn An',N'111 Nguyễn Trãi, Thanh Xuân, Hà Nội','1987-11-18',1)

insert into SDT(SDT,id)
values(987654321,1),
 (09873452,1),
 (09832323,1),
 (09434343,1)
 --bai tap 4
 select * from DanhBa;
 select * from SDT;
 --bai tap 5
 select * from DanhBa order by HoVaTen asc;
 select * from SDT where id in
 (select id from DanhBa where HoVaTen like N'Nguyễn Văn An');
 select * from DanhBa where NgaySinh like '2009-12-12';
 --bai tap 6
 select count(*) as tongsoluongdt from SDT where id in(select id from DanhBa);
 select count(*) as tongsonguoi from DanhBa where NgaySinh like '0000-12-00';
 select * from DanhBa a
 inner join SDT b on a.id=b.id;
 select * from DanhBa a
 inner join SDT b on a.id=b.id
 where SDT =123456789;
