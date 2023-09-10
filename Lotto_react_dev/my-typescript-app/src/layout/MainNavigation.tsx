import React, { useContext, useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import classes from './MainNavigation.module.css';
import AuthContext from '@store/auth-context';
import Logo from '@images/lotto_ic.png';
import Game from '@images/game.gif';

const MainNavigation = () => {
  const authCtx = useContext(AuthContext);
  const [nickname, setNickname] = useState('');
  let isLogin = authCtx.isLoggedIn;
  let isGet = authCtx.isGetSuccess;

  const callback = (str: string) => {
    setNickname(str);
  };

  /* eslint-disable */
  useEffect(() => {
    if (isLogin) {
      console.log('start');
      authCtx.getUser();
    }
  }, [isLogin]);


  useEffect(() => {
    if (isGet) {
      console.log('get start');
      callback(authCtx.userObj.nickname);
    }
  }, [isGet]);

  const toggleLogoutHandler = () => {
    authCtx.logout();
    alert('로그 아웃 되었습니다');
  };

  return (
    <header className={classes.header}>
      <Link to="/" className={classes.logo}>
        <img src={Logo} alt="로또 로고" />
      </Link>
      <Link to="/game" className={classes.game}>
          <img src={Game} alt="로또 로고" /> &nbsp;&lt;&lt; 게임하러가기
      </Link>
      <nav className={classes.nav}>
        <ul>
          <li>{!isLogin && <Link to="/login">Login</Link>}</li>
          <li className={classes.signUp}>{!isLogin && <Link to="/signup">&nbsp;SignUp&nbsp;</Link>}</li>
          <li>{isLogin && <Link to="/profile">{nickname}</Link>}</li>
          <li>{isLogin && <Link to="/mypage">My Page</Link>}</li>
          <li>
            {isLogin && <button onClick={toggleLogoutHandler}>Logout</button>}
          </li>
        </ul>
      </nav>
    </header>
  );
};

export default MainNavigation;
