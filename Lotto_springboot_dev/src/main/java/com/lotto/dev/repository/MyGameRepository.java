package com.lotto.dev.repository;

import com.lotto.dev.dto.MyGameId;
import com.lotto.dev.entity.MyGame;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MyGameRepository extends JpaRepository<MyGame, MyGameId> {

    @Query("SELECT e FROM MyGame e WHERE e.id.email = :email ORDER BY e.id.round DESC")
    List<MyGame> findByEmail(String email);

}
