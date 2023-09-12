package com.lotto.dev.repository;

import com.lotto.dev.entity.TmpGame;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TmpGameRepository extends JpaRepository<TmpGame,Long> {

    List<TmpGame> findByIdBeforeAndTargetIsNullOrderByIdDesc(int id);
    List<TmpGame> findByIdAfterAndTargetIsNull(int id);
//    int updateTargetToEmailLessThanId(int id, String email, Pageable pageable);

    //    @Modifying
//    @Query("UPDATE TmpGame a SET a.target = :email  WHERE a.id > :id AND a.target is null ORDER BY a.id DESC")
//    void updateTargetToEmailMoreThanId(int id, @Param("email") String email, Pageable pageable);

    List<TmpGame> findByTarget(String target);
}
