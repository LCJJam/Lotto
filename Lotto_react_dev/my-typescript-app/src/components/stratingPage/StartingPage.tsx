import React from "react";
import classes from './StartingPage.module.css'
const StartingPage = () => {
    const ballColor = (ball : string) => `${classes.ball_645} + ${ball}`;
    return (
        <div className={classes.content_wrap}>
            <div className={'search_data'}>
                회차 바로가기 <button> 조회 </button>
            </div>
            <div className={classes.win_results}>
                <h4><strong>1081회</strong> 당첨 결과 </h4>
                <div className={classes.nums}>
                    <div className={classes.ball_645}>
                        <div className={classes.win}>
                            <p>
                                <span className={ballColor(classes.ball1)}>1</span>
                                <span className={ballColor(classes.ball2)}>11</span>
                                <span className={ballColor(classes.ball3)}>21</span>
                                <span className={ballColor(classes.ball4)}>31</span>
                                <span className={ballColor(classes.ball5)}>41</span>
                            </p>
                        </div>
                        <div className={classes.plus_sign}>
                            <p>
                                <span> + </span>
                            </p>
                        </div>
                        <div className={classes.bonus}>
                            <p>
                                <span className={ballColor(classes.ball4)}>32</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <table className={'tbl_data'}>
                {/*<caption> 당첨금 정리 테이블 </caption>*/}
                <colgroup>
                    <span className={classes.col1}/>
                    <span className={classes.col2}/>
                    <span className={classes.col3}/>
                    <span className={classes.col4}/>
                    <span/>
                    <span className={classes.col5}/>
                </colgroup>
                <thead className={classes.table_thead}>
                    <tr>
                        <th scope='col'>순위</th>
                        <th scope='col'>등위별 총 당첨금액</th>
                        <th scope='col'>당첨게임 수</th>
                        <th scope='col'>1게임당 당첨금액</th>
                        <th scope='col'>당첨기준</th>
                        <th scope='col'>비고</th>
                    </tr>
                </thead>
                <tbody className={classes.table_body}>
                    <tr>
                        <td className={classes.td_center}>
                            1등
                        </td>
                        <td className={classes.td_right}>
                            25,000,000,000 원
                        </td>
                        <td className={classes.td_center}>
                            10
                        </td>
                        <td className={classes.td_right}>
                            2,500,000,000 원
                        </td>
                        <td className={classes.td_center}>
                            당첨번호 <strong>6개</strong> 숫자 일치
                        </td>
                        <td className={classes.td_center} rowSpan={5}>
                            1등 <br/> 자동9 <br/> 수동2
                        </td>
                    </tr>
                    <tr>
                        <td className={classes.td_center}>
                            2등
                        </td>
                        <td className={classes.td_right}>
                            25,000,000,000 원
                        </td>
                        <td className={classes.td_center}>
                            10
                        </td>
                        <td className={classes.td_right}>
                            2,500,000,000 원
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
                            25,000,000,000 원
                        </td>
                        <td className={classes.td_center}>
                            10
                        </td>
                        <td className={classes.td_right}>
                            2,500,000,000 원
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
                            25,000,000,000 원
                        </td>
                        <td className={classes.td_center}>
                            10
                        </td>
                        <td className={classes.td_right}>
                            2,500,000,000 원
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
                            25,000,000,000 원
                        </td>
                        <td className={classes.td_center}>
                            10
                        </td>
                        <td className={classes.td_right}>
                            2,500,000,000 원
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