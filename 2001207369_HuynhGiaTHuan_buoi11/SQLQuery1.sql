create database QLNhanVien
go
use QLNhanVien
go
create table dbo_NhanVien(
	MaNhanVien char(10)primary key ,
	Pass nvarchar(max),
	TenNV nvarchar(max),
	Img image,
	Tuoi int ,
	Luong decimal(18,2),
	Brithday date,
	Role char(20),
	CCCD char(20),
	NgayVaoLam DATE
)
go



insert into dbo_NhanVien values('ad123',N'admin',N'Gia Thuận',(SELECT * FROM OPENROWSET(BULK 'D:\sent.png', SINGLE_BLOB) AS Image),21,'125000.00','2002/11/17','admin','0123456',GETDATE())
insert into dbo_NhanVien values('TX0012',N'khanghet',N'Ngọc Khang',(SELECT * FROM OPENROWSET(BULK 'D:\sent.png', SINGLE_BLOB) AS Image),21,'125000.00','2002/10/16','TaiXe','567689',GETDATE())
insert into dbo_NhanVien values('NV003',N'thanhan',N'Thành An',(SELECT * FROM OPENROWSET(BULK 'D:\sent.png', SINGLE_BLOB) AS Image),21,'125000.00','2002/10/16','NhanVien','357954',GETDATE())
insert into dbo_NhanVien values('NV004',N'thanhan',N'Thành An',(SELECT * FROM OPENROWSET(BULK 'D:\sent.png', SINGLE_BLOB) AS Image),21,'125000.00','2002/10/16','NhanVien','357954',GETDATE())
insert into dbo_NhanVien values('NV005',N'thanhan',N'Thành An',(SELECT * FROM OPENROWSET(BULK 'D:\sent.png', SINGLE_BLOB) AS Image),21,'125000.00','2002/10/16','NhanVien','357954',GETDATE())
insert into dbo_NhanVien values('TX123',N'thanhan',N'Văn Tèo',(SELECT * FROM OPENROWSET(BULK 'D:\sent.png', SINGLE_BLOB) AS Image),21,'125000.00','2002/10/16','NhanVien','357954',GETDATE())
insert into dbo_NhanVien values('TX789',N'thanhan',N'Văn hai',(SELECT * FROM OPENROWSET(BULK 'D:\sent.png', SINGLE_BLOB) AS Image),21,'125000.00','2002/10/16','NhanVien','357954',GETDATE())
insert into dbo_NhanVien values('TX999',N'thanhan',N'Văn Tài',(SELECT * FROM OPENROWSET(BULK 'D:\sent.png', SINGLE_BLOB) AS Image),21,'125000.00','2002/10/16','NhanVien','357954',GETDATE())

select * from dbo_NhanVien
