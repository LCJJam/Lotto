package com.lotto.dev.entity;

import com.lotto.dev.dto.MyGameDetailId;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Builder
@NoArgsConstructor
@Table(name = "my_game_detail")
public class MyGameDetail {

    @EmbeddedId
    private MyGameDetailId id;

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

    @Column
    private int gameGrade;

    @Column
    private long gameWinnings;

    @Builder
    private MyGameDetail(MyGameDetailId id,
                         int ballNum1,int ballNum2, int ballNum3,
                         int ballNum4,int ballNum5, int ballNum6,
                         int gameGrade, long gameWinnings){
        this.id = id;
        this.ballNum1 = ballNum1;
        this.ballNum2 = ballNum2;
        this.ballNum3 = ballNum3;
        this.ballNum4 = ballNum4;
        this.ballNum5 = ballNum5;
        this.ballNum6 = ballNum6;
        this.gameGrade = gameGrade;
        this.gameWinnings = gameWinnings;
    }

    public MyGameDetail(MyGameDetailId id, List<Integer> list) {
        this.id = id;
        this.ballNum1 = list.get(0);
        this.ballNum2 = list.get(1);
        this.ballNum3 = list.get(2);
        this.ballNum4 = list.get(3);
        this.ballNum5 = list.get(4);
        this.ballNum6 = list.get(5);
    }
}
