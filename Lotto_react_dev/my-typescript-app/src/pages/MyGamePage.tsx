import React , { useContext , useEffect , useState } from 'react';
import AuthContext from "@store/auth-context";
import { POST } from "@store/fetch-post-action"
import { GET } from "@store/fetch-get-action"
import classes from "./MyGamePage.module.css";

const MyGamePage = () => {

    const authCtx = useContext(AuthContext);

    const [myGames, setMyGames] = useState([]);
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

    const [selectRow, setSelectRow] = useState([]);
    const [viewRow, setViewRow] = useState([]);

    const ballColor = (ball : string) => `${classes.ball_645} + ${ball}`;

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

    /* eslint-disable */
    useEffect(() => {
        POST("/mygame",authCtx.userObj.email).then(
            res => {
                setMyGames(res.data)
            }
        );
    },[]);

    const handleCellClick = (item: any) => {
        POST("/mygame/detail", { email: item.email , round: item.round }  ).then(
            res => {
                setSelectRow(selectRow === item ? null : item);
                setViewRow(res.data)
            }
        );


    }

    return (
        <div>
            <table className={classes.tbl_data}>
                <thead className={classes.table_thead}>
                    <tr>
                            <th>라운드</th>
                            <th>Game 1</th>
                            <th>Game 2</th>
                            <th>Game 3</th>
                            <th>Game 4</th>
                            <th>Game 5</th>
                            <th>총 상금</th>
                            <th>추천 받은 날짜</th>
                    </tr>
                </thead>
                <tbody className={classes.table_body}>
                    {myGames.map((item: any) => (
                        <React.Fragment key={item.round}>
                            <tr onClick={() => handleCellClick(item)}>
                                <td>{item.round}</td>
                                <td>{item.firstGameGrade}등</td>
                                <td>{item.secondGameGrade}등</td>
                                <td>{item.thirdGameGrade}등</td>
                                <td>{item.fourthGameGrade}등</td>
                                <td>{item.fifthGameGrade}등</td>
                                <td>{item.totalWinnings} 원</td>
                                <td>{item.drwNoDate}</td>
                            </tr>
                            {selectRow === item && (
                                viewRow.map((item : any) => (
                                        <tr>
                                            <td>
                                                Game{item.gameNum}
                                            </td>
                                            <td colSpan={5}>
                                                <div className={classes.ball_645}>
                                                <span className={ballColors(item.ballNum1)}>{item.ballNum1}</span>
                                                <span className={ballColors(item.ballNum2)}>{item.ballNum2}</span>
                                                <span className={ballColors(item.ballNum3)}>{item.ballNum3}</span>
                                                <span className={ballColors(item.ballNum4)}>{item.ballNum4}</span>
                                                <span className={ballColors(item.ballNum5)}>{item.ballNum5}</span>
                                                <span className={ballColors(item.ballNum6)}>{item.ballNum6}</span>
                                                </div>
                                            </td>
                                            <td>
                                                {item.gameGrade <= 0 || item.gameGrade === undefined ? (
                                                    item.gameGrade === -1 ? '준비중' : '꽝')
                                                    : item.gameGrade + '등'}
                                            </td>
                                            <td>
                                                {item.gameWinnings <= 0 || item.gameWinnings === undefined ? (
                                                    item.gameWinnings === -1 ? '준비중' : '꽝' )
                                                    :  item.gameWinnings + '원 당첨 !' }
                                            </td>
                                        </tr>
                                    ))


                            )}
                        </React.Fragment>
                    ))}
                </tbody>
            </table>


        </div>
    )
}

export default MyGamePage;
