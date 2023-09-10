package com.lotto.dev.entity;

import com.lotto.dev.dto.MyGameDetailId;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

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

    @Builder
    private MyGameDetail(MyGameDetailId id,
                         int ballNum1,int ballNum2, int ballNum3,
                         int ballNum4,int ballNum5, int ballNum6){
        this.id = id;
        this.ballNum1 = ballNum1;
        this.ballNum2 = ballNum2;
        this.ballNum3 = ballNum3;
        this.ballNum4 = ballNum4;
        this.ballNum5 = ballNum5;
        this.ballNum6 = ballNum6;
    }
}
