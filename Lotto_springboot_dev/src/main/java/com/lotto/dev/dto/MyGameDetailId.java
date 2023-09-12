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
    private String email;
    private int round;
    private int gameNum;
}
