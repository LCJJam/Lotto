package com.lotto.dev.entity;

import com.lotto.dev.dto.MyGameId;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Getter
@Builder
@NoArgsConstructor
@Table(name = "my_game")
public class MyGame {

    @EmbeddedId
    private MyGameId id;

    
    @Column
    private int firstGameGrade;
    @Column
    private int secondGameGrade;
    @Column
    private int thirdGameGrade;
    @Column
    private int fourthGameGrade;
    @Column
    private int fifthGameGrade;
    
    @Column
    private long totalWinnings;
    
    @Column
    private String drwNoDate;

    @Builder
    private MyGame(MyGameId id, int firstGameGrade, int secondGameGrade,
                   int thirdGameGrade, int fourthGameGrade, int fifthGameGrade,
                   long totalWinings, String drwNoDate) {
        this.id = id;
        this.firstGameGrade = firstGameGrade;
        this.secondGameGrade = secondGameGrade;
        this.thirdGameGrade = thirdGameGrade;
        this.fourthGameGrade = fourthGameGrade;
        this.fifthGameGrade = fifthGameGrade;
        this.totalWinnings = totalWinings;
        this.drwNoDate = drwNoDate;
    }
}