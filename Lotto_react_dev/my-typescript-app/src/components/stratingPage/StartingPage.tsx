import React , { useState , useEffect } from "react";
import classes from './StartingPage.module.css'
import { GET } from "@store/fetch-get-action"
import Select from 'react-select'
const StartingPage = () => {
    const ballColor = (ball : string) => `${classes.ball_645} + ${ball}`;

    const [maxRound , setMaxRound] = useState<number>(1);
    const [curRound , setCurRound] = useState<number>(1);

    const [selectedOptions, setSelectedOptions] = useState({value: 1, label: 1});

    const [games, setGames] = useState({
        round: 1,
        ballNum1: 1,
        ballNum2: 2,
        ballNum3: 3,
        ballNum4: 4,
        ballNum5: 5,
        ballNum6: 6,
        bonusNum: 7,

        drwNoDate: '',

        firstAccumamnt: 0,
        secondAccumamnt: 0,
        thirdAccumamnt: 0,
        fourthAccumamnt: 0,
        fifthAccumamnt: 0,

        firstPrzwnerCo: 0,
        secondPrzwnerCo: 0,
        thirdPrzwnerCo: 0,
        fourthPrzwnerCo: 0,
        fifthPrzwnerCo: 0,

        etc: '',

    });

    /* eslint-disable */
    useEffect(() => {
        GET("/game/round").then(
            res => {
                const maxNum : number = res.data;
                setMaxRound(maxNum);
                setSelectedOptions({value: maxNum,label: maxNum});
            }
        );
    },[]);

    useEffect(() => {
        GET("/game/round/"+curRound).then(
            res => {
                // setCurRound(res.data);
                let a = selectedOptions.value;
                setBall(a);
            }
        );

    },[selectedOptions]);

    const setBall = (curRounds : number) => {
        GET("/game/round/"+curRounds).then(
            res => {
                setGames(res.data);
            }
        );
    };

    const handleChange = (selectedOption : any) => {
        setSelectedOptions(selectedOption);
        setCurRound(selectedOption.value);
        console.log(`Option selected:`, selectedOption);
    };
    const selectOption = (maxRound : number) =>{
        const options = [];
        for(let i = maxRound ; i >= 1 ; i--) {
            options.push({value: i, label: i});
        }
        return options;
    };

    const ballColors = (ball : number) => {
        let idx = Math.floor(ball / 10) + 1;
        switch (idx) {
            case 1:
                return ballColor(classes.ball1);
            case 2:
                return ballColor(classes.ball2);
            case 3:
                return ballColor(classes.ball3);
            case 4:
                return ballColor(classes.ball4);
            case 5:
                return ballColor(classes.ball5);
        }
    }

    const formatNumberWithCommas = (num : number) => {
        // 숫자를 문자열로 변환
        const numberString = num.toString();

        // 문자열을 3자리씩 끊어 배열로 만듭니다.
        const parts = [];
        for (let i = numberString.length; i > 0; i -= 3) {
            const start = Math.max(0, i - 3);
            const part = numberString.substring(start, i);
            parts.unshift(part);
        }

        // 배열을 쉼표로 합쳐서 결과 문자열을 생성
        const formattedNumber = parts.join(',');
        return formattedNumber;
    }

    return (
        <div className={classes.content_wrap}>
            <div className={classes.search_data}>
                <div>
                    <span> 회차 바로가기 </span>
                    <Select className={classes.roundSelect}
                            options={selectOption(maxRound)}
                            value={selectedOptions}
                            maxMenuHeight={200}
                            isSearchable={true}
                            onChange={handleChange}

                    />
                </div>
            </div>
            <div className={classes.win_results}>
                <h4><strong>{games.round}회</strong> 당첨 결과 </h4>
                <div>({games.drwNoDate})</div>
                <div className={classes.nums}>
                    <div className={classes.ball_645}>
                        <div className={classes.win}>
                            <p>
                                <span className={ballColors(games.ballNum1)}>{games.ballNum1}</span>
                                <span className={ballColors(games.ballNum2)}>{games.ballNum2}</span>
                                <span className={ballColors(games.ballNum3)}>{games.ballNum3}</span>
                                <span className={ballColors(games.ballNum4)}>{games.ballNum4}</span>
                                <span className={ballColors(games.ballNum5)}>{games.ballNum5}</span>
                                <span className={ballColors(games.ballNum6)}>{games.ballNum6}</span>
                            </p>
                        </div>
                        <div className={classes.plus_sign}>
                            <p>
                                <span> + </span>
                            </p>
                        </div>
                        <div className={classes.bonus}>
                            <p>
                                <span className={ballColors(games.bonusNum)}>{games.bonusNum}</span>
                            </p>
                        </div>
                    </div>
                    <div className={classes.ball_label}>
                        <div className={classes.ball_label_win}> 당첨 번호 </div>
                        <div className={classes.ball_label_bonus}></div>
                        <div className={classes.ball_label_bonus}> 보너스 번호 </div>
                    </div>
                </div>
            </div>
            <table className={classes.tbl_data}>
                {/*<caption> 당첨금 정리 테이블 </caption>*/}
                <thead className={classes.table_thead}>
                    <tr>
                        <th className={classes.col1}>순위</th>
                        <th className={classes.col2}>등위별 총 당첨금액</th>
                        <th className={classes.col3}>당첨게임 수</th>
                        <th className={classes.col4}>1게임당 당첨금액</th>
                        <th>당첨기준</th>
                        <th className={classes.col5}>비고</th>
                    </tr>
                </thead>
                <tbody className={classes.table_body}>
                    <tr>
                        <td className={classes.td_center}>
                            1등
                        </td>
                        <td className={classes.td_right}>
                            {formatNumberWithCommas(games.firstAccumamnt*games.firstPrzwnerCo)} 원
                        </td>
                        <td className={classes.td_center}>
                            {formatNumberWithCommas(games.firstPrzwnerCo)}
                        </td>
                        <td className={classes.td_right}>
                            {formatNumberWithCommas(games.firstAccumamnt)} 원
                        </td>
                        <td className={classes.td_center}>
                            당첨번호 <strong>6개</strong> 숫자 일치
                        </td>
                        <td className={classes.td_center} rowSpan={5}>
                            {/*1등 <br/> 자동9 <br/> 수동2*/}
                            {games.etc}
                        </td>
                    </tr>
                    <tr>
                        <td className={classes.td_center}>
                            2등
                        </td>
                        <td className={classes.td_right}>
                            {formatNumberWithCommas(games.secondAccumamnt*games.secondPrzwnerCo)} 원
                        </td>
                        <td className={classes.td_center}>
                            {formatNumberWithCommas(games.secondPrzwnerCo)}
                        </td>
                        <td className={classes.td_right}>
                            {formatNumberWithCommas(games.secondAccumamnt)} 원
                        </td>
                        <td className={classes.td_center}>
                            당첨번호 <strong>5개</strong> 숫자 일치 <br/>
                            + <strong>보너스</strong> 숫자일치
                        </td>
                    </tr>
                    <tr>
                        <td className={classes.td_center}>
                            3등
                        </td>
                        <td className={classes.td_right}>
                            {formatNumberWithCommas(games.thirdAccumamnt*games.thirdPrzwnerCo)} 원
                        </td>
                        <td className={classes.td_center}>
                            {formatNumberWithCommas(games.thirdPrzwnerCo)}
                        </td>
                        <td className={classes.td_right}>
                            {formatNumberWithCommas(games.thirdAccumamnt)} 원
                        </td>
                        <td className={classes.td_center}>
                            당첨번호 <strong>5개</strong> 숫자 일치
                        </td>
                    </tr>
                    <tr>
                        <td className={classes.td_center}>
                            4등
                        </td>
                        <td className={classes.td_right}>
                            {formatNumberWithCommas(games.fourthAccumamnt*games.fourthPrzwnerCo)} 원
                        </td>
                        <td className={classes.td_center}>
                            {formatNumberWithCommas(games.fourthPrzwnerCo)}
                        </td>
                        <td className={classes.td_right}>
                            {formatNumberWithCommas(games.fourthAccumamnt)} 원
                        </td>
                        <td className={classes.td_center}>
                            당첨번호 <strong>4개</strong> 숫자 일치
                        </td>
                    </tr>
                    <tr>
                        <td className={classes.td_center}>
                            5등
                        </td>
                        <td className={classes.td_right}>
                            {formatNumberWithCommas(games.fifthAccumamnt*games.fifthPrzwnerCo)} 원
                        </td>
                        <td className={classes.td_center}>
                            {formatNumberWithCommas(games.fifthPrzwnerCo)}
                        </td>
                        <td className={classes.td_right}>
                            {formatNumberWithCommas(games.fifthAccumamnt)} 원
                        </td>
                        <td className={classes.td_center}>
                            당첨번호 <strong>3개</strong> 숫자 일치
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    )
};

export default StartingPage