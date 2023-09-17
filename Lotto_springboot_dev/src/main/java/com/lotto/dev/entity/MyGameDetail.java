package com.lotto.dev.entity;

import com.lotto.dev.dto.MyGameDetailId;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "my_game_detail")
public class MyGameDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "my_game_detail_id")
    private long id;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private int round;

    @Column(nullable = false)
    private int gameNum;

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
}
