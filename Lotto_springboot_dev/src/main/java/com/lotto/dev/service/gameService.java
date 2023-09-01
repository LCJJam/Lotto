package com.lotto.dev.service;

import com.lotto.dev.dto.GameResponseDto;
import com.lotto.dev.repository.GameRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class gameService {
    
    private final GameRepository gameRepository;

    public long getRound() {
        return gameRepository.count();
    }

    public GameResponseDto getBall(long round){
        return gameRepository.findByRound(round)
                .map(GameResponseDto::of)
                .orElseThrow(() -> new RuntimeException("가져올 데이터가 없습니다."));
    }

}
