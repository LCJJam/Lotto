package com.lotto.dev.domain.user;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User,Long> {
    Optional<User> findByEmail(String email); // 소셜 로그인으로 반환되는 값 중 이미 생성된 사람인지 체크
}
