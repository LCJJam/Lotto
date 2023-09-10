package com.lotto.dev.repository;

import com.lotto.dev.dto.MyGameDetailId;
import com.lotto.dev.entity.MyGameDetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;
public interface MyGameDetailRepository extends JpaRepository<MyGameDetail, MyGameDetailId> {

    Optional<MyGameDetail> findById(MyGameDetailId id);
}
