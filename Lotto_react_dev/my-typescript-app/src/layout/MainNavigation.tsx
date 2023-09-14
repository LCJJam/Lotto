import React from 'react';
import { Link } from 'react-router-dom';
import classes from './MainNavigation.module.css';
import Logo from '@images/lotto_ic.png';
import Game from '@images/game.gif';
import HamburgerMenu from "@layout/HamburgerMenu";

const MainNavigation = () => {

  return (
    <header className={classes.header}>
      <Link to="/" className={classes.logo}>
        <img src={Logo} alt="로또 로고" />
      </Link>
      <Link to="/game" className={classes.game}>
        <img src={Game} alt="로또 로고" />
        <div className={classes.game_label}>GO GAME</div>
      </Link>
      <div className={classes.hamburgerMenu}>
        <HamburgerMenu />
      </div>
    </header>
  );
};

export default MainNavigation;
