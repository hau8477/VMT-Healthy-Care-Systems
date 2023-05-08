USE vmt_healthy_care_systems;

INSERT INTO `vmt_healthy_care_systems`.`role` (`name`) VALUES ('ROLE_ADMIN');
INSERT INTO `vmt_healthy_care_systems`.`role` (`name`) VALUES ('ROLE_USER');

-- account doctor
INSERT INTO `vmt_healthy_care_systems`.`account` (`username`, `password`)
VALUES 
		('leminhthu@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
		('johnsmith@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('jessicaclark@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('tranhuyhoang@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('helenjohnson@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('davidbrown@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('trangnguyen@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('williamsimon@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('juliebaker@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('peterwilson@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        
        ('sarahjones@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('tranvien@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('hoanganh@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('johndo@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('janedo@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('tonynguyen@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('tuanle@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('hongnguyen@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('anhnguyen@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('dangtran@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        
        ('thanhtran@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('vudang@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('thuytrinh@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('namnguyen@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('longvo@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('huynhnguyen@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('linhtran@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('tuanpham@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('hieule@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('nguyenhuyen@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        
        ('trungnguyen@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('anhle@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('tuyenle@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('thaongo@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
        ('tungnguyen@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG');
 
-- account customer
INSERT INTO `vmt_healthy_care_systems`.`account` (`username`, `password`)
VALUES 
		('hau8477@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'); 
        
INSERT INTO `vmt_healthy_care_systems`.`account_role` (`account_id`, `role_id`) VALUES (1, 1); 
INSERT INTO `vmt_healthy_care_systems`.`account_role` (`account_id`, `role_id`) VALUES (36, 2);            

INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa tim mạch');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa thần kinh');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa nội tiêu hóa');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa nhi');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa mắt');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa chẩn đoán X-quang');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa chỉnh hình');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa da liễu ');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa gây mê');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa hô hấp ');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Nha khoa');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa nội tiết');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa sản phụ');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa tai mũi họng');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa tiêu hóa');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa ung bứu');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`) VALUES ('Khoa thất khớp & miễn dịch học');

INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`) VALUES ('Khám sức khỏe tổng quát gói VIP là chương trình khám bệnh toàn diện các bộ phận trên cơ thể từ: Mắt, tai, mũi, họng, điện tâm đồ, X - quang tim phổi, siêu âm bụng...', 'Gói khám sức khỏe tổng quát VIP');
INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`) VALUES ('Gói khám sức khỏe tổng quát được thiết kế có tính khoa học và tính thực tiễn nhằm phát hiện sớm, can thiệp, điều trị kịp thời nhằm làm giảm đến mức tối thiểu những biến chứng của những bệnh hiểm nghèo đe dọa cuộc sống của bạn.', 'Gói khám sức khỏe tổng quát Nâng cao');
INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`) VALUES ('Gói khám sức khỏe tổng quát Tiêu chuẩn Nữ < 40 tuổi được thực hiện bởi các bác sĩ chuyên môn giỏi, trình độ cao, giúp đánh giá chính xác về tình trạng sức khỏe chung đồng thời phát hiện sớm một số bệnh lý nguy hiểm', 'Gói khám sức khỏe tổng quát Tiêu chuẩn Nữ');
INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`) VALUES ('Gói khám sức khoẻ tổng quát Tiêu chuẩn được thực hiện bởi các bác sĩ chuyên môn giỏi, trình độ cao, giúp đánh giá chính xác về tình trạng sức khỏe chung đồng thời phát hiện sớm một số bệnh lý nguy hiểm', 'Gói khám sức khỏe tổng quát Tiêu chuẩn Nam');
INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`) VALUES ('Gói khám sức khỏe tổng quát Toàn diện của Bệnh viện Đa khoa Quốc tế VMT được thiết kế có tính khoa học, tính thực tiễn cao, hoàn toàn khác với việc thực hiện kiểm tra sức khỏe thông thường.', 'Gói khám sức khỏe tổng quát Toàn diện');
INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`) VALUES ('Với gói khám sức khoẻ tổng quát trẻ em, bé yêu của bạn sẽ được khám toàn diện kết hợp với chẩn đoán bằng hình ảnh, giúp bạn kiểm tra tổng thể sức khỏe cho bé, sàng lọc triệu chứng để sớm phát hiện và điều trị nếu cần.', 'Gói khám sức khỏe tổng quát Trẻ em');
	

INSERT INTO vmt_healthy_care_systems.doctor (address, date_of_birth, email, flag_delete, gender, id_card, img, name, phone, account_id, departments_id)
VALUES
('Cầu Giấy, Hà Nội', '14-05-1981', 'leminhthu@gmail.com', 0, 0, '786700001234', '0', 'Lê Minh Thu', '0912345678', 1, 8),
('Bắc Từ Liêm, Hà Nội', '02-02-1974', 'johnsmith@gmail.com', 0, 1, '888899990001', '0', 'John Smith', '0988854321', 2, 5),
('Nam Từ Liêm, Hà Nội', '07-03-1992', 'jessicaclark@gmail.com', 0, 0, '889901909045', '0', 'Jessica Clark', '0932154769', 3, 3),
('Ba Đình, Hà Nội', '21-06-1986', 'tranhuyhoang@gmail.com', 0, 1, '187657676800', '0', 'Trần Huy Hoàng', '0976054321', 4, 2),
('Hai Bà Trưng, Hà Nội', '13-08-1990', 'helenjohnson@gmail.com', 0, 0, '988882254321', '0', 'Helen Johnson', '0987622221', 5, 6),
('Hai Bà Trưng, Hà Nội', '02-12-1980', 'davidbrown@gmail.com', 0, 1, '156789898765', '0', 'David Brown', '0978091321', 6, 16),
('Phú Nhuận, TP. Hồ Chí Minh', '05-01-1993', 'trangnguyen@gmail.com', 0, 0, '989899219898', '0', 'Nguyễn Thị Trang', '0909909456', 7, 9),
('Gò Vấp, TP. Hồ Chí Minh', '09-10-1978', 'williamsimon@gmail.com', 0, 1, '123456090112', '0', 'William Simon', '0921223456', 8, 1),
('Bình Thạnh, TP. Hồ Chí Minh', '01-03-1984', 'juliebaker@gmail.com', 0, 0, '554487821100', '0', 'Julie Baker', '0990923456', 9, 12),
('Quận 1, TP. Hồ Chí Minh', '15-07-1990', 'peterwilson@gmail.com', 0, 1, '123456709011', '0', 'Peter Wilson', '0900003456', 10, 7),

('Bình Tân, TP. Hồ Chí Minh', '22-09-1975', 'sarahjones@gmail.com', 0, 0, '987654901212', '0', 'Sarah Jones', '0988993456', 11, 4),
('Hồ Chí Minh, Việt Nam', '02-03-1988', 'tranvien@gmail.com', 0, 1, '890178771881', '0', 'Trần Viên', '0912000978', 12, 15),
('Đà Nẵng, Việt Nam', '05-11-1995', 'hoanganh@gmail.com', 0, 0, '038221101234', '0', 'Vương Hoàng Anh', '0990283456', 13, 3),
('Quận 2, TP. Hồ Chí Minh', '17-11-1982', 'johndo@gmail.com', 0, 1, '123999989012', '0', 'John Doe', '0909100776', 14, 2),
('Bình Tân, TP. Hồ Chí Minh', '03-05-1979', 'janedo@gmail.com', 0, 0, '987810321012', '0', 'Jane Doe', '0909198787', 15, 3),
('Quận 1, TP. Hồ Chí Minh', '08-08-1987', 'tonynguyen@gmail.com', 0, 1, '090159864201', '0', 'Nguyễn Hữu Tony', '0990903456', 16, 4),
('Quận 10, TP. Hồ Chí Minh', '27-12-1989', 'tuanle@gmail.com', 0, 1, '159019246801', '0', 'Lê Đức Tuấn', '0912190457', 17, 5),
('Phú Nhuận, TP. Hồ Chí Minh', '14-09-1985', 'hongnguyen@gmail.com', 0, 0, '711111684236', '0', 'Nguyễn Thị Hồng', '0900056456', 18, 6),
('Thủ Đức, TP. Hồ Chí Minh', '30-11-1990', 'anhnguyen@gmail.com', 0, 1, '909054322987', '0', 'Nguyễn Văn Anh', '0901878957', 19, 7),
('Quận 2, TP. Hồ Chí Minh', '12-02-1978', 'dangtran@gmail.com', 0, 1, '456789090915', '0', 'Trần Văn Đăng', '0915097656', 20, 8),

('Quận 3, TP. Hồ Chí Minh', '01-01-1975', 'thanhtran@gmail.com', 0, 0, '012901078910', '0', 'Trần Thanh Tùng', '0915176757', 21, 9),
('Quận 11, TP. Hồ Chí Minh', '18-03-1984', 'vudang@gmail.com', 0, 1, '182978910111', '0', 'Đặng Ngọc Vũ', '0917141256', 22, 10),
('Quận 5, TP. Hồ Chí Minh', '26-06-1982', 'thuytrinh@gmail.com', 0, 0, '789012928278', '0', 'Trịnh Thuỳ Dương', '0917129597', 23, 11),
('Quận 10, TP. Hồ Chí Minh', '03-04-1987', 'namnguyen@gmail.com', 0, 1, '111213920116', '0', 'Nguyễn Thanh Nam', '0903190956', 24, 12),
('Tân Bình, TP. Hồ Chí Minh', '07-09-1989', 'longvo@gmail.com', 0, 1, '171890192122', '0', 'Võ Trường Long', '0903122348', 25, 13),
('Quận 7, TP. Hồ Chí Minh', '12-12-1983', 'huynhnguyen@gmail.com', 0, 1, '232425909228', '0', 'Nguyễn Văn Huynh', '0903126189', 26, 14),
('Quận 4, TP. Hồ Chí Minh', '20-07-1981', 'linhtran@gmail.com', 0, 0, '303138822435', '0', 'Trần Thị Linh', '0918187156', 27, 15),
('Quận 6, TP. Hồ Chí Minh', '05-03-1986', 'tuanpham@gmail.com', 0, 1, '373830292142', '0', 'Phạm Văn Tuấn', '0918189217', 28, 16),
('Quận 9, TP. Hồ Chí Minh', '09-11-1988', 'hieule@gmail.com', 0, 1, '439029464748', '0', 'Lê Thanh Hiếu', '0912094758', 29, 17),
('Quận 5, TP. Hồ Chí Minh', '15-08-1985', 'nguyenhuyen@gmail.com', 0, 0, '495051529202', '0', 'Huyền Nguyễn', '0912128462', 30, 1),

('Quận 8, TP. Hồ Chí Minh', '23-02-1981', 'trungnguyen@gmail.com', 0, 1, '571817585960', '0', 'Nguyễn Văn Trung', '0909957358', 31, 2),
('Bình Thạnh, TP. Hồ Chí Minh', '01-04-1982', 'anhle@gmail.com', 0, 1, '616892846566', '0', 'Lê Thanh Anh', '0909097459', 32, 3),
('Quận 3, TP. Hồ Chí Minh', '28-10-1989', 'tuyenle@gmail.com', 0, 0, '676890907172', '0', 'Lê Thị Tuyền', '0916909856', 33, 4),
('Quận 10, TP. Hồ Chí Minh', '16-06-1986', 'thaongo@gmail.com', 0, 0, '737489207778', '0', 'Ngô Thị Thảo Ngân', '0916891257', 34, 5),
('Quận 1, TP. Hồ Chí Minh', '11-11-1983', 'tungnguyen@gmail.com', 0, 1, '802188888384', '0', 'Nguyễn Hữu Tùng', '0908543456', 35, 6);




