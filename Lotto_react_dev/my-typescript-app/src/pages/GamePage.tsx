import React, {useContext, useState} from 'react';
import classes from "./GamePage.module.css";
import AuthContext from "@store/auth-context";
import { useNavigate } from "react-router-dom"
import axios from "axios";
import { POST } from '@store/fetch-post-action';


const GamePage = () => {

    const authCtx = useContext(AuthContext);

    let navigate = useNavigate();

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
    const [isRecommended , setIsRecommended] = useState(false);
    const [viewForm , setViewForm] = useState([['']]);

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
        if(isRecommended) {
            return viewForm.map((item : any) =>
                <div key={item}>
                    <p>
                        <span> {item.gameNum} : </span>
                            <span className={ballColors(item.ballNum1)}>{item.ballNum1}</span>
                            <span className={ballColors(item.ballNum2)}>{item.ballNum2}</span>
                            <span className={ballColors(item.ballNum3)}>{item.ballNum3}</span>
                            <span className={ballColors(item.ballNum4)}>{item.ballNum4}</span>
                            <span className={ballColors(item.ballNum5)}>{item.ballNum5}</span>
                            <span className={ballColors(item.ballNum6)}>{item.ballNum6}</span>

                    </p>
                </div>
            );
        } else {
            return recommendedNumber().map((row, rowIndex) =>
                <div key={rowIndex}>
                    <p>
                        <span> {rowIndex + 1} : </span>
                        {row.map((item: number, index) =>
                            <span key={index} className={ballColors({item}.item)}>{item}</span>
                        )}
                    </p>
                </div>
            );
        }

    }

    const recommendedNumberClick = () => {
        setCount(count+1);
    }

    const detailRecommendedNumberClick = () => {
        if(authCtx.isLoggedIn) {
            POST("/mygame/recommended", authCtx.userObj.email).then(
                res => {
                    if(!res.data) {
                        alert("이미 추천 받았습니다!");
                    } else {
                        alert("번호가 추천 되었습니다.")
                        setViewForm(res.data);
                        setIsRecommended(true);
                    }
                }
            );
        } else {
            navigate('/login', { replace: true });
        }
    }



    return (
        <div className={classes.content_wrap}>
            <div className={classes.win_results}>
                <div className={classes.nums}>
                    <div className={classes.ball_645}>
                        <div className={classes.win}>
                            {reRecommendView()}
                        </div>
                    </div>
                    <div className={classes.ball_label}>
                        <div className={classes.ball_label_win}> 추천 번호 </div>
                    </div>
                </div>
                <div className={classes.recommendButton}>
                    <button onClick={recommendedNumberClick}> 추천 다시 받기 </button>
                    <button onClick={detailRecommendedNumberClick}> 상세 추천 받기 (로그인) </button>
                </div>
            </div>
        </div>
    )
};

export default GamePage;
