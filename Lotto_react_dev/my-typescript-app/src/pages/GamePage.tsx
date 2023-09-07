import React, {useContext, useState} from 'react';
import classes from "./GamePage.module.css";
import AuthContext from "@store/auth-context";


const GamePage = () => {

    const authCtx = useContext(AuthContext);

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

    const [count, setCount] = useState(0);

    const recommendedNumber = () => {
        const randomArray = [];
        for(let i = 0 ; i < 5 ; i++) {
            const row: number[] = [];
            for(let j = 0; j < 6 ; j++) {
                let randomNumber : number;
                do {
                    randomNumber = Math.floor(Math.random() * 45) + 1;
                } while (row.includes(randomNumber));

                row.push(randomNumber);
            }
            row.sort((a, b) => a - b);
            randomArray.push(row);
        }
        return randomArray;
    }

    const reRecommendView = ()  => {
        return recommendedNumber().map((row, rowIndex) =>
            <div key={rowIndex}>
                <span> {rowIndex + 1} : </span>
                {row.map((item: number, index) =>
                    <span key={index} className={ballColors({item}.item)}>{item}</span>
                )}
            </div>
        );
    }

    const recommendedNumberClick = () => {
        setCount(count + 1);
    }



    return (
        <div className={classes.content_wrap}>
            <div className={classes.win_results}>
                <div className={classes.nums}>
                    <div className={classes.ball_645}>
                        <div className={classes.win}>
                            <p>
                                {reRecommendView()}
                            </p>
                        </div>
                    </div>
                    <div className={classes.ball_label}>
                        <div className={classes.ball_label_win}> 추천 번호 </div>
                    </div>
                </div>
                <div className={classes.recommendButton}>
                    <button onClick={recommendedNumberClick}> 추천 다시 받기 </button>
                    <button onClick={recommendedNumberClick}> 로그인 하여 상세 추천 받기 </button>
                </div>
            </div>
        </div>
    )
};

export default GamePage;