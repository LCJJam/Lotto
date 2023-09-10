package com.lotto.dev.controller;

import com.lotto.dev.dto.*;
import com.lotto.dev.service.MyGameService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/mygame")
public class MyGameController {
    private final MyGameService myGameService;

    @PostMapping("")
    public ResponseEntity<List<MyGameResponseDto>> getMyGame(@RequestBody MyGameRequestDto request) {
        return ResponseEntity.ok(myGameService.getMyGame(request.getEmail()));
    }

    @PostMapping("/detail")
    public ResponseEntity<List<MyGameDetailResponseDto>> getMyGameDetail(@RequestBody MyGameDetailRequestDto request) {
        return ResponseEntity.ok(myGameService.getMyGameDetail(request.getEmail(),request.getRound()));
    }
}
