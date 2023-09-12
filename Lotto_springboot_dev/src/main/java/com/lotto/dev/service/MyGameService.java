package com.lotto.dev.service;

import com.lotto.dev.dto.*;
import com.lotto.dev.entity.LottoBall;
import com.lotto.dev.entity.MyGame;
import com.lotto.dev.entity.MyGameDetail;
import com.lotto.dev.entity.TmpGame;
import com.lotto.dev.repository.LottoBallRepository;
import com.lotto.dev.repository.MyGameDetailRepository;
import com.lotto.dev.repository.MyGameRepository;
import com.lotto.dev.repository.TmpGameRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
@Transactional
public class MyGameService {

    private final MyGameRepository myGameRepository;
    private final MyGameDetailRepository myGameDetailRepository;
    private final TmpGameRepository tmpGameRepository;
    private final LottoBallRepository lottoBallRepository;

    public List<MyGameResponseDto> getMyGame(String email){
        return myGameRepository.findByEmail(email).stream()
                .map(MyGameResponseDto::of).collect(Collectors.toList());
//                .orElseThrow(() -> new RuntimeException("가져올 데이터가 없습니다."));
    }

    public List<MyGameDetailResponseDto> getMyGameDetail(String email, int round){
        return myGameDetailRepository.findByEmailAndRound(email,round).stream()
                .map(MyGameDetailResponseDto::of).collect(Collectors.toList());
//                .orElseThrow(() -> new RuntimeException("가져올 데이터가 없습니다."));
    }

    public List<MyGameDetailResponseDto> isRecommended(String email, int round){
        if(!myGameDetailRepository.existsById(new MyGameDetailId(email,round,0))) {

            // 새롭게 추천 알고리즘 후 전달.
            List<List<Integer>> list = new ArrayList<>();

            MyGame myGameEntity = MyGame.builder().id(new MyGameId(email,round)).build();
            myGameRepository.save(myGameEntity);


            for(int i = 0 ; i < 5 ; i++){
//                int idx = (int) (Math.random() * 8145060) + 1;
                int idx = (int) (Math.random() * 500) + 1;

                log.info("Random idx : {}",idx);

                List<TmpGame> tmpGameList = tmpGameRepository.findByIdBeforeAndTargetIsNullOrderByIdDesc(idx);
                if( tmpGameList.size() != 0 ) {

                    log.info("tmpGame +Up : {}",tmpGameList);
                    tmpGameList = tmpGameRepository.findByIdAfterAndTargetIsNull(idx);
                }

                if( tmpGameList.size() != 0 ) break;

                TmpGame tmpGame = TmpGame.builder().id(idx).target(email).build();

                log.info("tmpGame : {}",tmpGame);

                tmpGameRepository.save(tmpGame);


                List<Integer> tmp = new ArrayList<>();
                List<LottoBall> lottoBall = lottoBallRepository.findByNumberId(idx);

                tmp.add(i);
                tmp.add(lottoBall.get(0).getBallNum1());
                tmp.add(lottoBall.get(0).getBallNum2());
                tmp.add(lottoBall.get(0).getBallNum3());
                tmp.add(lottoBall.get(0).getBallNum4());
                tmp.add(lottoBall.get(0).getBallNum5());
                tmp.add(lottoBall.get(0).getBallNum6());

                MyGameDetail myGameDetailEntity = MyGameDetail.builder()
                        .id(new MyGameDetailId(email,round,i))
                        .ballNum1(lottoBall.get(0).getBallNum1())
                        .ballNum2(lottoBall.get(0).getBallNum2())
                        .ballNum3(lottoBall.get(0).getBallNum3())
                        .ballNum4(lottoBall.get(0).getBallNum4())
                        .ballNum5(lottoBall.get(0).getBallNum5())
                        .ballNum6(lottoBall.get(0).getBallNum6())
                        .build();
                myGameDetailRepository.save(myGameDetailEntity);
                list.add(tmp);
            }



            return list.stream().map(MyGameDetailResponseDto::intListToDto).collect(Collectors.toList());
        } else {
            return myGameDetailRepository.findByEmailAndRound(email,round).stream()
                    .map(MyGameDetailResponseDto::of).collect(Collectors.toList());
        }
    }

}
