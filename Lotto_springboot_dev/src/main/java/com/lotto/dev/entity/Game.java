package com.lotto.dev.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Getter
@Builder
@NoArgsConstructor
@Table(name = "game")
public class Game {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int round;

    @Column(nullable = false)
    private int ballNum1;

    @Column(nullable = false)
    private int ballNum2;

    @Column(nullable = false)
    private int ballNum3;

    @Column(nullable = false)
    private int ballNum4;

    @Column(nullable = false)
    private int ballNum5;

    @Column(nullable = false)
    private int ballNum6;

    @Column(nullable = false)
    private int bonusNum;

    @Column
    private String yyyy;

    @Column
    private String drwNoDate;

    @Column
    private long firstAccumamnt;

    @Column
    private int firstPrzwnerCo;

    @Column
    private int secondAccumamnt;

    @Column
    private int secondPrzwnerCo;

    @Column
    private int thirdAccumamnt;

    @Column
    private int thirdPrzwnerCo;

    @Column
    private int fourthAccumamnt;

    @Column
    private int fourthPrzwnerCo;

    @Column
    private int fifthAccumamnt;

    @Column
    private int fifthPrzwnerCo;

    @Column
    private String etc;

    @Builder
    private Game(int round, int ballNum1, int ballNum2, int ballNum3, int ballNum4, int ballNum5, int ballNum6, int bonusNum,
                 String yyyy, String drwNoDate, long firstAccumamnt, int firstPrzwnerCo, int secondAccumamnt, int secondPrzwnerCo,
                 int thirdAccumamnt, int thirdPrzwnerCo, int fourthAccumamnt, int fourthPrzwnerCo, int fifthAccumamnt, int fifthPrzwnerCo, String etc) {
        this.round = round;
        this.ballNum1 = ballNum1;
        this.ballNum2 = ballNum2;
        this.ballNum3 = ballNum3;
        this.ballNum4 = ballNum4;
        this.ballNum5 = ballNum5;
        this.ballNum6 = ballNum6;
        this.bonusNum = bonusNum;
        this.yyyy = yyyy;
        this.drwNoDate = drwNoDate;
        this.firstAccumamnt = firstAccumamnt;
        this.firstPrzwnerCo = firstPrzwnerCo;
        this.secondAccumamnt = secondAccumamnt;
        this.secondPrzwnerCo = secondPrzwnerCo;
        this.thirdAccumamnt = thirdAccumamnt;
        this.thirdPrzwnerCo = thirdPrzwnerCo;
        this.fourthAccumamnt = fourthAccumamnt;
        this.fourthPrzwnerCo = fourthPrzwnerCo;
        this.fifthAccumamnt = fifthAccumamnt;
        this.fifthPrzwnerCo = fifthPrzwnerCo;
        this.etc = etc;
    }
    
}
