package com.lotto.dev.repository;

import com.lotto.dev.entity.Game;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface GameRepository extends JpaRepository<Game, Long> {

    long count();
    Optional<Game> findByRound(long round);
}
