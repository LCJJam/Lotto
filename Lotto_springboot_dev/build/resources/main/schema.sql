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
    drw_no_date VARCHAR(10) DEFAULT TO_CHAR(NOW(),'YYYY-MM-DD'),
    primary key (email, round)
);

CREATE INDEX idx_my_game on my_game (email);

commit;

-- 1번 데이터 삽입
INSERT INTO my_game (email, round, first_game_grade, second_game_grade, third_game_grade, fourth_game_grade, fifth_game_grade, total_winnings, drw_no_date)
VALUES ('dlckd125@nate.com', 1, 5, 10, 15, 20, 25, 50000, '2023-09-10');

INSERT INTO my_game (email, round, first_game_grade, second_game_grade, third_game_grade, fourth_game_grade, fifth_game_grade, total_winnings, drw_no_date)
VALUES ('dlckd125@nate.com', 22, 5, 10, 15, 20, 25, 50000, '2023-09-10');

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
                                game_grade INT DEFAULT -1,
                                game_winnings LONG DEFAULT -1,
                                PRIMARY KEY (email, round, game_num)
);

CREATE INDEX idx_my_game_detail on my_game_detail (email, round);

commit;

-- 1번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd125@nate.com', 1, 1, 5, 12, 18, 22, 30, 42);

-- 2번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd125@nate.com', 1, 2, 7, 14, 19, 24, 29, 34);

-- 3번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd125@nate.com', 1, 3, 9, 16, 21, 26, 31, 36);

-- 4번 데이터 삽입
INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd125@nate.com', 2, 1, 2, 7, 12, 18, 24, 30);

INSERT INTO my_game_detail (email, round, game_num, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6)
VALUES ('dlckd125@nate.com', 22, 1, 2, 7, 12, 18, 24, 30);

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


CREATE TABLE lotto_ball (
                            number_id INT AUTO_INCREMENT NOT NULL,
                            ball_num1 INT NOT NULL,
                            ball_num2 INT NOT NULL,
                            ball_num3 INT NOT NULL,
                            ball_num4 INT NOT NULL,
                            ball_num5 INT NOT NULL,
                            ball_num6 INT NOT NULL,
                            number_weight INT,
                            PRIMARY KEY (number_id)
);

create index idx_lotto_ball on lotto_ball (number_weight);
create index idx_lotto_ball_num on lotto_ball (ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6);

commit;

INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (1, 1, 2, 3, 4, 5, 8, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (2, 1, 2, 3, 4, 5, 7, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (3, 1, 2, 3, 4, 5, 6, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (4, 1, 2, 3, 4, 5, 9, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (5, 1, 2, 3, 4, 5, 10, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (6, 1, 2, 3, 4, 5, 12, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (7, 1, 2, 3, 4, 5, 15, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (8, 1, 2, 3, 4, 5, 11, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (9, 1, 2, 3, 4, 5, 14, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (10, 1, 2, 3, 4, 5, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (11, 1, 2, 3, 4, 5, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (12, 1, 2, 3, 4, 5, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (13, 1, 2, 3, 4, 5, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (14, 1, 2, 3, 4, 5, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (15, 1, 2, 3, 4, 5, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (16, 1, 2, 3, 4, 5, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (17, 1, 2, 3, 4, 5, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (18, 1, 2, 3, 4, 5, 16, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (19, 1, 2, 3, 4, 5, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (20, 1, 2, 3, 4, 5, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (21, 1, 2, 3, 4, 5, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (22, 1, 2, 3, 4, 5, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (23, 1, 2, 3, 4, 5, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (24, 1, 2, 3, 4, 5, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (25, 1, 2, 3, 4, 5, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (26, 1, 2, 3, 4, 5, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (27, 1, 2, 3, 4, 5, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (28, 1, 2, 3, 4, 6, 8, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (29, 1, 2, 3, 4, 6, 7, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (30, 1, 2, 3, 4, 6, 12, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (31, 1, 2, 3, 4, 5, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (32, 1, 2, 3, 4, 6, 11, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (33, 1, 2, 3, 4, 5, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (34, 1, 2, 3, 4, 6, 15, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (35, 1, 2, 3, 4, 5, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (36, 1, 2, 3, 4, 6, 14, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (37, 1, 2, 3, 4, 5, 13, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (38, 1, 2, 3, 4, 6, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (39, 1, 2, 3, 4, 6, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (40, 1, 2, 3, 4, 5, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (41, 1, 2, 3, 4, 6, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (42, 1, 2, 3, 4, 6, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (43, 1, 2, 3, 4, 6, 10, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (44, 1, 2, 3, 4, 5, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (45, 1, 2, 3, 4, 6, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (46, 1, 2, 3, 4, 6, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (47, 1, 2, 3, 4, 6, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (48, 1, 2, 3, 4, 5, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (49, 1, 2, 3, 4, 6, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (50, 1, 2, 3, 4, 5, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (51, 1, 2, 3, 4, 6, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (52, 1, 2, 3, 4, 6, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (53, 1, 2, 3, 4, 5, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (54, 1, 2, 3, 4, 6, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (55, 1, 2, 3, 4, 6, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (56, 1, 2, 3, 4, 6, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (57, 1, 2, 3, 4, 5, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (58, 1, 2, 3, 4, 6, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (59, 1, 2, 3, 4, 6, 16, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (60, 1, 2, 3, 4, 5, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (61, 1, 2, 3, 4, 6, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (62, 1, 2, 3, 4, 7, 8, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (63, 1, 2, 3, 4, 6, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (64, 1, 2, 3, 4, 5, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (65, 1, 2, 3, 4, 6, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (66, 1, 2, 3, 4, 7, 12, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (67, 1, 2, 3, 4, 6, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (68, 1, 2, 3, 4, 7, 16, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (69, 1, 2, 3, 4, 6, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (70, 1, 2, 3, 4, 5, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (71, 1, 2, 3, 4, 6, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (72, 1, 2, 3, 4, 6, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (73, 1, 2, 3, 4, 7, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (74, 1, 2, 3, 4, 7, 9, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (75, 1, 2, 3, 4, 6, 9, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (76, 1, 2, 3, 4, 7, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (77, 1, 2, 3, 4, 7, 11, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (78, 1, 2, 3, 4, 7, 13, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (79, 1, 2, 3, 4, 6, 13, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (80, 1, 2, 3, 4, 7, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (81, 1, 2, 3, 4, 7, 14, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (82, 1, 2, 3, 4, 6, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (83, 1, 2, 3, 4, 7, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (84, 1, 2, 3, 4, 7, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (85, 1, 2, 3, 4, 7, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (86, 1, 2, 3, 4, 7, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (87, 1, 2, 3, 4, 6, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (88, 1, 2, 3, 4, 7, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (89, 1, 2, 3, 4, 7, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (90, 1, 2, 3, 4, 6, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (91, 1, 2, 3, 4, 7, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (92, 1, 2, 3, 4, 7, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (93, 1, 2, 3, 4, 7, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (94, 1, 2, 3, 4, 7, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (95, 1, 2, 3, 4, 7, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (96, 1, 2, 3, 4, 7, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (97, 1, 2, 3, 4, 6, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (98, 1, 2, 3, 4, 7, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (99, 1, 2, 3, 4, 7, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (100, 1, 2, 3, 4, 8, 10, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (101, 1, 2, 3, 4, 6, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (102, 1, 2, 3, 4, 7, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (103, 1, 2, 3, 4, 6, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (104, 1, 2, 3, 4, 8, 13, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (105, 1, 2, 3, 4, 8, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (106, 1, 2, 3, 4, 7, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (107, 1, 2, 3, 4, 6, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (108, 1, 2, 3, 4, 7, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (109, 1, 2, 3, 4, 7, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (110, 1, 2, 3, 4, 8, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (111, 1, 2, 3, 4, 8, 9, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (112, 1, 2, 3, 4, 6, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (113, 1, 2, 3, 4, 8, 14, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (114, 1, 2, 3, 4, 7, 10, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (115, 1, 2, 3, 4, 8, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (116, 1, 2, 3, 4, 8, 11, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (117, 1, 2, 3, 4, 8, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (118, 1, 2, 3, 4, 8, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (119, 1, 2, 3, 4, 8, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (120, 1, 2, 3, 4, 8, 16, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (121, 1, 2, 3, 4, 7, 15, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (122, 1, 2, 3, 4, 8, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (123, 1, 2, 3, 4, 8, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (124, 1, 2, 3, 4, 8, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (125, 1, 2, 3, 4, 8, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (126, 1, 2, 3, 4, 7, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (127, 1, 2, 3, 4, 8, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (128, 1, 2, 3, 4, 7, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (129, 1, 2, 3, 4, 8, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (130, 1, 2, 3, 4, 8, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (131, 1, 2, 3, 4, 8, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (132, 1, 2, 3, 4, 7, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (133, 1, 2, 3, 4, 8, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (134, 1, 2, 3, 4, 8, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (135, 1, 2, 3, 4, 8, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (136, 1, 2, 3, 4, 8, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (137, 1, 2, 3, 4, 8, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (138, 1, 2, 3, 4, 7, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (139, 1, 2, 3, 4, 9, 10, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (140, 1, 2, 3, 4, 7, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (141, 1, 2, 3, 4, 9, 12, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (142, 1, 2, 3, 4, 9, 14, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (143, 1, 2, 3, 4, 8, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (144, 1, 2, 3, 4, 9, 16, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (145, 1, 2, 3, 4, 9, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (146, 1, 2, 3, 4, 7, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (147, 1, 2, 3, 4, 9, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (148, 1, 2, 3, 4, 9, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (149, 1, 2, 3, 4, 7, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (150, 1, 2, 3, 4, 9, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (151, 1, 2, 3, 4, 9, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (152, 1, 2, 3, 4, 7, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (153, 1, 2, 3, 4, 9, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (154, 1, 2, 3, 4, 9, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (155, 1, 2, 3, 4, 9, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (156, 1, 2, 3, 4, 8, 12, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (157, 1, 2, 3, 4, 9, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (158, 1, 2, 3, 4, 8, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (159, 1, 2, 3, 4, 8, 15, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (160, 1, 2, 3, 4, 8, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (161, 1, 2, 3, 4, 9, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (162, 1, 2, 3, 4, 9, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (163, 1, 2, 3, 4, 9, 13, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (164, 1, 2, 3, 4, 8, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (165, 1, 2, 3, 4, 9, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (166, 1, 2, 3, 4, 9, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (167, 1, 2, 3, 4, 9, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (168, 1, 2, 3, 4, 9, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (169, 1, 2, 3, 4, 9, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (170, 1, 2, 3, 4, 8, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (171, 1, 2, 3, 4, 9, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (172, 1, 2, 3, 4, 9, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (173, 1, 2, 3, 4, 10, 13, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (174, 1, 2, 3, 4, 9, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (175, 1, 2, 3, 4, 9, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (176, 1, 2, 3, 4, 8, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (177, 1, 2, 3, 4, 10, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (178, 1, 2, 3, 4, 9, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (179, 1, 2, 3, 4, 10, 14, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (180, 1, 2, 3, 4, 10, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (181, 1, 2, 3, 4, 8, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (182, 1, 2, 3, 4, 10, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (183, 1, 2, 3, 4, 9, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (184, 1, 2, 3, 4, 8, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (185, 1, 2, 3, 4, 10, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (186, 1, 2, 3, 4, 10, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (187, 1, 2, 3, 4, 10, 12, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (188, 1, 2, 3, 4, 8, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (189, 1, 2, 3, 4, 10, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (190, 1, 2, 3, 4, 10, 16, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (191, 1, 2, 3, 4, 8, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (192, 1, 2, 3, 4, 10, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (193, 1, 2, 3, 4, 10, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (194, 1, 2, 3, 4, 10, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (195, 1, 2, 3, 4, 10, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (196, 1, 2, 3, 4, 10, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (197, 1, 2, 3, 4, 9, 11, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (198, 1, 2, 3, 4, 10, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (199, 1, 2, 3, 4, 9, 15, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (200, 1, 2, 3, 4, 10, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (201, 1, 2, 3, 4, 9, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (202, 1, 2, 3, 4, 10, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (203, 1, 2, 3, 4, 10, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (204, 1, 2, 3, 4, 9, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (205, 1, 2, 3, 4, 10, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (206, 1, 2, 3, 4, 11, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (207, 1, 2, 3, 4, 9, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (208, 1, 2, 3, 4, 11, 13, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (209, 1, 2, 3, 4, 11, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (210, 1, 2, 3, 4, 9, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (211, 1, 2, 3, 4, 10, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (212, 1, 2, 3, 4, 10, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (213, 1, 2, 3, 4, 11, 16, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (214, 1, 2, 3, 4, 10, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (215, 1, 2, 3, 4, 11, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (216, 1, 2, 3, 4, 9, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (217, 1, 2, 3, 4, 10, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (218, 1, 2, 3, 4, 10, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (219, 1, 2, 3, 4, 11, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (220, 1, 2, 3, 4, 11, 12, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (221, 1, 2, 3, 4, 11, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (222, 1, 2, 3, 4, 9, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (223, 1, 2, 3, 4, 11, 15, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (224, 1, 2, 3, 4, 11, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (225, 1, 2, 3, 4, 11, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (226, 1, 2, 3, 4, 11, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (227, 1, 2, 3, 4, 11, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (228, 1, 2, 3, 4, 9, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (229, 1, 2, 3, 4, 11, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (230, 1, 2, 3, 4, 10, 11, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (231, 1, 2, 3, 4, 11, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (232, 1, 2, 3, 4, 11, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (233, 1, 2, 3, 4, 10, 15, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (234, 1, 2, 3, 4, 11, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (235, 1, 2, 3, 4, 10, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (236, 1, 2, 3, 4, 11, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (237, 1, 2, 3, 4, 11, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (238, 1, 2, 3, 4, 11, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (239, 1, 2, 3, 4, 11, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (240, 1, 2, 3, 4, 11, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (241, 1, 2, 3, 4, 11, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (242, 1, 2, 3, 4, 12, 14, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (243, 1, 2, 3, 4, 10, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (244, 1, 2, 3, 4, 12, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (245, 1, 2, 3, 4, 10, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (246, 1, 2, 3, 4, 11, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (247, 1, 2, 3, 4, 12, 13, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (248, 1, 2, 3, 4, 12, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (249, 1, 2, 3, 4, 11, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (250, 1, 2, 3, 4, 12, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (251, 1, 2, 3, 4, 10, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (252, 1, 2, 3, 4, 12, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (253, 1, 2, 3, 4, 12, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (254, 1, 2, 3, 4, 12, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (255, 1, 2, 3, 4, 12, 16, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (256, 1, 2, 3, 4, 12, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (257, 1, 2, 3, 4, 12, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (258, 1, 2, 3, 4, 12, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (259, 1, 2, 3, 4, 12, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (260, 1, 2, 3, 4, 12, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (261, 1, 2, 3, 4, 12, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (262, 1, 2, 3, 4, 10, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (263, 1, 2, 3, 4, 12, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (264, 1, 2, 3, 4, 10, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (265, 1, 2, 3, 4, 12, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (266, 1, 2, 3, 4, 10, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (267, 1, 2, 3, 4, 12, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (268, 1, 2, 3, 4, 10, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (269, 1, 2, 3, 4, 12, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (270, 1, 2, 3, 4, 13, 16, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (271, 1, 2, 3, 4, 11, 14, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (272, 1, 2, 3, 4, 12, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (273, 1, 2, 3, 4, 13, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (274, 1, 2, 3, 4, 12, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (275, 1, 2, 3, 4, 12, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (276, 1, 2, 3, 4, 12, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (277, 1, 2, 3, 4, 13, 14, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (278, 1, 2, 3, 4, 12, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (279, 1, 2, 3, 4, 13, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (280, 1, 2, 3, 4, 13, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (281, 1, 2, 3, 4, 12, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (282, 1, 2, 3, 4, 13, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (283, 1, 2, 3, 4, 13, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (284, 1, 2, 3, 4, 13, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (285, 1, 2, 3, 4, 13, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (286, 1, 2, 3, 4, 11, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (287, 1, 2, 3, 4, 13, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (288, 1, 2, 3, 4, 11, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (289, 1, 2, 3, 4, 13, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (290, 1, 2, 3, 4, 11, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (291, 1, 2, 3, 4, 13, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (292, 1, 2, 3, 4, 11, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (293, 1, 2, 3, 4, 13, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (294, 1, 2, 3, 4, 11, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (295, 1, 2, 3, 4, 13, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (296, 1, 2, 3, 4, 11, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (297, 1, 2, 3, 4, 14, 15, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (298, 1, 2, 3, 4, 13, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (299, 1, 2, 3, 4, 13, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (300, 1, 2, 3, 4, 11, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (301, 1, 2, 3, 4, 13, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (302, 1, 2, 3, 4, 14, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (303, 1, 2, 3, 4, 13, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (304, 1, 2, 3, 4, 11, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (305, 1, 2, 3, 4, 13, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (306, 1, 2, 3, 4, 14, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (307, 1, 2, 3, 4, 14, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (308, 1, 2, 3, 4, 12, 15, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (309, 1, 2, 3, 4, 13, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (310, 1, 2, 3, 4, 12, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (311, 1, 2, 3, 4, 14, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (312, 1, 2, 3, 4, 13, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (313, 1, 2, 3, 4, 13, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (314, 1, 2, 3, 4, 12, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (315, 1, 2, 3, 4, 13, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (316, 1, 2, 3, 4, 14, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (317, 1, 2, 3, 4, 13, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (318, 1, 2, 3, 4, 12, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (319, 1, 2, 3, 4, 14, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (320, 1, 2, 3, 4, 14, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (321, 1, 2, 3, 4, 14, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (322, 1, 2, 3, 4, 12, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (323, 1, 2, 3, 4, 14, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (324, 1, 2, 3, 4, 14, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (325, 1, 2, 3, 4, 14, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (326, 1, 2, 3, 4, 14, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (327, 1, 2, 3, 4, 12, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (328, 1, 2, 3, 4, 14, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (329, 1, 2, 3, 4, 14, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (330, 1, 2, 3, 4, 15, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (331, 1, 2, 3, 4, 12, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (332, 1, 2, 3, 4, 15, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (333, 1, 2, 3, 4, 14, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (334, 1, 2, 3, 4, 12, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (335, 1, 2, 3, 4, 15, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (336, 1, 2, 3, 4, 13, 15, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (337, 1, 2, 3, 4, 14, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (338, 1, 2, 3, 4, 15, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (339, 1, 2, 3, 4, 13, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (340, 1, 2, 3, 4, 14, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (341, 1, 2, 3, 4, 14, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (342, 1, 2, 3, 4, 15, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (343, 1, 2, 3, 4, 13, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (344, 1, 2, 3, 4, 14, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (345, 1, 2, 3, 4, 14, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (346, 1, 2, 3, 4, 13, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (347, 1, 2, 3, 4, 15, 16, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (348, 1, 2, 3, 4, 14, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (349, 1, 2, 3, 4, 15, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (350, 1, 2, 3, 4, 15, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (351, 1, 2, 3, 4, 14, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (352, 1, 2, 3, 4, 13, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (353, 1, 2, 3, 4, 15, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (354, 1, 2, 3, 4, 13, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (355, 1, 2, 3, 4, 15, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (356, 1, 2, 3, 4, 15, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (357, 1, 2, 3, 4, 13, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (358, 1, 2, 3, 4, 15, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (359, 1, 2, 3, 4, 15, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (360, 1, 2, 3, 4, 13, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (361, 1, 2, 3, 4, 15, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (362, 1, 2, 3, 4, 15, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (363, 1, 2, 3, 4, 15, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (364, 1, 2, 3, 4, 14, 16, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (365, 1, 2, 3, 4, 16, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (366, 1, 2, 3, 4, 15, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (367, 1, 2, 3, 4, 16, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (368, 1, 2, 3, 4, 15, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (369, 1, 2, 3, 4, 16, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (370, 1, 2, 3, 4, 16, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (371, 1, 2, 3, 4, 15, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (372, 1, 2, 3, 4, 14, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (373, 1, 2, 3, 4, 16, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (374, 1, 2, 3, 4, 15, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (375, 1, 2, 3, 4, 15, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (376, 1, 2, 3, 4, 14, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (377, 1, 2, 3, 4, 15, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (378, 1, 2, 3, 4, 16, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (379, 1, 2, 3, 4, 14, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (380, 1, 2, 3, 4, 16, 17, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (381, 1, 2, 3, 4, 16, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (382, 1, 2, 3, 4, 14, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (383, 1, 2, 3, 4, 16, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (384, 1, 2, 3, 4, 16, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (385, 1, 2, 3, 4, 16, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (386, 1, 2, 3, 4, 16, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (387, 1, 2, 3, 4, 14, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (388, 1, 2, 3, 4, 16, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (389, 1, 2, 3, 4, 17, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (390, 1, 2, 3, 4, 16, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (391, 1, 2, 3, 4, 17, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (392, 1, 2, 3, 4, 16, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (393, 1, 2, 3, 4, 14, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (394, 1, 2, 3, 4, 16, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (395, 1, 2, 3, 4, 17, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (396, 1, 2, 3, 4, 14, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (397, 1, 2, 3, 4, 17, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (398, 1, 2, 3, 4, 17, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (399, 1, 2, 3, 4, 15, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (400, 1, 2, 3, 4, 17, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (401, 1, 2, 3, 4, 17, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (402, 1, 2, 3, 4, 16, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (403, 1, 2, 3, 4, 17, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (404, 1, 2, 3, 4, 16, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (405, 1, 2, 3, 4, 15, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (406, 1, 2, 3, 4, 16, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (407, 1, 2, 3, 4, 17, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (408, 1, 2, 3, 4, 16, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (409, 1, 2, 3, 4, 15, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (410, 1, 2, 3, 4, 16, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (411, 1, 2, 3, 4, 17, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (412, 1, 2, 3, 4, 17, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (413, 1, 2, 3, 4, 17, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (414, 1, 2, 3, 4, 17, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (415, 1, 2, 3, 4, 15, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (416, 1, 2, 3, 4, 17, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (417, 1, 2, 3, 4, 18, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (418, 1, 2, 3, 4, 17, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (419, 1, 2, 3, 4, 15, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (420, 1, 2, 3, 4, 17, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (421, 1, 2, 3, 4, 17, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (422, 1, 2, 3, 4, 15, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (423, 1, 2, 3, 4, 17, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (424, 1, 2, 3, 4, 18, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (425, 1, 2, 3, 4, 18, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (426, 1, 2, 3, 4, 18, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (427, 1, 2, 3, 4, 15, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (428, 1, 2, 3, 4, 17, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (429, 1, 2, 3, 4, 15, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (430, 1, 2, 3, 4, 18, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (431, 1, 2, 3, 4, 18, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (432, 1, 2, 3, 4, 17, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (433, 1, 2, 3, 4, 18, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (434, 1, 2, 3, 4, 16, 18, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (435, 1, 2, 3, 4, 18, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (436, 1, 2, 3, 4, 17, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (437, 1, 2, 3, 4, 16, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (438, 1, 2, 3, 4, 18, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (439, 1, 2, 3, 4, 18, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (440, 1, 2, 3, 4, 16, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (441, 1, 2, 3, 4, 18, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (442, 1, 2, 3, 4, 18, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (443, 1, 2, 3, 4, 16, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (444, 1, 2, 3, 4, 18, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (445, 1, 2, 3, 4, 19, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (446, 1, 2, 3, 4, 16, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (447, 1, 2, 3, 4, 18, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (448, 1, 2, 3, 4, 18, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (449, 1, 2, 3, 4, 18, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (450, 1, 2, 3, 4, 19, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (451, 1, 2, 3, 4, 19, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (452, 1, 2, 3, 4, 16, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (453, 1, 2, 3, 4, 19, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (454, 1, 2, 3, 4, 18, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (455, 1, 2, 3, 4, 19, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (456, 1, 2, 3, 4, 16, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (457, 1, 2, 3, 4, 19, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (458, 1, 2, 3, 4, 18, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (459, 1, 2, 3, 4, 19, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (460, 1, 2, 3, 4, 16, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (461, 1, 2, 3, 4, 18, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (462, 1, 2, 3, 4, 19, 37, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (463, 1, 2, 3, 4, 19, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (464, 1, 2, 3, 4, 17, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (465, 1, 2, 3, 4, 19, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (466, 1, 2, 3, 4, 19, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (467, 1, 2, 3, 4, 18, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (468, 1, 2, 3, 4, 17, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (469, 1, 2, 3, 4, 19, 20, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (470, 1, 2, 3, 4, 19, 40, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (471, 1, 2, 3, 4, 19, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (472, 1, 2, 3, 4, 17, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (473, 1, 2, 3, 4, 20, 24, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (474, 1, 2, 3, 4, 19, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (475, 1, 2, 3, 4, 20, 28, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (476, 1, 2, 3, 4, 19, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (477, 1, 2, 3, 4, 17, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (478, 1, 2, 3, 4, 19, 33, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (479, 1, 2, 3, 4, 17, 34, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (480, 1, 2, 3, 4, 20, 35, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (481, 1, 2, 3, 4, 19, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (482, 1, 2, 3, 4, 19, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (483, 1, 2, 3, 4, 20, 23, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (484, 1, 2, 3, 4, 20, 38, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (485, 1, 2, 3, 4, 20, 27, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (486, 1, 2, 3, 4, 17, 39, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (487, 1, 2, 3, 4, 20, 31, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (488, 1, 2, 3, 4, 19, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (489, 1, 2, 3, 4, 20, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (490, 1, 2, 3, 4, 20, 36, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (491, 1, 2, 3, 4, 21, 22, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (492, 1, 2, 3, 4, 20, 21, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (493, 1, 2, 3, 4, 17, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (494, 1, 2, 3, 4, 20, 25, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (495, 1, 2, 3, 4, 21, 26, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (496, 1, 2, 3, 4, 20, 29, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (497, 1, 2, 3, 4, 18, 19, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (498, 1, 2, 3, 4, 21, 30, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (499, 1, 2, 3, 4, 20, 32, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (500, 1, 2, 3, 4, 21, 33, 0);

INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (3967000, 3, 10, 31, 32, 39, 41, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (4284000, 4, 25, 31, 35, 39, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (4299000, 7, 26, 31, 33, 39, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (4149001, 14, 15, 31, 38, 39, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (4294001, 23, 30, 31, 34, 39, 45, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (3967002, 5, 10, 31, 32, 39, 42, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (4277002, 5, 24, 31, 34, 39, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (4284003, 5, 25, 31, 35, 39, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (4321004, 11, 28, 31, 34, 39, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (3967005, 9, 10, 31, 32, 39, 43, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (4277005, 15, 24, 31, 34, 39, 44, 0);
INSERT INTO lotto_ball (number_id, ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6, number_weight) VALUES (4299005, 1, 26, 31, 33, 39, 43, 0);

commit;


create table tmp (
                     id INT primary key,
                     target varchar(100) default null
);
create index idx_tmp on tmp(target);

INSERT INTO tmp (id, target) VALUES ( 3967000 , 'dlckd125@nate.com' );
INSERT INTO tmp (id, target) VALUES ( 4284000 , 'dlckd125@nate.com' );
INSERT INTO tmp (id, target) VALUES ( 4299000 , 'dlckd125@nate.com' );
INSERT INTO tmp (id, target) VALUES ( 4294001 , 'dlckd125@nate.com' );
INSERT INTO tmp (id, target) VALUES ( 4299005 , 'dlckd125@nate.com' );

commit;