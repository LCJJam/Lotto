package com.lotto.dev.dto;

import lombok.*;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class MyGameDetailId implements Serializable {
    private int id;
    private int round;
    private int gameNum;

    public MyGameDetailId (int id, int round){
        this.id = id;
        this.round = round;
    }
}
