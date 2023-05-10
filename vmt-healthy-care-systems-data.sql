USE vmt_healthy_care_systems;

INSERT INTO `vmt_healthy_care_systems`.`role` (`name`)
VALUES ('ROLE_ADMIN');
INSERT INTO `vmt_healthy_care_systems`.`role` (`name`)
VALUES ('ROLE_USER');

-- account doctor
INSERT INTO `vmt_healthy_care_systems`.`account` (`username`, `password`)
VALUES ('leminhthu@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG'),
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
VALUES ('hau8477@gmail.com', '$2a$12$5klPDiDpKqoCSYuy61AFkemSRi0AWKZJ6CjtEEQnqQzuHONVzV3fG');

INSERT INTO `vmt_healthy_care_systems`.`account_role` (`account_id`, `role_id`)
VALUES (1, 1);
INSERT INTO `vmt_healthy_care_systems`.`account_role` (`account_id`, `role_id`)
VALUES (36, 2);

INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa tim mạch');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa thần kinh');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa nội tiêu hóa');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa nhi');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa mắt');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa chẩn đoán X-quang');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa chỉnh hình');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa da liễu ');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa gây mê');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa hô hấp ');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Nha khoa');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa nội tiết');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa sản phụ');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa tai mũi họng');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa tiêu hóa');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa ung bứu');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Khoa thất khớp & miễn dịch học');
INSERT INTO `vmt_healthy_care_systems`.`departments` (`name`)
VALUES ('Tổng quát');

INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`)
VALUES ('Khám sức khỏe tổng quát gói VIP là chương trình khám bệnh toàn diện các bộ phận trên cơ thể từ: Mắt, tai, mũi, họng, điện tâm đồ, X - quang tim phổi, siêu âm bụng...',
        'Gói khám sức khỏe tổng quát VIP');
INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`)
VALUES ('Gói khám sức khỏe tổng quát được thiết kế có tính khoa học và tính thực tiễn nhằm phát hiện sớm, can thiệp, điều trị kịp thời nhằm làm giảm đến mức tối thiểu những biến chứng của những bệnh hiểm nghèo đe dọa cuộc sống của bạn.',
        'Gói khám sức khỏe tổng quát Nâng cao');
INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`)
VALUES ('Gói khám sức khỏe tổng quát Tiêu chuẩn Nữ < 40 tuổi được thực hiện bởi các bác sĩ chuyên môn giỏi, trình độ cao, giúp đánh giá chính xác về tình trạng sức khỏe chung đồng thời phát hiện sớm một số bệnh lý nguy hiểm',
        'Gói khám sức khỏe tổng quát Tiêu chuẩn Nữ');
INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`)
VALUES ('Gói khám sức khoẻ tổng quát Tiêu chuẩn được thực hiện bởi các bác sĩ chuyên môn giỏi, trình độ cao, giúp đánh giá chính xác về tình trạng sức khỏe chung đồng thời phát hiện sớm một số bệnh lý nguy hiểm',
        'Gói khám sức khỏe tổng quát Tiêu chuẩn Nam');
INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`)
VALUES ('Gói khám sức khỏe tổng quát Toàn diện của Bệnh viện Đa khoa Quốc tế VMT được thiết kế có tính khoa học, tính thực tiễn cao, hoàn toàn khác với việc thực hiện kiểm tra sức khỏe thông thường.',
        'Gói khám sức khỏe tổng quát Toàn diện');
INSERT INTO `vmt_healthy_care_systems`.`category` (`description`, `name`)
VALUES ('Với gói khám sức khoẻ tổng quát trẻ em, bé yêu của bạn sẽ được khám toàn diện kết hợp với chẩn đoán bằng hình ảnh, giúp bạn kiểm tra tổng thể sức khỏe cho bé, sàng lọc triệu chứng để sớm phát hiện và điều trị nếu cần.',
        'Gói khám sức khỏe tổng quát Trẻ em');


INSERT INTO vmt_healthy_care_systems.doctor (address, date_of_birth, email, flag_delete, gender, id_card, img, name,
                                             phone, account_id, departments_id)
VALUES ('Cầu Giấy, Hà Nội', '14-05-1981', 'leminhthu@gmail.com', 0, 0, '786700001234', '0', 'Lê Minh Thu', '0912345678',
        1, 8),
       ('Bắc Từ Liêm, Hà Nội', '02-02-1974', 'johnsmith@gmail.com', 0, 1, '888899990001', '0', 'John Smith',
        '0988854321', 2, 5),
       ('Nam Từ Liêm, Hà Nội', '07-03-1992', 'jessicaclark@gmail.com', 0, 0, '889901909045', '0', 'Jessica Clark',
        '0932154769', 3, 3),
       ('Ba Đình, Hà Nội', '21-06-1986', 'tranhuyhoang@gmail.com', 0, 1, '187657676800', '0', 'Trần Huy Hoàng',
        '0976054321', 4, 2),
       ('Hai Bà Trưng, Hà Nội', '13-08-1990', 'helenjohnson@gmail.com', 0, 0, '988882254321', '0', 'Helen Johnson',
        '0987622221', 5, 6),
       ('Hai Bà Trưng, Hà Nội', '02-12-1980', 'davidbrown@gmail.com', 0, 1, '156789898765', '0', 'David Brown',
        '0978091321', 6, 16),
       ('Phú Nhuận, TP. Hồ Chí Minh', '05-01-1993', 'trangnguyen@gmail.com', 0, 0, '989899219898', '0',
        'Nguyễn Thị Trang', '0909909456', 7, 9),
       ('Gò Vấp, TP. Hồ Chí Minh', '09-10-1978', 'williamsimon@gmail.com', 0, 1, '123456090112', '0', 'William Simon',
        '0921223456', 8, 1),
       ('Bình Thạnh, TP. Hồ Chí Minh', '01-03-1984', 'juliebaker@gmail.com', 0, 0, '554487821100', '0', 'Julie Baker',
        '0990923456', 9, 12),
       ('Quận 1, TP. Hồ Chí Minh', '15-07-1990', 'peterwilson@gmail.com', 0, 1, '123456709011', '0', 'Peter Wilson',
        '0900003456', 10, 7),

       ('Bình Tân, TP. Hồ Chí Minh', '22-09-1975', 'sarahjones@gmail.com', 0, 0, '987654901212', '0', 'Sarah Jones',
        '0988993456', 11, 4),
       ('Hồ Chí Minh, Việt Nam', '02-03-1988', 'tranvien@gmail.com', 0, 1, '890178771881', '0', 'Trần Viên',
        '0912000978', 12, 15),
       ('Đà Nẵng, Việt Nam', '05-11-1995', 'hoanganh@gmail.com', 0, 0, '038221101234', '0', 'Vương Hoàng Anh',
        '0990283456', 13, 3),
       ('Quận 2, TP. Hồ Chí Minh', '17-11-1982', 'johndo@gmail.com', 0, 1, '123999989012', '0', 'John Doe',
        '0909100776', 14, 2),
       ('Bình Tân, TP. Hồ Chí Minh', '03-05-1979', 'janedo@gmail.com', 0, 0, '987810321012', '0', 'Jane Doe',
        '0909198787', 15, 3),
       ('Quận 1, TP. Hồ Chí Minh', '08-08-1987', 'tonynguyen@gmail.com', 0, 1, '090159864201', '0', 'Nguyễn Hữu Tony',
        '0990903456', 16, 4),
       ('Quận 10, TP. Hồ Chí Minh', '27-12-1989', 'tuanle@gmail.com', 0, 1, '159019246801', '0', 'Lê Đức Tuấn',
        '0912190457', 17, 5),
       ('Phú Nhuận, TP. Hồ Chí Minh', '14-09-1985', 'hongnguyen@gmail.com', 0, 0, '711111684236', '0',
        'Nguyễn Thị Hồng', '0900056456', 18, 6),
       ('Thủ Đức, TP. Hồ Chí Minh', '30-11-1990', 'anhnguyen@gmail.com', 0, 1, '909054322987', '0', 'Nguyễn Văn Anh',
        '0901878957', 19, 7),
       ('Quận 2, TP. Hồ Chí Minh', '12-02-1978', 'dangtran@gmail.com', 0, 1, '456789090915', '0', 'Trần Văn Đăng',
        '0915097656', 20, 8),

       ('Quận 3, TP. Hồ Chí Minh', '01-01-1975', 'thanhtran@gmail.com', 0, 0, '012901078910', '0', 'Trần Thanh Tùng',
        '0915176757', 21, 9),
       ('Quận 11, TP. Hồ Chí Minh', '18-03-1984', 'vudang@gmail.com', 0, 1, '182978910111', '0', 'Đặng Ngọc Vũ',
        '0917141256', 22, 10),
       ('Quận 5, TP. Hồ Chí Minh', '26-06-1982', 'thuytrinh@gmail.com', 0, 0, '789012928278', '0', 'Trịnh Thuỳ Dương',
        '0917129597', 23, 11),
       ('Quận 10, TP. Hồ Chí Minh', '03-04-1987', 'namnguyen@gmail.com', 0, 1, '111213920116', '0', 'Nguyễn Thanh Nam',
        '0903190956', 24, 12),
       ('Tân Bình, TP. Hồ Chí Minh', '07-09-1989', 'longvo@gmail.com', 0, 1, '171890192122', '0', 'Võ Trường Long',
        '0903122348', 25, 13),
       ('Quận 7, TP. Hồ Chí Minh', '12-12-1983', 'huynhnguyen@gmail.com', 0, 1, '232425909228', '0', 'Nguyễn Văn Huynh',
        '0903126189', 26, 14),
       ('Quận 4, TP. Hồ Chí Minh', '20-07-1981', 'linhtran@gmail.com', 0, 0, '303138822435', '0', 'Trần Thị Linh',
        '0918187156', 27, 15),
       ('Quận 6, TP. Hồ Chí Minh', '05-03-1986', 'tuanpham@gmail.com', 0, 1, '373830292142', '0', 'Phạm Văn Tuấn',
        '0918189217', 28, 16),
       ('Quận 9, TP. Hồ Chí Minh', '09-11-1988', 'hieule@gmail.com', 0, 1, '439029464748', '0', 'Lê Thanh Hiếu',
        '0912094758', 29, 17),
       ('Quận 5, TP. Hồ Chí Minh', '15-08-1985', 'nguyenhuyen@gmail.com', 0, 0, '495051529202', '0', 'Huyền Nguyễn',
        '0912128462', 30, 1),

       ('Quận 8, TP. Hồ Chí Minh', '23-02-1981', 'trungnguyen@gmail.com', 0, 1, '571817585960', '0', 'Nguyễn Văn Trung',
        '0909957358', 31, 2),
       ('Bình Thạnh, TP. Hồ Chí Minh', '01-04-1982', 'anhle@gmail.com', 0, 1, '616892846566', '0', 'Lê Thanh Anh',
        '0909097459', 32, 3),
       ('Quận 3, TP. Hồ Chí Minh', '28-10-1989', 'tuyenle@gmail.com', 0, 0, '676890907172', '0', 'Lê Thị Tuyền',
        '0916909856', 33, 4),
       ('Quận 10, TP. Hồ Chí Minh', '16-06-1986', 'thaongo@gmail.com', 0, 0, '737489207778', '0', 'Ngô Thị Thảo Ngân',
        '0916891257', 34, 5),
       ('Quận 1, TP. Hồ Chí Minh', '11-11-1983', 'tungnguyen@gmail.com', 0, 1, '802188888384', '0', 'Nguyễn Hữu Tùng',
        '0908543456', 35, 6);

INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho người trên 40 tuổi, có nhu cầu kiểm tra ở mức cao cấp, kiểm tra thêm một số bệnh lý có nguy cơ cao (thần kinh, tiêu hóa, nội tiết, cơ xương khớp, hô hấp), sàng lọc một số bệnh lý ung thư,...',
        '10/05/2023',
        'Gói khám sức khỏe tổng quát VIP là chương trình khám bệnh toàn diện các bộ phận trên cơ thể từ: Mắt, tai, mũi, họng, điện tâm đồ, X - quang tim phổi, siêu âm bụng... đồng thời kiểm tra các bất thường tại não và hệ tiêu hoá. Gói khám với các dịch vụ cơ bản kiểm tra tổng thể sức khỏe của khách hàng: từ thăm khám lâm sàng và cận lâm sàng phát hiện các yếu tố nguy cơ gây bệnh từ đó điều chỉnh, thay đổi nhằm dự phòng không để không xảy ra bệnh.',
        0, 'Gói khám sức khỏe tổng quát VIP', 55000000, 17,
        'Khám sức khỏe tổng quát gói VIP là chương trình khám bệnh toàn diện các bộ phận trên cơ thể từ: Mắt, tai, mũi, họng, điện tâm đồ, X - quang tim phổi, siêu âm bụng...',
        '2',
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        1, 18,
        'https://vinmec-prod.s3.amazonaws.com/images/20210827_040655_503312_shutterstock_28616597.max-800x800.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho người trên 30 tuổi, có nhu cầu kiểm tra ở mức trung bình, kiểm tra một số bệnh lý có nguy cơ trung bình (tiêu hóa, cơ xương khớp), sàng lọc một số bệnh lý ung thư,...',
        '05/05/2023',
        'Gói khám sức khỏe tổng quát tiêu chuẩn là chương trình khám bệnh cơ bản các bộ phận trên cơ thể từ: Mắt, tai, mũi, họng, điện tâm đồ, X - quang tim phổi,... đồng thời kiểm tra các chỉ số sinh hóa cơ bản. Gói khám sức khỏe tiêu chuẩn với các dịch vụ kiểm tra cận lâm sàng để phát hiện các yếu tố nguy cơ gây bệnh và tư vấn cách điều trị phù hợp.',
        0, 'Gói khám sức khỏe tổng quát tiêu chuẩn', 25000000, 10,
        'Khám sức khỏe tổng quát gói tiêu chuẩn là chương trình khám bệnh cơ bản các bộ phận trên cơ thể từ: Mắt, tai, mũi, họng, điện tâm đồ, X - quang tim phổi,...',
        '1.5',
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        1, 18, 'https://vinmec-prod.s3.amazonaws.com/images/20210826_103319_815440_20395.max-800x800.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho người trên 50 tuổi, có nhu cầu kiểm tra ở mức cao cấp, kiểm tra thêm một số bệnh lý có nguy cơ cao (tim mạch, tiểu đường, ung thư,...), sàng lọc bệnh lý gan, thận,...',
        '10/04/2023',
        'Gói khám sức khỏe tổng quát Executive là chương trình khám bệnh toàn diện các bộ phận trên cơ thể từ: Mắt, tai, mũi, họng, điện tâm đồ, X - quang tim phổi, siêu âm bụng... đồng thời kiểm tra tình trạng gan, thận và các bệnh lý khác. Gói khám với các dịch vụ cơ bản kiểm tra tổng thể sức khỏe của khách hàng: từ thăm khám lâm sàng và cận lâm sàng phát hiện các yếu tố nguy cơ gây bệnh từ đó điều chỉnh, thay đổi nhằm dự phòng không để không xảy ra bệnh.',
        0, 'Gói khám sức khỏe tổng quát Executive', 75000000, 20,
        'Khám sức khỏe tổng quát gói Executive là chương trình khám bệnh toàn diện các bộ phận trên cơ thể từ: Mắt, tai, mũi, họng, điện tâm đồ, X - quang tim phổi, siêu âm bụng...',
        '2',
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        1, 18,
        'https://vinmec-prod.s3.amazonaws.com/images/20210826_101055_041407_shutterstock_69874095.max-800x800.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho người có nhu cầu kiểm tra sức khỏe tổng quát.', '30/03/2023',
        'Gói khám sức khỏe tổng quát Premium là chương trình khám bệnh toàn diện các bộ phận trên cơ thể bằng nhiều phương pháp khác nhau, bao gồm cả các xét nghiệm máu và nước tiểu để đánh giá sức khỏe tổng thể của khách hàng. Gói khám này cũng bao gồm các xét nghiệm chuyên sâu để phát hiện sớm các bệnh lý tiềm ẩn. Đội ngũ bác sĩ tại VMT Healthy Care sẽ thực hiện kiểm tra các chức năng gan, thận, hô hấp, tim mạch, thần kinh, tiêu hóa, ... của khách hàng để đưa ra đánh giá chính xác nhất về sức khỏe của họ.',
        0, 'Gói khám sức khỏe tổng quát Premium', 35000000, 15,
        'Gói khám sức khỏe tổng quát Premium bao gồm các xét nghiệm máu và nước tiểu để đánh giá sức khỏe tổng thể của khách hàng. Đội ngũ bác sĩ tại VMT Healthy Care sẽ kiểm tra chức năng của các bộ phận trên cơ thể để đưa ra đánh giá chính xác nhất về sức khỏe của họ.',
        '2.5',
        'Khách hàng có thể đến khám vào thời gian từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        1, 18,
        'https://vinmec-prod.s3.amazonaws.com/images/20210826_094309_989880_shutterstock_67226773.max-800x800.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho người có nhu cầu kiểm tra sức khỏe tổng quát.', '24/01/2023',
        'Gói khám sức khỏe định kỳ tại VMT Healthy Care giúp khách hàng đánh giá và chăm sóc sức khỏe của mình một cách định kỳ và hiệu quả. Gói khám bao gồm các xét nghiệm máu và nước tiểu để đánh giá sức khỏe tổng thể, kiểm tra các chức năng gan, thận, hô hấp, tim mạch, thần kinh, tiêu hóa, ... của khách hàng và phát hiện sớm các bệnh lý tiềm ẩn. Đội ngũ bác sĩ tại VMT Healthy Care sẽ tư vấn và đưa ra các giải pháp chăm sóc sức khỏe phù hợp nhất với khách hàng dựa trên kết quả khám.',
        0, 'Gói khám sức khỏe định kỳ', 15000000, 10,
        'Gói khám sức khỏe định kỳ bao gồm các xét nghiệm máu và nước tiểu để đánh giá sức khỏe tổng thể của khách hàng. Đội ngũ bác sĩ tại VMT Healthy Care sẽ kiểm tra chức năng của các bộ phận trên cơ thể để đưa ra đánh giá chính xác nhất về sức khỏe của họ.',
        '1.5',
        'Khách hàng có thể đến khám vào thời gian từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        1, 18,
        'https://vinmec-prod.s3.amazonaws.com/images/20221018_094813_650607_Lovepik_com-501049574.max-800x800.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho người có nhu cầu kiểm tra sức khỏe tổng quát.', '12/02/2023',
        'Gói khám tim mạch tại VMT Healthy Care giúp khách hàng đánh giá và chăm sóc sức khỏe tim mạch của mình một cách hiệu quả. Gói khám bao gồm các xét nghiệm tim mạch, kiểm tra chức năng tim, các chỉ số huyết áp và đường huyết. Đội ngũ bác sĩ tại VMT Healthy Care sẽ tư vấn và đưa ra các giải pháp chăm sóc sức khỏe phù hợp nhất với khách hàng dựa trên kết quả khám.',
        0, 'Gói khám tim mạch', 25000000, 15,
        'Gói khám tim mạch bao gồm các xét nghiệm tim mạch, kiểm tra chức năng tim, các chỉ số huyết áp và đường huyết. Đội ngũ bác sĩ tại VMT Healthy Care sẽ tư vấn và đưa ra các giải pháp chăm sóc sức khỏe phù hợp nhất với khách hàng dựa trên kết quả khám.',
        '2',
        'Khách hàng có thể đến khám vào thời gian từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        1, 18, 'https://vinmec-prod.s3.amazonaws.com/images/20190226_041618_396980_sk_td.max-800x800.png');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Tất cả lứa tuổi có nhu cầu kiểm tra sức khỏe.', '26/02/2023',
        'Gói khám sức khỏe tổng quát Nâng cao được thiết kế có tính khoa học và tính thực tiễn để tiếp cận được toàn bộ tình trạng sức khỏe của bạn, đồng thời phát hiện sớm, can thiệp, điều trị kịp thời nhằm làm giảm đến mức tối thiểu những biến chứng của những bệnh hiểm nghèo đe dọa cuộc sống của bạn.',
        0, 'Gói khám sức khỏe tổng quát Nâng cao', 16000000, 22,
        'Gói khám sức khỏe tổng quát Nâng cao được thiết kế có tính khoa học và tính thực tiễn để tiếp cận được toàn bộ tình trạng sức khỏe của bạn, đồng thời phát hiện sớm, can thiệp, điều trị kịp thời nhằm làm giảm đến mức tối thiểu những biến chứng của những bệnh hiểm nghèo đe dọa cuộc sống của bạn.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        2, 18, 'https://cdn.thuvienphapluat.vn/phap-luat/2022-2/HD/-bo-phan-y-te.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Người có độ tuổi từ 40 trở lên và mong muốn kiểm tra sức khỏe toàn diện.', '29/01/2023',
        'Gói khám sức khỏe tổng quát Nâng cao là gói khám sức khỏe toàn diện dành cho những người có độ tuổi từ 40 trở lên. Gói khám này giúp phát hiện sớm các bệnh lý thường gặp ở độ tuổi trung niên như tiểu đường, cao huyết áp, bệnh tim mạch... để có thể can thiệp và điều trị kịp thời, đảm bảo sức khỏe và tăng tuổi thọ cho người sử dụng dịch vụ.',
        0, 'Gói khám sức khỏe toàn diện Nâng cao cho người từ 40 tuổi trở lên', 20000000, 30,
        'Gói khám sức khỏe toàn diện Nâng cao dành cho người có độ tuổi từ 40 trở lên', 1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        2, 18, 'https://digital.fpt.com.vn/wp-content/uploads/2022/11/banner-1280x640.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Người có độ tuổi từ 50 trở lên và cần kiểm tra sức khỏe định kỳ', '22/02/2023',
        'Gói khám sức khỏe tổng quát Nâng cao là gói khám sức khỏe toàn diện dành cho những người có độ tuổi từ 50 trở lên. Gói khám này giúp phát hiện sớm các bệnh lý thường gặp ở độ tuổi cao như loãng xương, ung thư, bệnh gan, bệnh thận,... để có thể can thiệp và điều trị kịp thời, đảm bảo sức khỏe và tăng tuổi thọ cho người sử dụng dịch vụ.',
        0, 'Gói khám sức khỏe toàn diện Nâng cao cho người từ 50 tuổi trở lên', 25000000, 25,
        'Gói khám sức khỏe toàn diện Nâng cao dành cho người có độ tuổi từ 50 trở lên', 1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        2, 18, 'https://digital.fpt.com.vn/wp-content/uploads/2020/07/trainghiemkh.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Gói khám sức khỏe tổng quát Nâng cao cho người từ 40 tuổi trở lên và có tiền sử bệnh lý gia đình',
        '07/03/2023',
        'Gói khám sức khỏe tổng quát Nâng cao là gói khám sức khỏe toàn diện dành cho những người có độ tuổi từ 40 trở lên và có tiền sử bệnh lý gia đình. Gói khám này giúp phát hiện sớm các bệnh lý thường gặp ở độ tuổi cao như bệnh tim mạch, tiểu đường, cao huyết áp, đột quỵ, ung thư,... để có thể can thiệp và điều trị kịp thời, đảm bảo sức khỏe và tăng tuổi thọ cho người sử dụng dịch vụ.',
        0, 'Gói khám sức khỏe toàn diện Nâng cao cho người từ 40 tuổi trở lên và có tiền sử bệnh lý gia đình', 28000000,
        20, 'Gói khám sức khỏe toàn diện Nâng cao dành cho người từ 40 tuổi trở lên và có tiền sử bệnh lý gia đình', 1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        2, 18, 'https://odinland.vn/wp-content/uploads/2020/06/110023605_doc_computer.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Người có gia đình có tiền sử bệnh lý và cần kiểm tra sức khỏe định kỳ', '12/04/2023',
        'Gói khám sức khỏe tổng quát Nâng cao là gói khám sức khỏe toàn diện dành cho những người có gia đình có tiền sử bệnh lý và cần kiểm tra sức khỏe định kỳ. Gói khám này giúp phát hiện sớm các bệnh lý thường gặp để có thể can thiệp và điều trị kịp thời, đảm bảo sức khỏe và tăng tuổi thọ cho người sử dụng dịch vụ.',
        0, 'Gói khám sức khỏe toàn diện Nâng cao cho người có gia đình có tiền sử bệnh lý', 20000000, 20,
        'Gói khám sức khỏe toàn diện Nâng cao dành cho người có gia đình có tiền sử bệnh lý', 1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        2, 18,
        'https://viryatechnologies.com/wp-content/uploads/2020/09/vai-tro-cua-iot-trong-cham-soc-suc-khoe-y-te.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Người có gia đình có tiền sử bệnh ung thư hoặc tiền sử bệnh lý đường tiêu hóa', '19/02/2023',
        'Gói khám sức khỏe tổng quát Nâng cao dành cho người có gia đình có tiền sử bệnh ung thư hoặc tiền sử bệnh lý đường tiêu hóa giúp phát hiện sớm các bệnh lý và cung cấp các giải pháp điều trị sớm, giúp tăng cường sức khỏe và kéo dài tuổi thọ cho người sử dụng dịch vụ.',
        0,
        'Gói khám sức khỏe toàn diện Nâng cao cho người có gia đình có tiền sử bệnh ung thư hoặc tiền sử bệnh lý đường tiêu hóa',
        30000000, 20,
        'Gói khám sức khỏe toàn diện Nâng cao dành cho người có gia đình có tiền sử bệnh ung thư hoặc tiền sử bệnh lý đường tiêu hóa',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        2, 18, 'https://tieuduong.net/wp-content/uploads/2020/03/benh-tieu-duong-o-nguoi-gia.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho nữ giới, đáp ứng nhu cầu kiểm tra cơ bản (theo thông tư 14 của Bộ Y tế)', '11/03/2023',
        'Gói khám sức khoẻ tổng quát Tiêu chuẩn nữ tuổi được thực hiện bởi các bác sĩ chuyên môn giỏi, trình độ cao của Vinmec, giúp đánh giá chính xác về tình trạng sức khỏe chung cũng như chức năng của các cơ quan trong cơ thể đồng thời phát hiện sớm một số bệnh lý nguy hiểm liên quan đến vú.',
        0,
        'Gói khám sức khỏe tổng quát Tiêu chuẩn Nữ',
        30000000, 20,
        'Gói khám sức khoẻ tổng quát Tiêu chuẩn nữ tuổi được thực hiện bởi các bác sĩ chuyên môn giỏi, trình độ cao của Vinmec, giúp đánh giá chính xác về tình trạng sức khỏe chung cũng như chức năng của các cơ quan trong cơ thể đồng thời phát hiện sớm một số bệnh lý nguy hiểm liên quan đến vú.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        3, 18, 'https://kienthuctieuduong.vn/wp-content/uploads/2018/09/tieu-duong-co-chua-duoc-khong-2.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho nữ giới, kiểm tra ung thư cổ tử cung', '11/03/2023',
        'Gói khám sức khoẻ bao gồm xét nghiệm và siêu âm để kiểm tra sự tồn tại của khối u và ung thư cổ tử cung, đặc biệt phù hợp cho phụ nữ trên 30 tuổi.',
        0,
        'Gói kiểm tra ung thư cổ tử cung cho phụ nữ',
        5000000, 10,
        'Gói khám sức khoẻ bao gồm xét nghiệm và siêu âm để kiểm tra sự tồn tại của khối u và ung thư cổ tử cung, đặc biệt phù hợp cho phụ nữ trên 30 tuổi.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        3, 18, 'https://suckhoedoisong.qltns.mediacdn.vn/Images/nguyenkhanh/2017/02/23/dai_thao_duong_o_tre_em_1.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho nữ giới, kiểm tra ung thư vú', '11/03/2023',
        'Gói khám sức khoẻ bao gồm các xét nghiệm và siêu âm để kiểm tra sự tồn tại của khối u và ung thư vú, đặc biệt phù hợp cho phụ nữ trên 40 tuổi.',
        0, 'Gói kiểm tra ung thư vú cho phụ nữ', 3500000, 10,
        'Gói khám sức khoẻ bao gồm các xét nghiệm và siêu âm để kiểm tra sự tồn tại của khối u và ung thư vú, đặc biệt phù hợp cho phụ nữ trên 40 tuổi.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        3, 18,
        'https://api.genetica.asia/storage/bien-chung-cua-benh-tieu-duong-1626769247jOteP.jpg?width=1220');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Khám sức khoẻ tổng quát cho phụ nữ', '29/03/2023',
        'Gói khám sức khoẻ bao gồm xét nghiệm, siêu âm, đo huyết áp, đo đường huyết, khám nội tiết tố, đặc biệt phù hợp cho phụ nữ trên 35 tuổi.',
        0,
        'Gói khám sức khoẻ tổng quát cho phụ nữ',
        3500000, 12,
        'Gói khám sức khoẻ bao gồm xét nghiệm, siêu âm, đo huyết áp, đo đường huyết, khám nội tiết tố, đặc biệt phù hợp cho phụ nữ trên 35 tuổi.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        3, 18, 'https://cdn1.youmed.vn/tin-tuc/wp-content/uploads/2021/08/on-dinh-duong-huyet-8.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Gói tư vấn về kế hoạch hóa gia đình', '02/02/2023',
        'Gói tư vấn về kế hoạch hóa gia đình gồm xét nghiệm nội tiết tố, tư vấn về phương pháp tránh thai, tư vấn về sinh sản và sản phẩm bảo vệ sức khỏe cho phụ nữ.',
        0,
        'Gói tư vấn về kế hoạch hóa gia đình cho phụ nữ',
        2000000, 17,
        'Gói tư vấn về kế hoạch hóa gia đình gồm xét nghiệm nội tiết tố, tư vấn về phương pháp tránh thai, tư vấn về sinh sản và sản phẩm bảo vệ sức khỏe cho phụ nữ.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8hh00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        3, 18, 'https://api.genetica.asia/storage/tieu-duong-thai-ky-1636959630R7bBg.jpg?width=680');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Gói xét nghiệm khảo sát sức khỏe phụ khoa', '14/03/2023',
        'Gói xét nghiệm khảo sát sức khỏe phụ khoa gồm xét nghiệm Pap smear, xét nghiệm vi khuẩn phụ khoa và các xét nghiệm khác để phát hiện các vấn đề về sức khỏe sinh sản của phụ nữ.',
        0,
        'Gói xét nghiệm khảo sát sức khỏe phụ khoa',
        2500000, 6,
        'Gói xét nghiệm khảo sát sức khỏe phụ khoa gồm xét nghiệm Pap smear, xét nghiệm vi khuẩn phụ khoa và các xét nghiệm khác để phát hiện các vấn đề về sức khỏe sinh sản của phụ nữ.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        3, 18, 'https://images2.thanhnien.vn/zoom/700_438/Uploaded/ngocthanh/2022_02_05/tieu-duong-1311.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho người trên 18 tuổi, đáp ứng nhu cầu kiểm tra cơ bản (theo thông tư 14 của Bộ Y tế)', '13/03/2023',
        'Gói khám sức khoẻ tổng quát Tiêu chuẩn được thực hiện bởi các bác sĩ chuyên môn giỏi, trình độ cao của Vinmec, giúp đánh giá chính xác về tình trạng sức khỏe chung cũng như chức năng của các cơ quan trong cơ thể đồng thời phát hiện sớm một số bệnh lý nguy hiểm liên quan đến gan, máu, dạ dày...',
        0,
        'Gói khám sức khỏe tổng quát Tiêu chuẩn Nam',
        2500000, 14,
        'Gói khám sức khoẻ tổng quát Tiêu chuẩn được thực hiện bởi các bác sĩ chuyên môn giỏi, trình độ cao của VMT Healthy Care, giúp đánh giá chính xác về tình trạng sức khỏe chung cũng như chức năng của các cơ quan trong cơ thể đồng thời phát hiện sớm một số bệnh lý nguy hiểm liên quan đến gan, máu, dạ dày...',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        4, 18,
        'https://login.medlatec.vn//ImagePath/images/20220506/20220506_benh-tieu-duong-co-chua-duoc-khong-2.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho nam từ 40 tuổi trở lên, có tiền sử về bệnh lý gia đình và đang trong độ tuổi cao risk', '15/03/2023',
        'Gói khám sức khỏe nam cao cấp bao gồm các dịch vụ khám tổng quát, khám tâm lý, siêu âm đại tràng, thử nghiệm sàng lọc ung thư tiền liệt tuyến, điều trị thoái hóa đốt sống cổ và đau lưng...',
        0,
        'Gói khám sức khỏe nam cao cấp',
        7000000, 14,
        'Gói khám sức khỏe nam cao cấp bao gồm các dịch vụ khám tổng quát, khám tâm lý, siêu âm đại tràng, thử nghiệm sàng lọc ung thư tiền liệt tuyến, điều trị thoái hóa đốt sống cổ và đau lưng...',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        4, 18, 'https://www.vinamilk.com.vn/sua-bot-nguoi-lon-vinamilk/wp-content/uploads/2017/08/nguyen-nhan-1.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho nam từ 20 đến 50 tuổi', '19/03/2023',
        'Gói khám sức khoẻ nam cơ bản bao gồm kiểm tra toàn diện về sức khỏe nam giới như xét nghiệm tình trạng gan, thận, giáp, tuyến tiền liệt, hệ tiêu hóa và hệ miễn dịch; đánh giá tình trạng sức khỏe tâm lý và trí não; cung cấp các khuyến nghị và lời khuyên về chế độ ăn uống, lối sống, tập luyện; giúp phát hiện sớm các bệnh lý nam khoa, ung thư tiền liệt tuyến, tổn thương mô tinh hoàn, vô sinh nam...',
        0,
        'Gói khám sức khỏe nam cơ bản',
        3500000, 15,
        'Gói khám sức khoẻ nam cơ bản bao gồm kiểm tra toàn diện về sức khỏe nam giới như xét nghiệm tình trạng gan, thận, giáp, tuyến tiền liệt, hệ tiêu hóa và hệ miễn dịch; đánh giá tình trạng sức khỏe tâm lý và trí não; cung cấp các khuyến nghị và lời khuyên về chế độ ăn uống, lối sống, tập luyện; giúp phát hiện sớm các bệnh lý nam khoa, ung thư tiền liệt tuyến, tổn thương mô tinh hoàn, vô sinh nam...',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        4, 18,
        'https://login.medlatec.vn//ImagePath/images/20220506/20220506_nhieu-nam-gioi-qua-lo-lang-khi-kham-nam-khoa-2.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho nam từ 40 tuổi trở lên', '01/03/2023',
        'Gói khám sức khỏe nam đặc biệt dành cho nam giới từ 40 tuổi trở lên, giúp đánh giá toàn diện tình trạng sức khỏe của nam giới. Gói khám bao gồm khám toàn diện các bộ phận trong cơ thể, đánh giá chức năng gan, thận và các giải pháp tốt nhất để phòng ngừa bệnh lý ung thư, bệnh lý tiểu đường, bệnh lý về tiêu hóa...',
        0,
        'Gói khám sức khỏe nam đặc biệt',
        3500000, 12,
        'Gói khám sức khỏe nam đặc biệt dành cho nam giới từ 40 tuổi trở lên, giúp đánh giá toàn diện tình trạng sức khỏe của nam giới. Gói khám bao gồm khám toàn diện các bộ phận trong cơ thể, đánh giá chức năng gan, thận và các giải pháp tốt nhất để phòng ngừa bệnh lý ung thư, bệnh lý tiểu đường, bệnh lý về tiêu hóa...',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        4, 18, 'https://tamanhhospital.vn/wp-content/uploads/2021/06/dieu-tri-benh-dai-thao-duong.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho nam từ 18 tuổi trở lên', '16/03/2023',
        'Gói khám nam giới cơ bản được thực hiện bởi các bác sĩ chuyên môn giỏi, trình độ cao của Vinmec, giúp đánh giá chính xác tình trạng sức khỏe cơ bản của nam giới. Gói khám bao gồm khám toàn diện bộ phận sinh dục nam, đánh giá sức khỏe tim mạch, hô hấp, tiêu hóa, thần kinh và xét nghiệm máu và nước tiểu.',
        0,
        'Gói khám nam giới cơ bản', 1500000, 5,
        'Được thực hiện bởi các bác sĩ chuyên môn giỏi, trình độ cao của VMT Healthy Care, giúp đánh giá chính xác tình trạng sức khỏe cơ bản của nam giới.',
        2,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        4, 18,
        'https://login.medlatec.vn/ImagePath/imageslead/20210824/20210824_nhung-luu-y-benh-nhan-tieu-duong-trong-mua-dich-1.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Nam giới trên 40 tuổi, có tiền sử về bệnh tim mạch hoặc gia đình có người mắc bệnh tim mạch', '19/04/2023',
        'Gói khám tim mạch đầy đủ và chuyên sâu với các phương pháp kiểm tra hiện đại như siêu âm tim, ECG, xét nghiệm máu và chẩn đoán hình ảnh giúp đánh giá toàn diện về sức khỏe tim mạch và phát hiện sớm các vấn đề tim mạch nguy hiểm.',
        0,
        'Gói khám tim mạch đầy đủ cho nam giới',
        5000000, 14,
        'Gói khám tim mạch đầy đủ và chuyên sâu với các phương pháp kiểm tra hiện đại như siêu âm tim, ECG, xét nghiệm máu và chẩn đoán hình ảnh giúp đánh giá toàn diện về sức khỏe tim mạch và phát hiện sớm các vấn đề tim mạch nguy hiểm.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        4, 1,
        'https://cdn.nhathuoclongchau.com.vn/unsafe/filters:quality(95)/https://cms-prod.s3-sgn09.fptcloud.com/luoi_van_dong_gay_nguy_co_dai_thao_duong_1_cdb3aa7d94.png');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho người từ 40 tuổi, có nhu cầu kiểm tra sức khỏe toàn diện', '12/01/2023',
        'Gói khám sức khỏe tổng quát Toàn diện của VMT Healthy Care hoàn toàn khác với việc thực hiện kiểm tra sức khỏe thông thường. Chương trình được thiết kế có tính khoa học và tính thực tiễn để tiếp cận được toàn bộ tình trạng sức khỏe của bạn, đồng thời phát hiện sớm, can thiệp, điều trị kịp thời nhằm làm giảm đến mức tối thiểu những biến chứng của những bệnh hiểm nghèo đe dọa cuộc sống của bạn.',
        0,
        'Gói khám sức khỏe tổng quát Toàn diện',
        5000000, 7,
        'Gói khám sức khỏe tổng quát Toàn diện của VMT Healthy Care hoàn toàn khác với việc thực hiện kiểm tra sức khỏe thông thường. Chương trình được thiết kế có tính khoa học và tính thực tiễn để tiếp cận được toàn bộ tình trạng sức khỏe của bạn, đồng thời phát hiện sớm, can thiệp, điều trị kịp thời nhằm làm giảm đến mức tối thiểu những biến chứng của những bệnh hiểm nghèo đe dọa cuộc sống của bạn.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        5, 18,
        'https://okiaglobal.com/wp-content/uploads/2022/03/benh-tieu-duong-o-nguoi-cao-tuoi.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho bệnh nhân tim mạch', '12/04/2023',
        'Gói khám sức khỏe tim mạch của VMT Healthy Care giúp đánh giá tình trạng tim mạch của bạn, xác định các yếu tố nguy cơ và đưa ra các giải pháp phòng ngừa và điều trị tối ưu. Chương trình bao gồm các bài kiểm tra tim mạch, siêu âm tim, xét nghiệm máu, thử nghiệm chức năng gan và nhiều hơn nữa.',
        0,
        'Gói khám sức khỏe tim mạch',
        3000000, 5,
        'Gói khám sức khỏe tim mạch của VMT Healthy Care giúp đánh giá tình trạng tim mạch của bạn, xác định các yếu tố nguy cơ và đưa ra các giải pháp phòng ngừa và điều trị tối ưu.',
        3,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        5, 1,
        'https://tieuduongdiasure.com/wp-content/uploads/2023/01/D5.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho người bị đau lưng', '14/02/2023',
        'Gói khám sức khỏe đau lưng của VMT Healthy Care giúp đánh giá tình trạng đau lưng của bạn, xác định nguyên nhân và đưa ra các giải pháp phòng ngừa và điều trị tối ưu. Chương trình bao gồm các bài kiểm tra sức khỏe chung, siêu âm, xét nghiệm máu và thử nghiệm chức năng cơ thể để đánh giá tình trạng đau lưng của bạn.',
        0,
        'Gói khám sức khỏe đau lưng',
        2500000, 3,
        'Gói khám sức khỏe đau lưng của VMT Healthy Care giúp đánh giá tình trạng đau lưng của bạn, xác định nguyên nhân và đưa ra các giải pháp phòng ngừa và điều trị tối ưu.',
        2,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        5, 17,
        'https://vinabook.edu.vn/wp-content/uploads/2020/06/unnamed-1-1.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Dành cho phụ nữ mang thai', '14/02/2023',
        'Gói khám sức khỏe phụ khoa cho phụ nữ mang thai của VMT Healthy Care giúp đánh giá sức khỏe tổng quát của mẹ và thai nhi, phát hiện sớm các vấn đề liên quan đến thai kỳ và đưa ra các giải pháp phòng ngừa và điều trị tối ưu. Chương trình bao gồm các bài kiểm tra sức khỏe chung, siêu âm, xét nghiệm máu và thử nghiệm chức năng cơ thể để đánh giá sức khỏe của mẹ và thai nhi.',
        0,
        'Gói khám sức khỏe phụ khoa cho phụ nữ mang thai',
        3000000, 2,
        'Gói khám sức khỏe phụ khoa cho phụ nữ mang thai của VMT Healthy Care giúp đánh giá sức khỏe tổng quát của mẹ và thai nhi, phát hiện sớm các vấn đề liên quan đến thai kỳ và đưa ra các giải pháp phòng ngừa và điều trị tối ưu.',
        3,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        5, 13,
        'https://binhphuoc.gov.vn/uploads/binhphuoc/news/2022_03/anh_minh_hoa_ttx-1647499292849.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Khám và chữa bệnh đường tiêu hóa', '16/01/2023',
        'Gói khám và chữa bệnh đường tiêu hóa của VMT Healthy Care bao gồm các bài kiểm tra sức khỏe chung, siêu âm, xét nghiệm máu và các xét nghiệm chức năng cơ thể để đánh giá sức khỏe tổng quát và phát hiện sớm các vấn đề liên quan đến đường tiêu hóa. Chương trình cũng cung cấp các giải pháp điều trị tối ưu cho các bệnh lý đường tiêu hóa.',
        0,
        'Gói khám và chữa bệnh đường tiêu hóa',
        2500000, 10,
        'Gói khám và chữa bệnh đường tiêu hóa của VMT Healthy Care bao gồm các bài kiểm tra sức khỏe chung, siêu âm, xét nghiệm máu và các xét nghiệm chức năng cơ thể để đánh giá sức khỏe tổng quát và phát hiện sớm các vấn đề liên quan đến đường tiêu hóa.',
        2,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        5, 3,
        'https://omron-yte.com.vn/wp-content/uploads/2014/04/816515.jpeg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Người bệnh ung thư', '12/04/2023',
        'Gói khám và điều trị bệnh ung thư của VMT Healthy Care cung cấp các dịch vụ khám, chẩn đoán và điều trị bệnh ung thư. Chương trình bao gồm các bài kiểm tra sức khỏe chung, siêu âm, xét nghiệm máu và các xét nghiệm chức năng cơ thể để đánh giá sức khỏe tổng quát và phát hiện sớm bệnh ung thư. Chúng tôi sử dụng các phương pháp chữa trị hiện đại và tiên tiến nhất như phẫu thuật, hóa trị và xạ trị để đảm bảo hiệu quả cao nhất trong quá trình điều trị bệnh ung thư.',
        0,
        'Gói khám và điều trị bệnh ung thư',
        15000000, 11,
        'Cung cấp các dịch vụ khám, chẩn đoán và điều trị bệnh ung thư. Sử dụng các phương pháp chữa trị hiện đại và tiên tiến nhất.',
        2,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        5, 16,
        'https://ala-pro.vn/static/uploads/editor/ti%E1%BB%83u%20%C4%91%C6%B0%E1%BB%9Dng%201a.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Gói khám sức khỏe tổng quát dành cho trẻ em dưới 18 tuổi.', '17/02/2023',
        'Trong gói khám sức khỏe, bé yêu của bạn sẽ được khám toàn diện, từ mắt, răng miệng, huyết áp, cân nặng đến làm các xét nghiệm cần thiết, kết hợp với chẩn đoán bằng hình ảnh. Gói khám giúp bạn kiểm tra tổng thể sức khỏe cho bé, sàng lọc triệu chứng để sớm phát hiện và điều trị nếu cần.',
        0,
        'Gói khám sức khỏe tổng quát Trẻ em',
        2500000, 11,
        'Trong gói khám sức khỏe, bé yêu của bạn sẽ được khám toàn diện, từ mắt, răng miệng, huyết áp, cân nặng đến làm các xét nghiệm cần thiết, kết hợp với chẩn đoán bằng hình ảnh. Gói khám giúp bạn kiểm tra tổng thể sức khỏe cho bé, sàng lọc triệu chứng để sớm phát hiện và điều trị nếu cần.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        6, 18,
        'https://nld.mediacdn.vn/291774122806476800/2021/10/17/16-anh-chot-17-10-16344778842762048356313.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Khám và tư vấn dinh dưỡng cho trẻ em', '11/03/2023',
        'Trẻ em cần có chế độ dinh dưỡng đúng cách để phát triển và phòng chống bệnh tật. Gói khám và tư vấn dinh dưỡng của VMT Healthy Care sẽ giúp cha mẹ hiểu rõ hơn về chế độ dinh dưỡng phù hợp cho trẻ em của mình, đồng thời cũng cung cấp những giải pháp và sản phẩm dinh dưỡng tốt nhất cho trẻ.',
        0,
        'Khám và tư vấn dinh dưỡng cho trẻ em',
        1500000, 10,
        'Cung cấp thông tin và giải đáp thắc mắc về dinh dưỡng cho trẻ em, tư vấn chế độ dinh dưỡng phù hợp và cung cấp sản phẩm dinh dưỡng.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        6, 18,
        'https://lsnk4ojchwvod.vcdn.cloud/Mam/VNEWS/attach/upload/22032022080330/10fa0158-7066-45cd-8472-9608687d0856-146.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Khám và điều trị các bệnh lý ngoài da cho trẻ em', '17/02/2023',
        'Da là bề mặt tiếp xúc trực tiếp với môi trường bên ngoài, vì thế, trẻ em rất dễ bị các bệnh lý ngoài da như: viêm da cơ địa, bệnh dị ứng da, nấm da, mụn nhọt,… Khám và điều trị các bệnh lý ngoài da cho trẻ em là dịch vụ chuyên sâu của VMT Healthy Care.',
        0,
        'Khám và điều trị các bệnh lý ngoài da cho trẻ em',
        3500000, 8,
        'Cung cấp các dịch vụ Khám và điều trị các bệnh lý ngoài da cho trẻ em là dịch vụ chuyên sâu của VMT Healthy Care.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        6, 8,
        'https://isofhcare-backup.s3-ap-southeast-1.amazonaws.com/images/kham-da-lieu-cho-be_af87da37_b076_40c8_b12d_d04f6eec64f2.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Khám và điều trị các bệnh lý tiêu hóa cho trẻ em', '19/02/2023',
        'Các bệnh lý về tiêu hóa là phổ biến ở trẻ em, gây ra nhiều phiền toái cho trẻ và gia đình. Chúng tôi cung cấp dịch vụ khám và điều trị các bệnh lý tiêu hóa cho trẻ em để giúp trẻ phục hồi sức khỏe nhanh chóng.',
        0,
        'Khám và điều trị các bệnh lý tiêu hóa cho trẻ em',
        2500000, 9,
        'Cung cấp dịch vụ Khám và điều trị các bệnh lý tiêu hóa cho trẻ em để giúp trẻ phục hồi sức khỏe nhanh chóng.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        6, 15,
        'https://soyte.namdinh.gov.vn/Uploads/2019/12/8/27/menb.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Khám và chăm sóc răng miệng cho trẻ em', '20/04/2023',
        'Răng miệng là bộ phận quan trọng của cơ thể, đặc biệt là đối với trẻ em trong giai đoạn phát triển. Khám và chăm sóc răng miệng cho trẻ em giúp phát hiện và điều trị kịp thời các bệnh về răng miệng như sâu răng, viêm nha chu, sưng lợi,... giúp trẻ có hàm răng khỏe mạnh, giảm nguy cơ mắc các bệnh lý răng miệng trong tương lai.',
        0,
        'Khám và chăm sóc răng miệng cho trẻ em',
        2500000, 17,
        'Cung cấp các dịch vụ Khám và chăm sóc răng miệng cho trẻ em giúp phát hiện và điều trị kịp thời các bệnh về răng miệng như sâu răng, viêm nha chu, sưng lợi,... giúp trẻ có hàm răng khỏe mạnh, giảm nguy cơ mắc các bệnh lý răng miệng trong tương lai.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        6, 14,
        'https://nhakhoanhantam.com/stmresource/files/tre-em/tre-em-moc-rang-sua-ham-tren-hay-ham-duoi-truoc-1.jpg');
INSERT INTO `vmt_healthy_care_systems`.`services` (`applicable_object`, `date`, `details`, `flag_delete`, `name`,
                                                   `prices`, `quantity`, `sub_title`, `time`, `time_use`, `category_id`,
                                                   `departments_id`, `img`)
VALUES ('Phòng và điều trị bệnh hen suyễn cho trẻ em', '26/02/2023',
        'Hen suyễn là một trong những căn bệnh thường gặp ở trẻ em, gây ra tình trạng khó thở và ho liên tục. Để giúp trẻ vượt qua bệnh hen suyễn, VMT Healthy Care cung cấp dịch vụ phòng và điều trị bệnh hen suyễn cho trẻ em với đội ngũ bác sỹ chuyên môn và trang thiết bị hiện đại.',
        0,
        'Phòng và điều trị bệnh hen suyễn cho trẻ em',
        2500000, 11,
        'Cung cấp các dịch vụ phòng và điều trị bệnh hen suyễn cho trẻ em là dịch vụ chuyên sâu của VMT Healthy Care.',
        1,
        'Theo thời gian làm việc của VMT Healthy Care: Từ 8h00 đến 17h00 từ thứ 2 đến thứ 6 và sáng thứ 7 (từ 8h00 đến 12h00). Khách hàng vui lòng liên hệ với hotline VMT Healthy Care để biết thông tin chi tiết.',
        6,10,
        'https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2022/2/19/thuoc-tri-hen-phe-quan-1-16452605541692021830743-0-0-406-650-crop-1645260558718509464728.png');





