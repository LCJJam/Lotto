package com.lotto.dev.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@Table(name = "tmp")
public class TmpGame {

    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String target;

    @Builder
    private TmpGame (int id, String target){
        this.id = id;
        this.target = target;
    }
}
