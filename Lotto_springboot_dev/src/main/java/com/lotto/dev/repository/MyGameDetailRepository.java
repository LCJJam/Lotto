package com.lotto.dev.repository;

import com.lotto.dev.dto.MyGameDetailId;
import com.lotto.dev.entity.MyGameDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
public interface MyGameDetailRepository extends JpaRepository<MyGameDetail, MyGameDetailId> {

    @Query("SELECT e FROM MyGameDetail e WHERE e.id.email = :email AND e.id.round = :round")
    List<MyGameDetail> findByEmailAndRound(String email, int round);
}
