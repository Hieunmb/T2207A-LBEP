--2
create table Customer(
CustomerId int primary key not null,
Name nvarchar(50),
City nvarchar(50),
Country nvarchar(50),
Phone nvarchar(15),
Email nvarchar(50),
);
create table CustomerAccount(
AccountNumber char(9) primary key not null,
CustomerId int not null foreign key references Customer(CustomerId),
Balance money not null,
MinAccount money,
);
create table CustomerTransaction(
TransactionId int primary key not null,
AccountNumber char(9) foreign key references CustomerAccount(AccountNumber),
TransactionDate smalldatetime,
Amount money check(Amount<1000000 and Amount>0),--6
DepositorWithdraw bit,
);
--3
insert into Customer(CustomerId,Name,City,Country,Phone,Email)
values(1,N'Lý Đức Trung',N'Hanoi',N'Việt Nam',0904088828,N'trungld@gmail.com'),
(2,N'Hà Bảo Lâm',N'Nghệ An',N'Việt Nam',0921492004,N'lamhb@gmail.com'),
(3,N'Nguyễn Duy Khiêm',N'Nam Định',N'Việt Nam',0788887171,N'khiemnd@gmail.com');
insert into CustomerAccount(AccountNumber,CustomerId,Balance,MinAccount)
values(123,1,100,50),
(124,2,200,50),
(125,3,250,50);
insert into CustomerTransaction(TransactionId,AccountNumber,TransactionDate,Amount,DepositorWithdraw)
values(4,123,2009-11-23,50,100000),
(5,124,2009-12-22,50,1000),
(6,125,2006-11-12,50,10000);
--4
select * from Customer where City like N'Hanoi';
--5
select a.Name,a.Phone,a.Email,b.AccountNumber,b.Balance from
Customer a inner join CustomerAccount b on a.CustomerId=b.CustomerId;
--7
create procedure vCustomerTransactions as
select a.Name,b.AccountNumber,c.TransactionDate,c.Amount,c.DepositorWithdraw from Customer a
inner join CustomerAccount b on a.CustomerId=b.CustomerId
inner join CustomerTransaction c on b.AccountNumber=c.AccountNumber ;
exec vCustomerTransactions;
