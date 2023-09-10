package com.lotto.dev.dto;

import com.lotto.dev.entity.MyGameDetail;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MyGameDetailResponseDto {

    private int id;
    private int round;
    private int game_num;

    private int ballNum1;
    private int ballNum2;
    private int ballNum3;
    private int ballNum4;
    private int ballNum5;
    private int ballNum6;

    public static MyGameDetailResponseDto of(MyGameDetail myGameDetail){
        return MyGameDetailResponseDto.builder()
                .id(myGameDetail.getId().getId())
                .round(myGameDetail.getId().getRound())
                .game_num(myGameDetail.getId().getGameNum())
                .ballNum1(myGameDetail.getBallNum1())
                .ballNum2(myGameDetail.getBallNum2())
                .ballNum3(myGameDetail.getBallNum3())
                .ballNum4(myGameDetail.getBallNum4())
                .ballNum5(myGameDetail.getBallNum5())
                .ballNum6(myGameDetail.getBallNum6())
                .build();
    }
}
