package com.lotto.dev.entity;


import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Getter
@NoArgsConstructor
@Table(name = "lotto_ball")
public class LottoBall {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int numberId;

    @Column
    private int ballNum1;

    @Column
    private int ballNum2;

    @Column
    private int ballNum3;

    @Column
    private int ballNum4;

    @Column
    private int ballNum5;

    @Column
    private int ballNum6;
}
