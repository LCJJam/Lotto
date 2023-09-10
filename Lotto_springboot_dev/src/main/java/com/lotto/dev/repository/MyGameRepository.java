package com.lotto.dev.repository;

import com.lotto.dev.dto.MyGameId;
import com.lotto.dev.entity.MyGame;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface MyGameRepository extends JpaRepository<MyGame, MyGameId> {

    Optional<MyGame> findById(MyGameId id);
}
