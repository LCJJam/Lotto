import React, { useContext, useState, useEffect } from 'react';
import classes from './HamburgerMenu.module.css';
import hamburger_icon from "@images/Hamburger_icon.png";
import AuthContext from "@store/auth-context";
import { useNavigate } from 'react-router-dom';
import { Link } from 'react-router-dom';

function HamburgerMenu() {
    const [isOpen, setIsOpen] = useState(false);
    const authCtx = useContext(AuthContext);
    const [nickname, setNickname] = useState('');
    let isLogin = authCtx.isLoggedIn;
    let isGet = authCtx.isGetSuccess;
    let navigate = useNavigate();

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
        linkClick();
        authCtx.logout();
        alert('로그 아웃 되었습니다');
        navigate('/', { replace: true });
    };
    const toggleMenu = () => {
        setIsOpen(!isOpen);
    };

    const linkClick = () => {
        setIsOpen(false);
    }

    return (
        <div>
            <div className={classes.hamburger_icons} onClick={toggleMenu}>
                <img src={hamburger_icon} alt="로또 로고" />
            </div>
            {isOpen ?
                isLogin ?
                    <ul className={classes.menu_items}>

                        <li><Link to="/profile" onClick={linkClick}>{nickname}</Link></li>
                        <li><Link to="/mypage" onClick={linkClick}>My Page</Link></li>
                        <li><button onClick={toggleLogoutHandler}>Logout</button></li>
                    </ul>
                :   <ul className={classes.menu_items}>
                        <li><Link to="/login" onClick={linkClick}>Login</Link></li>
                        <li><Link to="/signup" onClick={linkClick}>&nbsp;SignUp&nbsp;</Link></li>
                    </ul>
            : '' }
        </div>
    );
}



export default HamburgerMenu;
