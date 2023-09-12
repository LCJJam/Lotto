package com.lotto.dev.repository;

import com.lotto.dev.entity.LottoBall;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LottoBallRepository extends JpaRepository<LottoBall,Long> {

    List<LottoBall> findByNumberId(int id);
}
