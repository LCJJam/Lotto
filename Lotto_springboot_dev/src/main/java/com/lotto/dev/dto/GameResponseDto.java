package com.lotto.dev.dto;

import com.lotto.dev.entity.Game;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class GameResponseDto {
    private long round;

    private int ballNum1;
    private int ballNum2;
    private int ballNum3;
    private int ballNum4;
    private int ballNum5;
    private int ballNum6;

    private int bonusNum;

    private String yyyy;
    private String drwNoDate;

    private long firstAccumamnt;
    private int firstPrzwnerCo;
    private int secondAccumamnt;
    private int secondPrzwnerCo;
    private int thirdAccumamnt;
    private int thirdPrzwnerCo;
    private int fourthAccumamnt;
    private int fourthPrzwnerCo;
    private int fifthAccumamnt;
    private int fifthPrzwnerCo;

    private String etc;

    public static GameResponseDto of(Game game) {
        return GameResponseDto.builder()
                .round(game.getRound())
                .ballNum1(game.getBallNum1())
                .ballNum2(game.getBallNum2())
                .ballNum3(game.getBallNum3())
                .ballNum4(game.getBallNum4())
                .ballNum5(game.getBallNum5())
                .ballNum6(game.getBallNum6())
                .bonusNum(game.getBonusNum())
                .yyyy(game.getYyyy())
                .drwNoDate(game.getDrwNoDate())
                .firstAccumamnt(game.getFirstAccumamnt())
                .firstPrzwnerCo(game.getFirstPrzwnerCo())
                .secondAccumamnt(game.getSecondAccumamnt())
                .secondPrzwnerCo(game.getSecondPrzwnerCo())
                .thirdAccumamnt(game.getThirdAccumamnt())
                .thirdPrzwnerCo(game.getThirdPrzwnerCo())
                .fourthAccumamnt(game.getFourthAccumamnt())
                .fourthPrzwnerCo(game.getFourthPrzwnerCo())
                .fifthAccumamnt(game.getFifthAccumamnt())
                .fifthPrzwnerCo(game.getFifthPrzwnerCo())
                .etc(game.getEtc())
                .build();
    }
}
