package com.lotto.dev.controller;

import com.lotto.dev.dto.GameResponseDto;
import com.lotto.dev.service.GameService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/game")
public class GameController {
    private final GameService gameService;

    @GetMapping("/round")
    public long getRound() {
        return gameService.getRound();
    }

    @GetMapping("/round/{id}")
    public ResponseEntity<GameResponseDto> getBall(@PathVariable int id) {
        return ResponseEntity.ok(gameService.getBall(id));
    }
}
