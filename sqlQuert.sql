create table PRODUCT (
	productID int not null identity(1,1) primary key,
	productName nvarchar(50) not null,
	[image] varchar(255) not null,
	price float not null,
	title nvarchar(255),
	cateID int not null
);

create table CATEGORIES (
	cid int not null primary key,
	cname nvarchar(50) not null,
);

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Cà phê sữa đá', 'a', 29000, N'Cà phê Đắk Lắk nguyên chất được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.', 1)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Cà phê sữa nóng', 'b', 30000, N'Cà phê được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.', 1)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Bạc Sỉu', 'b', 30000, N'Bạc sỉu chính là "Ly sữa trắng kèm một chút cà phê". Thức uống này rất phù hợp những ai vừa muốn trải nghiệm chút vị đắng của cà phê vừa muốn thưởng thức vị ngọt béo ngậy từ sữa.', 1)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Bạc Sỉu Nóng', 'b', 35000, N'Bạc sỉu chính là "Ly sữa trắng kèm một chút cà phê". Thức uống này rất phù hợp những ai vừa muốn trải nghiệm chút vị đắng của cà phê vừa muốn thưởng thức vị ngọt béo ngậy từ sữa.', 1)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Cà Phê Đen Đá', 'b', 30000, N'Không ngọt ngào như Bạc sỉu hay Cà phê sữa, Cà phê đen mang trong mình phong vị trầm lắng, thi vị hơn. Người ta thường phải ngồi rất lâu mới cảm nhận được hết hương thơm ngào ngạt, phảng phất mùi cacao và cái đắng mượt mà trôi tuột xuống vòm họng.', 1)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Cà Phê Đen Nóng', 'b', 35000, N'Không ngọt ngào như Bạc sỉu hay Cà phê sữa, Cà phê đen mang trong mình phong vị trầm lắng, thi vị hơn. Người ta thường phải ngồi rất lâu mới cảm nhận được hết hương thơm ngào ngạt, phảng phất mùi cacao và cái đắng mượt mà trôi tuột xuống vòm họng.', 1)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Latte Đá', 'b', 40000, N'Một sự kết hợp tinh tế giữa vị đắng cà phê Espresso nguyên chất hòa quyện cùng vị sữa nóng ngọt ngào, bên trên là một lớp kem mỏng nhẹ tạo nên một tách cà phê hoàn hảo về hương vị lẫn nhãn quan.', 1)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Latte Nóng', 'b', 40000, N'Một sự kết hợp tinh tế giữa vị đắng cà phê Espresso nguyên chất hòa quyện cùng vị sữa nóng ngọt ngào, bên trên là một lớp kem mỏng nhẹ tạo nên một tách cà phê hoàn hảo về hương vị lẫn nhãn quan.', 1)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Trà Long Nhãn Hạt Sen', 'b', 40000, N'Thức uống mang hương vị của nhãn, của sen, của trà Oolong đầy thanh mát cho tất cả các thành viên trong dịp Tết này. An lành, thư thái và đậm đà chính là những gì The Coffee House mong muốn gửi trao đến bạn và gia đình.', 2)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Trà Đào Cam Sả - Đá', 'b', 49000, N'Vị thanh ngọt của đào, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này.', 2)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Trà Đào Cam Sả - Nóng', 'b', 50000, N'Vị thanh ngọt của đào, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này.', 2)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Trà Hạt Sen - Đá', 'b', 49000, N'Nền trà oolong hảo hạng kết hợp cùng hạt sen tươi, bùi bùi và lớp foam cheese béo ngậy. Trà hạt sen là thức uống thanh mát, nhẹ nhàng phù hợp cho cả buổi sáng và chiều tối.', 2)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Trà Hạt Sen - Nóng', 'b', 50000, N'Nền trà oolong hảo hạng kết hợp cùng hạt sen tươi, bùi bùi và lớp foam cheese béo ngậy. Trà hạt sen là thức uống thanh mát, nhẹ nhàng phù hợp cho cả buổi sáng và chiều tối.', 2)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Bánh Mì Que Pate', 'b', 12000, N'Vỏ bánh mì giòn tan, kết hợp với lớp nhân pate béo béo đậm đà sẽ là lựa chọn lý tưởng nhẹ nhàng để lấp đầy chiếc bụng đói , cho 1 bữa sáng - trưa - chiều - tối của bạn thêm phần thú vị.', 3)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Bánh Mì Que Pate Cay', 'b', 12000, N'Vỏ bánh mì giòn tan, kết hợp với lớp nhân pate béo béo đậm đà sẽ là lựa chọn lý tưởng nhẹ nhàng để lấp đầy chiếc bụng đói , cho 1 bữa sáng - trưa - chiều - tối của bạn thêm phần thú vị.', 3)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Mochi Kem', 'b', 12000, N'Bao bọc bởi lớp vỏ Mochi dẻo thơm, bên trong là lớp kem lạnh cùng nhân phúc bồn tử ngọt ngào. Gọi 1 chiếc Mochi cho ngày thật tươi mát. Sản phẩm phải bảo quán mát và dùng ngon nhất trong 2h sau khi nhận hàng.', 3)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Gà Xé Lá Chanh', 'b', 25000, N'Thịt gà được xé tơi, mang hương vị mặn, ngọt, cay cay quyện nhau vừa chuẩn, thêm chút thơm thơm thơm từ lá chanh sấy khô giòn giòn xua tan ngay cơn buồn miệng.', 3)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Trà Đào Túi Lọc Tearoma 20x2G', 'b', 28000, N'Trà túi lọc Tearoma hương đào với hương thơm tinh tế và hoàn toàn tự nhiên, cùng nền trà đen đậm vị khó quên. Trà túi lọc Tearoma tiện lợi để sử dụng tại văn phòng, tại nhà,.. nhưng vẫn đảm bảo được chất lượng về hương trà tinh tế, vị trà đậm đà.', 4)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Trà Oolong Túi Lọc Tearoma 20x2G', 'b', 28000, N'Trà Oolong túi lọc với mùi hương dịu nhẹ hoàn toàn từ tự nhiên, vị hậu ngọt, và hương thơm tinh tế. Trà túi lọc Tearoma tiện lợi để sử dụng tại văn phòng, tại nhà,... nhưng vẫn đảm bảo được chất lượng về hương trà tinh tế, vị trà đậm đà.', 4)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Cà Phê Hoà Tan Đậm Vị Việt (18 gói x 16 gam)', 'b', 48000, N'Bắt đầu ngày mới với tách cà phê sữa “Đậm vị Việt” mạnh mẽ sẽ giúp bạn luôn tỉnh táo và hứng khởi cho ngày làm việc thật hiệu quả.', 4)

insert into PRODUCT (productName, [image], price, title, cateID)
values (N'Cà Phê Sữa Đá Hòa Tan (10 gói x 22g)', 'b', 44000, N'Thật dễ dàng để bắt đầu ngày mới với tách cà phê sữa đá sóng sánh, thơm ngon như cà phê pha phin. Vị đắng thanh của cà phê hoà quyện với vị ngọt béo của sữa, giúp bạn luôn tỉnh táo và hứng khởi cho ngày làm việc thật hiệu quả.', 4)

insert into CATEGORIES(cid, cname)
values (1, 'COFFEE')

insert into CATEGORIES(cid, cname)
values (2, 'TEA')

insert into CATEGORIES(cid, cname)
values (3, 'FOODS AND SNACKS')

insert into CATEGORIES(cid, cname)
values (4, 'INSTANT DRINKS')


Select * from PRODUCT