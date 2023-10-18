USE JPGaming
-- MASTER TABLE (Customer, Staff, Vendor, Product, Component)
INSERT INTO Customer VALUES
('CU001', 'Caden Vincent', 'caden.vincent@gmail.com', '+62 810-281-385', '2001-09-13', 'Male', 'Jl Kb Kacang I 11, DKI Jakarta'),
('CU002', 'Stefano Carrillo', 'stefano.123car@yahoo.com', '+62 876-2713-8833', '2001-12-14', 'Male', 'Jl Kb Kacang I 11, DKI Jakarta'),
('CU003', 'Arwa Atkinson', 'atkinsonwawa@gmail.com', '+62 868-514-034', '2002-11-11', 'Female', ' Jl Asia Afrika 87, Jawa Barat'),
('CU004', 'Brax Cordova', 'corcor.braxxxy@gmail.com', '+62 839-104-338', '1998-02-18', 'Male', 'Jl Kol Sugiono 24 RT 008/01, DKI Jakarta'),
('CU005', 'Samara Kim', 'kim.sam123@yahoo.com', '+62 878-7768-1228', '1997-04-26', 'Female', ' Jl Pegangsaan Dua 16, DKI Jakarta'),
('CU006', 'Adrienne Patel', 'patel.rienne@gmail.com', '+62 810-3969-818', '2003-08-27', 'Female', 'Jl Waspada 94 J, Jawa Timur'),
('CU007', 'Freddy Glass', 'freddyfazglass@gmail.com', '+62 820-439-145', '2000-01-11', 'Male', ' Jl Pemuda 24, DKI Jakarta'),
('CU008', 'Amanda Hogan', 'homanda.gan05@yahoo.com', '+62 880-8584-725', '2002-02-05', 'Female', ' Jl Klambir V 85, Sumatera Utara'),
('CU009', 'Fay Morton', 'faypal123@gmail.com', '+62 853-0565-128', '1998-07-22', 'Male', 'Jl Perintis Kemerdekaan 70, DKI Jakarta'),
('CU010', 'Angel Durham', 'dur.angel12@yahoo.com', '+62 827-053-065', '1999-03-12', 'Female', 'Jl Kemayoran 11, DKI Jakarta');
-- Preview
SELECT * FROM Customer

INSERT INTO StaffInformation VALUES
('ST001','Elspeth Morrison','morisson123@gmail.com','+62 867-867-449','2003-02-14','Male','Jl Durian Slt I 6, Jawa Tengah','4500000'),
('ST002','Franklyn Chandler','frank.frank00chand@yahoo.com','+62 876-5479-253','2003-04-04','Male','Jl Jatibening II 145, DKI Jakarta','4500000'),
('ST003','Kwabena Benitez','kwakwa21beni@gmail.com','+62 884-4149-264','2000-12-22','Female',' Jl P Jayakarta 53, DKI Jakarta','5000000'),
('ST004','Arsalan Lu','lu.salan100@gmail.com','+62 892-6717-359','2001-12-20','Male','Jl Panglima Polim Raya 32, DKI Jakarta','4800000'),
('ST005','Daniel Cousins','dancous0998@gmail.com','+62 833-3260-938','2000-11-07','Male','Jl Lindung Bl R-3/3, DKI Jakarta','5000000'),
('ST006','Ariella Hodgson','hotdogella10.hog@gmail.com','+62 862-4217-132','2000-09-17','Female','Jl Pecenongan 72, DKI Jakarta','5000000'),
('ST007','Milosz Rogers','rogers.miloz@yahoo.com','+62 868-4763-669','1999-04-22','Female',' Jl Barito A-10, Jawa Tengah','7000000'),
('ST008','Gemma Kinney','gemma.kidkidney@gmail.com','+62 839-4881-311','1998-08-16','Female','Jl Pantai Laut 4 A, Jakarta','7500000'),
('ST009','Pixie Ellwood','pixied123.ret@gmail.com','+62 813-6263-203','2000-08-19','Female','Jl Boulevard Tmr Raya Bl NC-1/39, DKI Jakarta','5000000'),
('ST010','Joely Davila','joejoedavi11@gmail.com','+62 881-8872-841','1996-01-24','Male','Jl Gandaria Tgh III 44, DKI Jakarta','8500000');
-- Preview
SELECT * FROM StaffInformation

INSERT INTO Vendor VALUES
('VE001', 'Rio Brian', 'rio.brian@gmail.com', '+62 812-9654-236', '1995-03-15', 'Male', 'Jl Pantai Gading No. 15, DKI Jakarta'),
('VE002', 'Irwan', 'irwan.olshop@outlook.com', '+62 872-9423-6945', '1998-06-08', 'Male', 'Jl. Pasar Baru GG 12 No. 19, Sumatera Barat'),
('VE003', 'Isabella', 'isabella.desainer@hotmail.com', '+62 821-5436-4521', '1994-12-21', 'Female', 'Jl Kemanggisan No.23, DKI Jakarta'),
('VE004', 'Siti Maria', 'sitimaria.photographer@live.com', '+62 841-6321-9874', '1998-01-16', 'Female', 'Jl Kebon Jahe 15/3, Surabaya'),
('VE005', 'Bernard', 'bernard.blog@yahoo.com', '+62 889-7412-365', '1995-09-26', 'Male', 'Jl Wader No.65, Bali'),
('VE006', 'Johny', 'johny.johanes@gmail.com', '+62 812-2389-4561', '1992-08-14', 'Male', 'Jl Anggrek Blok A No.35, Jawa Timur'),
('VE007', 'Roberto Carlos', 'robertocarlos@yahoo.com', '+62 816-1593-574', '1993-11-06', 'Male', 'Jl Kapur Raya 91, DKI Jakarta'),
('VE008', 'Andi', 'andirsdrafter@hotmail.com', '+62 886-777-123', '1990-05-01', 'Male', 'Jl Pattimura Blok B1 No. 2, Kalimantan Barat'),
('VE009', 'Cindy', 'cindy.blogger@gmail.com', '+62 8456-7851-9846', '1996-02-24', 'Female', 'Jl Mawar No. 32, DKI Jakarta'),
('VE010', 'Sinta', 'sinta.desainer@yahoo.com', '+62 863-1234-5645', '1995-10-15', 'Female', 'Jl Swaraya I No. 38, Jawa Barat');
-- Preview
SELECT * FROM Vendor

INSERT INTO Product VALUES
('PR001', 'Skylar Gaming', 'Powerful Headphone for Real Gamers', '2', '499000'),
('PR002', 'JL6936 Bluetooth TWS', '2220mAh Large Capacity Charging Box', '36', '139000'),
('PR003', 'Kursi', 'Kursi Minimalis Milenial', '3', '198000'),
('PR004', 'G12 Hitam RGB', 'Mechanical Keyboard', '14', '98900'),
('PR005', 'Logitech Mouse Wireless M170', 'Koneksi Wireless Stabil dan Hemat Daya','7', '95000'),
('PR006', 'Homedoki Meja Kerja', 'Anti-rush dan korosi - hasil akhir bebas', '11', '474000'),
('PR007', 'NUOXI 3 Surround Bass Mini Speaker', 'Speaker dengan Subwoofer untuk Desktop PC Laptop', '18', '219000'),
('PR008', 'Weyon Sakura LED Monitor', 'Monitor dengan resolusi HD 1680 x 1050px', '25', '869000'),
('PR009', 'LENOVO IDEAPAD SLIM 3', 'Laptop Lenovo 14 inch, AMD Ryzen 3', '16', '5674000'),
('PR010', 'Pc Gaming Core i7', 'Pc Rakitan Core i7 murah berkualitas', '17', '4375000');
---- Preview
SELECT * FROM Product

INSERT INTO Component VALUES
('CO001', 'DBS-023', 'Premium Material for Table', '200000'),
('CO002', 'Alkaline AAA isi 6 pcs', 'Isi 4 + 2', '22500'),
('CO003', 'KUKE Pistol Lem Tembak', 'Hasil rekat maksimal', '35000'),
('CO004', 'Senter Kepala Headlamp 3 LED', 'Headlamp dengan strap flexible yang muat berbagai ukuran kepala', '53500'),
('CO005', 'Daimaru Lakban 6pcs', 'Daimaru OPP Tape Bening', '104000'),
('CO006', 'Gunting Joyko', 'Superior quality', '12000'),
('CO007', '2TB Hardisk Eksternal Seagate', 'Promotion price for limited stock', '408000'),
('CO008', 'Flashdisk SanDisk 32GB USB', 'Nikmati Kapasitas Yang Cukup Dan Portabilitas Maksimal', '53000'),
('CO009', 'Powerbank 20000 mah', 'Mudah dibawa kemana saja dan tahan lama', '289000'),
('CO010', 'OWIRE KABEL IPHONE', 'Selimut nilon berdensitas tinggi', '60800');

Select* From Component

-- TRANSACTION TABLE (ProductTransaction, ComponentTransaction, ProductCategory)
INSERT INTO ProductTransaction VALUES
('PT001', 'ST001', 'CU001', 'PR005', '2021-01-13', '5'),
('PT002', 'ST002', 'CU001', 'PR010', '2021-03-14', '2'),
('PT003', 'ST003', 'CU005', 'PR001', '2020-01-19', '1'),
('PT004', 'ST004', 'CU007', 'PR006', '2020-01-30', '3'),
('PT005', 'ST005', 'CU002', 'PR007', '2021-02-06', '1'),
('PT006', 'ST006', 'CU008', 'PR003', '2021-03-11', '2'),
('PT007', 'ST007', 'CU010', 'PR002', '2022-04-15', '3'),
('PT008', 'ST008', 'CU004', 'PR004', '2022-04-21', '1'),
('PT009', 'ST009', 'CU006', 'PR009', '2019-03-14', '1'),
('PT010', 'ST010', 'CU009', 'PR008', '2021-04-17', '3'),
('PT011', 'ST002', 'CU010', 'PR010', '2020-02-05', '1'),
('PT012', 'ST004', 'CU005', 'PR001', '2022-01-16', '2'),
('PT013', 'ST005', 'CU009', 'PR006', '2021-02-14', '1'),
('PT014', 'ST007', 'CU003', 'PR005', '2019-03-08', '2'),
('PT015', 'ST010', 'CU006', 'PR009', '2019-04-28', '1');
-- Preview
SELECT * FROM ProductTransaction

INSERT INTO ComponentTransaction VALUES
('CT001', 'ST001', 'VE002', 'CO005', '2019-03-01', '3'),
('CT002', 'ST002', 'VE003', 'CO001', '2019-01-14', '1'),
('CT003', 'ST003', 'VE005', 'CO009', '2019-01-12', '2'),
('CT004', 'ST004', 'VE009', 'CO008', '2022-02-09', '2'),
('CT005', 'ST005', 'VE008', 'CO002', '2021-01-17', '5'),
('CT006', 'ST006', 'VE001', 'CO004', '2022-02-19', '3'),
('CT007', 'ST007', 'VE006', 'CO007', '2020-03-14', '1'),
('CT008', 'ST008', 'VE007', 'CO010', '2022-03-18', '5'),
('CT009', 'ST009', 'VE010', 'CO006', '2022-04-21', '3'),
('CT010', 'ST010', 'VE004', 'CO003', '2021-04-14', '1'),
('CT011', 'ST001', 'VE005', 'CO007', '2022-02-01', '1'),
('CT012', 'ST003', 'VE006', 'CO001', '2020-05-15', '1'),
('CT013', 'ST006', 'VE003', 'CO009', '2020-05-23', '1'),
('CT014', 'ST008', 'VE001', 'CO005', '2022-03-29', '2'),
('CT015', 'ST009', 'VE002', 'CO010', '2021-02-26', '1');
-- Preview
SELECT * FROM ComponentTransaction

INSERT INTO ProductCategory VALUES
('PC001', 'Chair'),
('PC002', 'Keyboard'),
('PC003', 'Mouse'),
('PC004', 'Table'),
('PC005', 'Headphone'),
('PC006', 'Speaker'),
('PC007', 'Monitor'),
('PC008', 'Laptop'),
('PC009', 'Computer'),
('PC010', 'Accessories');
-- Preview
SELECT * FROM ProductCategory

-- TRANSACTION DETAIL
INSERT INTO [TransactionDetail] VALUES
('TR001','PT001','PC001'),
('TR002','PT001','PC001'),
('TR003','PT002','PC002'),
('TR004','PT002','PC002'),
('TR005','PT003','PC003'),
('TR006','PT003','PC003'),
('TR007','PT004','PC004'),
('TR008','PT004','PC004'),
('TR009','PT005','PC005'),
('TR010','PT005','PC005'),
('TR011','PT006','PC010'),
('TR012','PT007','PC008'),
('TR013','PT007','PC007'),
('TR014','PT008','PC005'),
('TR015','PT010','PC009'),
('TR016','PT008','PC001'),
('TR017','PT011','PC002'),
('TR018','PT012','PC010'),
('TR019','PT013','PC007'),
('TR020','PT013','PC010'),
('TR021','PT014','PC005'),
('TR022','PT010','PC008'),
('TR023','PT015','PC006'),
('TR024','PT013','PC001'),
('TR025','PT005','PC009')
-- Preview
SELECT * FROM TransactionDetail

-- ALL PREVIEW
Select * from Customer 
SELECT * FROM StaffInformation
SELECT * FROM Vendor
SELECT * FROM Product
SELECT * FROM Component
SELECT * FROM ComponentTransaction
SELECT * FROM ProductTransaction
SELECT * FROM ProductCategory
SELECT * FROM TransactionDetail
SELECT * FROM Product
SELECT * FROM ComponentTransaction
SELECT * FROM TransactionDetail