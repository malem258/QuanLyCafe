create database BTL_QuanLyBanHang
go

use BTL_QuanLyBanHang

go

create table NhanVien(
	maNV nchar(20) primary key not null,
	tenNV nvarchar(30),
	chucVu nvarchar(20),
	luongCoBan float,
	phuCap float
)

create table TaiKhoan(
	maNV nchar(20) constraint FK_maNV foreign key (maNV) references NhanVien(maNV),
	username nchar(20) not null,
	pass nchar(30) not null,
	quyenTruyCap nvarchar(15) not null
)

create table SanPham(
	maSP nchar(20) primary key not null,
	tenSP nvarchar(40),
	donGia float,
	soLuong int
)

create table KhachHang(
	maKH nchar(20) primary key not null,
	tenKH nvarchar(30),
	diaChi nvarchar(50)
)
create table HoaDon(
	maHD nchar(15) primary key not null,
	maNV nchar(20),
	soDT nchar(15),
	tenKH nvarchar(50),
	ngayLap date,
	diaChi nvarchar(30)
)

create table ChiTietHoaDon(
	maHD nchar(15) not null,
	maSP nchar(20) not null,
	soLuongBan int,
	primary key(maHD, maSP)
)

create table ThongKe(
	ngayLap date,
	tongDoanhThu float
)


INSERT INTO  NhanVien
	Values ('QL01', N'Thành Nhân', N'Quản lý', 5000000, 3000000),
		   ('QL02', N'Nhân', N'Quản lý', 5000000,3000000),
		   ('NV01', N'Hoàng Văn Hiếu', N'Nhân Viên', 3000000,1000000),		
		   ('NV03', N'Nguyễn Minh', N'Nhân Viên', 3000000,1000000),
		   ('NV04', N'Phan Tú', N'Nhân Viên', 3000000,1000000),
		   ('NV05', N'Tiến Anh', N'Nhân Viên', 3000000,1000000)

insert into TaiKhoan 
	values('QL01','admin1', '123', 'Admin'),
		  ('QL02','admin2', '1234', 'Admin'),
		  ('NV01','user1', '12345', 'User')


insert into SanPham 
	Values ('CF1',N'Nâu đá', 25000, 100),
		   ('CF2', N'Nâu nóng', 25000, 100), 
		   ('CF3', N'Nâu lắc', 69000, 100),
		   ('TEA5', N'Trà Xanh ', 25000, 200),
		   ('TEA6', N'Trà C2', 20000, 200),
		   ('NTM', N'Chanh muối', 20000, 200),
		   ('NDT', N'Coca Cola', 25000, 200),
		   ('NDT1', N'RedBull', 25000, 200),
		   ('NDT2', N'Pepsi', 20000, 200),
		   ('TEA1', N'Trà Gừng', 25000, 200),
		   ('TEA2', N'Trà Dilmah', 25000, 300),
		   ('TEA3', N'Trà chanh', 15000, 300),
		   ('TEA4', N'Trà My', 200000, 300),
		   ('ST1', N'Sinh tố Xoài', 30000, 300),
		   ('ST2', N'Sinh tố bơ', 35000, 300),
		   ('ST3', N'Sinh tố Dưa Hấu', 30000, 300),
		   ('ST4', N'Sinh tố Mãng Cầu', 35000, 150),
		   ('ST5', N'Sinh tố chanh leo', 30000, 100),
		   ('ST6', N'Sinh tố dưa chuột', 35000, 200),
		   ('THU1', N'Vina', 30000, 50),
		   ('THU2', N'555', 60000, 100),
		   ('CA1', N'Ca cao nóng', 25000, 100),
		   ('CA2', N'Ca cao nguội', 25000, 100),
		   ('CF4', N'Cafe Đen đá', 25000, 200),
		   ('CF5', N'Cafe Đen nóng ', 25000, 100),
		   ('CF6', N'Cafe Sữa đá', 50000, 150),
		   ('CF7', N'Cafe Bacxiu', 60000, 150),
		   ('BIA1', N'Bia Ken', 25000, 100),
		   ('BIA2', N'Bia Sài Gòn', 20000, 200),
		   ('BIA3', N'Bia Hà Nội', 20000, 200),
		   ('TA1', N'Mỳ tôm', 15000, 200),
		   ('TA2', N'Bánh mỳ pate', 15000, 50),
		   ('TA3', N'Mực nướng', 55000, 50),
		   ('TA4', N'kẹo cao su', 1000, 200),
		   ('TA5', N'Hướng Dương', 15000, 100),
		   ('TA6', N'Khoai chiên', 15000, 50)



insert into KhachHang
		Values (N'KH1', N'Nguyễn Thanh Tùng', N'TP HCM'),
			   (N'KH2', N'Nguyễn Mạnh Hùng', N'Đà Nẵng'),
			   (N'KH3', N'Lê Quỳnh Như', N'TP HCM'),
			   (N'KH4', N'Lê Quý Vương', N'Phú Thọ'),
			   (N'KH5', N'Trần Trung Nghĩa', N'Bến Tre'),
		 	   (N'KH6', N'Nguyễn Ngọc Giàu', N'Tiền Giang'),
			   (N'KH7', N'Trương Quỳnh Anh', N'Hà Nội') 


insert into HoaDon
		VALUES  (N'HD01', N'NV01', N'0975954057', N'Nguyễn Thanh Tùng', '2021-01-17', N'TP HCM'),
				(N'HD02', N'NV01', N'0975954057', N'Nguyễn Mạnh Hùng', '2021-01-18', N'Đà Nẵng'),
				(N'HD03', N'NV03', N'0849384982', N'Lê Quý Vương', '2021-01-19', N'Phú Thọ'),
				(N'HD04', N'NV04', N'0938743288', N'Trần Trung Nghĩa', '2021-02-04', N'Bến Tre'),
				(N'HD05', N'NV02', N'0838573567', N'Nguyễn Ngọc Giàu', '2021-02-05', N'Tiền Giang'),
				(N'HD06', N'NV02', N'0904823213', N'Lê Quỳnh Như', '2021-03-17', N'TP HCM'),
				(N'HD07', N'NV05', N'0872632453', N'Trương Quỳnh Anh', '2021-03-17', N'Hà Nội'),
				(N'HD08', N'NV01', N'0354382730', N'Lê Quý Vương', '2021-03-17', N'Phú Thọ') 

insert into ChiTietHoaDon
		Values  ('HD01', 'CF6', 5),
				('HD02', 'NDT' , 10),
				('HD03', 'NDT', 12),
				('HD04', 'CA1', 2),
				('HD05', 'CA2', 5),
				('HD06', 'ST2', 6),
				('HD07', 'TEA5', 5),
				('HD08', 'TEA5', 3)