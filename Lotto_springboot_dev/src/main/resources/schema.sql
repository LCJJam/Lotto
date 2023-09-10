CREATE TABLE Member (

    id INT PRIMARY KEY AUTO_INCREMENT,
                       nickname VARCHAR(50) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       password VARCHAR(100) NOT NULL ,
                       authority VARCHAR(20) ,
                       registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       last_login TIMESTAMP,
                       is_active BOOLEAN DEFAULT TRUE
);

commit;

INSERT INTO Member (nickname, email, password, authority, last_login)
VALUES ('john_doe', 'token-test@test.com', 'hashed_password_123','ROLE_ADMIN', CURRENT_TIMESTAMP);

INSERT INTO Member (nickname, email, password, authority, last_login)
VALUES ('jane_smith', 'jane@example.com', 'hashed_password_456','ROLE_ADMIN', CURRENT_TIMESTAMP);

commit;

CREATE TABLE game (
                               round INT AUTO_INCREMENT PRIMARY KEY,
                               ball_num1 INT NOT NULL,
                               ball_num2 INT NOT NULL,
                               ball_num3 INT NOT NULL,
                               ball_num4 INT NOT NULL,
                               ball_num5 INT NOT NULL,
                               ball_num6 INT NOT NULL,
                               bonus_num INT NOT NULL,
                               yyyy VARCHAR(4),
                               drw_no_date VARCHAR(10),
                               first_accumamnt LONG,
                               first_przwner_co INT,
                               second_accumamnt INT,
                               second_przwner_co INT,
                               third_accumamnt INT,
                               third_przwner_co INT,
                               fourth_accumamnt INT,
                               fourth_przwner_co INT,
                               fifth_accumamnt INT,
                               fifth_przwner_co INT,
                               etc VARCHAR(50)
);

commit;

INSERT INTO game (ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, bonus_num, yyyy, drw_no_date, first_accumamnt, first_przwner_co, second_accumamnt, second_przwner_co, third_accumamnt, third_przwner_co, fourth_accumamnt, fourth_przwner_co, fifth_accumamnt, fifth_przwner_co, etc)
VALUES
    (5, 12, 18, 22, 30, 42, 7, '2023', '2023-09-01', 2000000000, 5 , 10000000, 50, 500000, 100, 50000, 1000, 5000, 200, 'Sample Data 1'),
    (8, 15, 19, 25, 32, 48, 3, '2023', '2023-08-30', 1500000000, 3 , 8000000 , 40, 400000, 80 , 50000, 800 , 5000, 150, 'Sample Data 2'),
    (2,  9, 14, 27, 35, 44, 6, '2023', '2023-08-25', 1800000000, 7 , 9000000 , 60, 600000, 120, 50000, 900 , 5000, 180, 'Sample Data 3'),
    (10,17, 20, 29, 37, 45, 1, '2023', '2023-08-23', 2200000000, 10, 11000000, 80, 800000, 160, 50000, 1100, 5000, 220, 'Sample Data 4'),
    (4, 11, 16, 26, 34, 47, 2, '2023', '2023-08-20', 1900000000, 6 , 9500000 , 70, 700000, 140, 50000, 950 , 5000, 190, 'Sample Data 5'),
    (7, 13, 21, 28, 36, 46, 9, '2023', '2023-08-18', 2100000000, 9 , 10500000, 75, 750000, 150, 50000, 1050, 5000, 210, 'Sample Data 6'),
    (3, 14, 19, 30, 38, 41, 4, '2023', '2023-08-16', 1700000000, 4 , 8500000 , 45, 450000, 90 , 50000, 850 , 5000, 170, 'Sample Data 7'),
    (6, 12, 22, 31, 39, 49, 5, '2023', '2023-08-13', 2300000000, 12, 12000000, 90, 900000, 180, 50000, 1200, 5000, 230, 'Sample Data 8'),
    (1, 10, 17, 24, 33, 40, 8, '2023', '2023-08-11', 1600000000, 2 , 8000000 , 35, 350000, 70 , 50000, 800 , 5000, 160, 'Sample Data 9'),
    (9, 16, 20, 28, 35, 43, 7, '2023', '2023-08-09', 2000000000, 8 , 10000000, 55, 550000, 110, 50000, 1000, 5000, 200, 'Sample Data 10'),
    (5, 13, 18, 26, 34, 42, 3, '2023', '2023-08-06', 1900000000, 6 , 9500000 , 45, 450000, 90 , 50000, 950 , 5000, 190, 'Sample Data 11'),
    (8, 15, 21, 29, 37, 44, 2, '2023', '2023-08-04', 2100000000, 9 , 10500000, 70, 700000, 140, 50000, 1050, 5000, 210, 'Sample Data 12'),
    (2, 11, 16, 27, 36, 46, 1, '2023', '2023-08-02', 2300000000, 12, 12000000, 80, 800000, 160, 50000, 1200, 5000, 230, 'Sample Data 13'),
    (10,12, 19, 25, 32, 48, 6, '2023', '2023-07-30', 1500000000, 3 , 8000000 , 40, 400000, 80 , 50000, 800 , 5000, 150, 'Sample Data 14'),
    (4, 14, 20, 30, 38, 45, 5, '2023', '2023-07-28', 2200000000, 10, 11000000, 50, 500000, 100, 50000, 1100, 5000, 220, 'Sample Data 15'),
    (7, 17, 22, 31, 39, 41, 8, '2023', '2023-07-25', 1600000000, 2 , 8000000 , 60, 600000, 120, 50000, 600 , 5000, 160, 'Sample Data 16'),
    (3, 13, 18, 24, 33, 47, 4, '2023', '2023-07-23', 1800000000, 7 , 9000000 , 75, 750000, 150, 50000, 900 , 5000, 180, 'Sample Data 17'),
    (8, 12, 17, 24, 31, 49, 5, '2023', '2023-07-18', 2000000000, 8 , 10000000, 55, 550000, 110, 50000, 550 , 5000, 200, 'Sample Data 18'),
    (1, 13, 19, 26, 35, 42, 2, '2023', '2023-07-16', 1700000000, 5 , 8500000 , 45, 450000, 90 , 50000, 850 , 5000, 170, 'Sample Data 19'),
    (9, 16, 20, 28, 36, 44, 7, '2023', '2023-07-13', 2200000000, 10, 11000000, 70, 700000, 140, 50000, 1100, 5000, 220, 'Sample Data 20'),
    (3,  9, 15, 21, 27, 33, 6, '2023', '2023-07-10', 1800000000, 7 , 9000000 , 60, 600000, 120, 50000, 700 , 5000, 180, 'Sample Data 21');

commit;

CREATE TABLE my_game (
    email VARCHAR(100) ,
    round INT,
    first_game_grade INT,
    second_game_grade INT,
    third_game_grade INT,
    fourth_game_grade INT,
    fifth_game_grade INT,
    total_winnings long,
    drw_no_date VARCHAR(10),
    primary key (email, round)
);

CREATE INDEX idx_my_game on my_game (email);

commit;

-- 1번 데이터 삽입
INSERT INTO my_game (email, round, first_game_grade, second_game_grade, third_game_grade, fourth_game_grade, fifth_game_grade, total_winnings, drw_no_date)
VALUES ('dlckd125@nate.com', 1, 5, 10, 15, 20, 25, 50000, '2023-09-10');

-- 2번 데이터 삽입
INSERT INTO my_game (email, round, first_game_grade, second_game_grade, third_game_grade, fourth_game_grade, fifth_game_grade, total_winnings, drw_no_date)
VALUES ('dlckd159@gmail.com', 1, 2, 7, 14, 19, 24, 25000, '2023-09-10');

-- 3번 데이터 삽입
INSERT INTO my_game (email, round, first_game_grade, second_game_grade, third_game_grade, fourth_game_grade, fifth_game_grade, total_winnings, drw_no_date)
VALUES ('dlckd125@nate.com', 2, 3, 8, 13, 18, 23, 10000, '2023-09-17');

-- 4번 데이터 삽입
INSERT INTO my_game (email, round, first_game_grade, second_game_grade, third_game_grade, fourth_game_grade, fifth_game_grade, total_winnings, drw_no_date)
VALUES ('dlckd159@gmail.com', 2, 1, 6, 12, 17, 22, 5000, '2023-09-17');

commit;

CREATE TABLE my_game_detail (
                                email VARCHAR(100) ,
                                round INT NOT NULL,
                                game_num INT NOT NULL,
                                ball_num1 INT NOT NULL,
                                ball_num2 INT NOT NULL,
                                ball_num3 INT NOT NULL,
                                ball_num4 INT NOT NULL,
                                ball_num5 INT NOT NULL,
                                ball_num6 INT NOT NULL,
                                PRIMARY KEY (email, round, game_num)
);

CREATE INDEX idx_my_game_detail on my_game_detail (email, round);

commit;

-- 1번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd125@nate.com', 1, 1, 5, 10, 15, 20, 25, 30);

-- 2번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd125@nate.com', 1, 2, 7, 14, 19, 24, 29, 34);

-- 3번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd125@nate.com', 1, 3, 9, 16, 21, 26, 31, 36);

-- 4번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd125@nate.com', 2, 1, 2, 7, 12, 18, 24, 30);

-- 5번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd125@nate.com', 2, 2, 4, 9, 14, 20, 26, 32);

-- 6번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd159@gmail.com', 1, 1, 1, 6, 11, 17, 23, 29);

-- 7번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd159@gmail.com', 1, 2, 3, 8, 13, 19, 25, 31);

-- 8번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd159@gmail.com', 2, 1, 5, 10, 15, 20, 25, 30);

-- 9번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd159@gmail.com', 2, 2, 7, 14, 19, 24, 29, 34);

-- 10번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd159@gmail.com', 2, 3, 9, 16, 21, 26, 31, 36);

commit;