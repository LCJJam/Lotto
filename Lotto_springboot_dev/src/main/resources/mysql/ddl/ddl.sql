create table member (
                        id int primary key auto_increment,
                        nickname varchar(50) not null,
                        email varchar(100) not null,
                        password varchar(100) not null ,
                        authority varchar(20) ,
                        registration_date timestamp default current_timestamp,
                        last_login timestamp,
                        is_active boolean default true
);

create table game (
                      round int auto_increment primary key,
                      ball_num1 int not null,
                      ballnum2 int not null,
                      ball_num3 int not null,
                      ball_num4 int not null,
                      ball_num5 int not null,
                      ball_num6 int not null,
                      bonus_num int not null,
                      yyyy varchar(4),
                      drw_no_date varchar(10),
                      first_accumamnt long,
                      first_przwner_co int,
                      second_accumamnt int,
                      second_przwner_co int,
                      third_accumamnt int,
                      third_przwner_co int,
                      fourth_accumamnt int,
                      fourth_przwner_co int,
                      fifth_accumamnt int,
                      fifth_przwner_co int,
                      etc varchar(50)
);

create table my_game (
                         my_game_id long auto_increment primary key,
                         email varchar(100) ,
                         round int,
                         first_game_grade int,
                         second_game_grade int,
                         third_game_grade int,
                         fourth_game_grade int,
                         fifth_game_grade int,
                         total_winnings long,
                         drw_no_date varchar(10) default date_format(now(),'%y-%m-%d')
);

create index idx_my_game_01 on my_game (email);
create index idx_my_game_02 on my_game (round);


create table my_game_detail (
                                my_game_detail_id long auto_increment primary key,
                                email varchar(100) ,
                                round int not null,
                                game_num int not null,
                                ball_num1 int not null,
                                ball_num2 int not null,
                                ball_num3 int not null,
                                ball_num4 int not null,
                                ball_num5 int not null,
                                ball_num6 int not null,
                                game_grade int default -1,
                                game_winnings long default null
);

create index idx_my_game_detail_01 on my_game_detail (email, round);
create index idx_my_game_detail_02 on my_game_detail (round);


create table lotto_ball (
                            number_id int auto_increment not null,
                            ball_num1 int not null,
                            ball_num2 int not null,
                            ball_num3 int not null,
                            ball_num4 int not null,
                            ball_num5 int not null,
                            ball_num6 int not null,
                            number_weight int,
                            primary key (number_id)
);

create index idx_lotto_ball on lotto_ball (number_weight);
create index idx_lotto_ball_num on lotto_ball (ball_num1, ball_num2, ball_num3, ball_num4, ball_num5, ball_num6);


create table tmp (
                     id int primary key,
                     target varchar(100) default null
);
create index idx_tmp on tmp(target);

commit;