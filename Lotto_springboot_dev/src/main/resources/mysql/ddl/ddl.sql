CREATE TABLE MEMBER (
                        ID INT PRIMARY KEY AUTO_INCREMENT,
                        NICKNAME VARCHAR(50) NOT NULL,
                        EMAIL VARCHAR(100) NOT NULL,
                        PASSWORD VARCHAR(100) NOT NULL ,
                        AUTHORITY VARCHAR(20) ,
                        REGISTRATION_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                        LAST_LOGIN TIMESTAMP,
                        IS_ACTIVE BOOLEAN DEFAULT TRUE
);

CREATE TABLE GAME (
                      ROUND INT AUTO_INCREMENT PRIMARY KEY,
                      BALL_NUM1 INT NOT NULL,
                      ballNum2 INT NOT NULL,
                      BALL_NUM3 INT NOT NULL,
                      BALL_NUM4 INT NOT NULL,
                      BALL_NUM5 INT NOT NULL,
                      BALL_NUM6 INT NOT NULL,
                      BONUS_NUM INT NOT NULL,
                      YYYY VARCHAR(4),
                      DRW_NO_DATE VARCHAR(10),
                      FIRST_ACCUMAMNT LONG,
                      FIRST_PRZWNER_CO INT,
                      SECOND_ACCUMAMNT INT,
                      SECOND_PRZWNER_CO INT,
                      THIRD_ACCUMAMNT INT,
                      THIRD_PRZWNER_CO INT,
                      FOURTH_ACCUMAMNT INT,
                      FOURTH_PRZWNER_CO INT,
                      FIFTH_ACCUMAMNT INT,
                      FIFTH_PRZWNER_CO INT,
                      ETC VARCHAR(50)
);

CREATE TABLE MY_GAME (
                         EMAIL VARCHAR(100) ,
                         ROUND INT,
                         FIRST_GAME_GRADE INT,
                         SECOND_GAME_GRADE INT,
                         THIRD_GAME_GRADE INT,
                         FOURTH_GAME_GRADE INT,
                         FIFTH_GAME_GRADE INT,
                         TOTAL_WINNINGS LONG,
                         DRW_NO_DATE VARCHAR(10) DEFAULT DATE_FORMAT(NOW(),'%Y-%m-%d'),
                         PRIMARY KEY (EMAIL, ROUND)
);

CREATE INDEX IDX_MY_GAME ON MY_GAME (EMAIL);


CREATE TABLE MY_GAME_DETAIL (
                                EMAIL VARCHAR(100) ,
                                ROUND INT NOT NULL,
                                GAME_NUM INT NOT NULL,
                                BALL_NUM1 INT NOT NULL,
                                BALL_NUM2 INT NOT NULL,
                                BALL_NUM3 INT NOT NULL,
                                BALL_NUM4 INT NOT NULL,
                                BALL_NUM5 INT NOT NULL,
                                BALL_NUM6 INT NOT NULL,
                                GAME_GRADE INT DEFAULT -1,
                                GAME_WINNINGS LONG DEFAULT -1,
                                PRIMARY KEY (EMAIL, ROUND, GAME_NUM)
);

CREATE INDEX IDX_MY_GAME_DETAIL ON MY_GAME_DETAIL (EMAIL, ROUND);


CREATE TABLE LOTTO_BALL (
                            NUMBER_ID INT AUTO_INCREMENT NOT NULL,
                            BALL_NUM1 INT NOT NULL,
                            BALL_NUM2 INT NOT NULL,
                            BALL_NUM3 INT NOT NULL,
                            BALL_NUM4 INT NOT NULL,
                            BALL_NUM5 INT NOT NULL,
                            BALL_NUM6 INT NOT NULL,
                            NUMBER_WEIGHT INT,
                            PRIMARY KEY (NUMBER_ID)
);

CREATE INDEX IDX_LOTTO_BALL ON LOTTO_BALL (NUMBER_WEIGHT);
CREATE INDEX IDX_LOTTO_BALL_NUM ON LOTTO_BALL (BALL_NUM1, BALL_NUM2, BALL_NUM3, BALL_NUM4, BALL_NUM5, BALL_NUM6);


CREATE TABLE TMP (
                     ID INT PRIMARY KEY,
                     TARGET VARCHAR(100) DEFAULT NULL
);
CREATE INDEX IDX_TMP ON TMP(TARGET);

COMMIT;