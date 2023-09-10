package com.lotto.dev.service;

import com.lotto.dev.dto.*;
import com.lotto.dev.repository.GameRepository;
import com.lotto.dev.repository.MyGameDetailRepository;
import com.lotto.dev.repository.MyGameRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class MyGameService {

    private final MyGameRepository myGameRepository;
    private final MyGameDetailRepository myGameDetailRepository;

    public MyGameResponseDto getMyGame(int id){
        MyGameId myGameId = new MyGameId();
        myGameId.setId(id);
        myGameId.setRound(1);
        return myGameRepository.findById(myGameId)
                .map(MyGameResponseDto::of)
                .orElseThrow(() -> new RuntimeException("가져올 데이터가 없습니다."));
    }

    public MyGameDetailResponseDto getMyGameDetail(int id, int round){
        MyGameDetailId myGameDetailId = new MyGameDetailId(id , round);
        return myGameDetailRepository.findById(myGameDetailId)
                .map(MyGameDetailResponseDto::of)
                .orElseThrow(() -> new RuntimeException("가져올 데이터가 없습니다."));
    }

}
