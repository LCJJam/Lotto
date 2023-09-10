package com.lotto.dev.dto;

import com.lotto.dev.entity.Member;
import com.lotto.dev.entity.MyGame;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Id;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MyGameResponseDto {


    private String email;
    private int round;

    private int firstGameGrade;
    private int secondGameGrade;
    private int thirdGameGrade;
    private int fourthGameGrade;
    private int fifthGameGrade;

    private long totalWinnings;

    private String drwNoDate;
    

    public static MyGameResponseDto of(MyGame myGame) {
        return MyGameResponseDto.builder()
                .email(myGame.getId().getEmail())
                .round(myGame.getId().getRound())
                .fifthGameGrade(myGame.getFirstGameGrade())
                .secondGameGrade(myGame.getSecondGameGrade())
                .thirdGameGrade(myGame.getThirdGameGrade())
                .fourthGameGrade(myGame.getFourthGameGrade())
                .fifthGameGrade(myGame.getFifthGameGrade())
                .totalWinnings(myGame.getTotalWinnings())
                .drwNoDate(myGame.getDrwNoDate())
                .build();
    }
}
