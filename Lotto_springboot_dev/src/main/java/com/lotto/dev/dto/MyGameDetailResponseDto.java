package com.lotto.dev.dto;

import com.lotto.dev.entity.MyGameDetail;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MyGameDetailResponseDto {

    private long id;
    private String email;
    private int round;
    private int gameNum;

    private int ballNum1;
    private int ballNum2;
    private int ballNum3;
    private int ballNum4;
    private int ballNum5;
    private int ballNum6;

    private int gameGrade;
    private long gameWinnings;

    public static MyGameDetailResponseDto of(MyGameDetail myGameDetail){
        return MyGameDetailResponseDto.builder()
                .id(myGameDetail.getId())
                .round(myGameDetail.getRound())
                .email(myGameDetail.getEmail())
                .gameNum(myGameDetail.getGameNum())
                .ballNum1(myGameDetail.getBallNum1())
                .ballNum2(myGameDetail.getBallNum2())
                .ballNum3(myGameDetail.getBallNum3())
                .ballNum4(myGameDetail.getBallNum4())
                .ballNum5(myGameDetail.getBallNum5())
                .ballNum6(myGameDetail.getBallNum6())
                .gameGrade(myGameDetail.getGameGrade())
                .gameWinnings(myGameDetail.getGameWinnings())
                .build();
    }

    public static MyGameDetailResponseDto intListToDto(List<Integer> list){
        return MyGameDetailResponseDto.builder()
//                .email(myGameDetail.getId().getEmail())
//                .round(myGameDetail.getId().getRound())
                .gameNum(list.get(0))
                .ballNum1(list.get(1))
                .ballNum2(list.get(2))
                .ballNum3(list.get(3))
                .ballNum4(list.get(4))
                .ballNum5(list.get(5))
                .ballNum6(list.get(6))
//                .gameGrade(myGameDetail.getGameGrade())
//                .gameWinnings(myGameDetail.getGameWinnings())
                .build();
    }
}
