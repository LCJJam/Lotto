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
public class MyGameId implements Serializable {
    private int id;
    private int round;
}
