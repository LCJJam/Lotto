package com.lotto.dev.controller;

import com.lotto.dev.dto.MemberRequestDto;
import com.lotto.dev.dto.MemberResponseDto;
import com.lotto.dev.dto.TokenDto;
import com.lotto.dev.service.AuthService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "http://172.30.1.18:3000")
@Slf4j
@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthController {
    
    private final AuthService authService;

    @PostMapping("/signup")
    public ResponseEntity<MemberResponseDto> signup(@RequestBody MemberRequestDto requestDto) {
        return ResponseEntity.ok(authService.signup(requestDto));
    }

    @PostMapping("/login")
    public ResponseEntity<TokenDto> login(@RequestBody MemberRequestDto requestDto) {
        log.info(authService.login(requestDto).toString());
        return ResponseEntity.ok(authService.login(requestDto));
    }
}