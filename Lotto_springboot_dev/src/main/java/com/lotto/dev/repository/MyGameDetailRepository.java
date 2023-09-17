package com.lotto.dev.repository;

import com.lotto.dev.dto.MyGameDetailId;
import com.lotto.dev.entity.MyGame;
import com.lotto.dev.entity.MyGameDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MyGameDetailRepository extends JpaRepository<MyGameDetail, Long> {

    List<MyGameDetail> findByEmailAndRoundOrderByGameNum(String email, int round);

    boolean existsByEmailAndRound(String email, int round);
}
