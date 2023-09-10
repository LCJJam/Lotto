package com.lotto.dev.service;

import com.lotto.dev.dto.*;
import com.lotto.dev.repository.MyGameDetailRepository;
import com.lotto.dev.repository.MyGameRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class MyGameService {

    private final MyGameRepository myGameRepository;
    private final MyGameDetailRepository myGameDetailRepository;

    public List<MyGameResponseDto> getMyGame(String email){
        return myGameRepository.findByEmail(email).stream()
                .map(MyGameResponseDto::of).collect(Collectors.toList());
//                .orElseThrow(() -> new RuntimeException("가져올 데이터가 없습니다."));
    }

    public List<MyGameDetailResponseDto> getMyGameDetail(String email, int round){
        return myGameDetailRepository.findByEmailAndRound(email,round).stream()
                .map(MyGameDetailResponseDto::of).collect(Collectors.toList());
//                .orElseThrow(() -> new RuntimeException("가져올 데이터가 없습니다."));
    }

}
