/* Header.js */
import React from 'react';
import logo from '../assets/images/lotto_icon.png';
import './Header.css';
const Header = () => {
  const { is_login } = useSelector((state) => state.auth);
  const _session_key = `firebase:authUser:${apiKey}:[DEFAULT]`;
  const is_session = !!sessionStorage.getItem(_session_key);

  if (is_login && is_session) {
    return (
      <header>
        <nav className="navbar">
          <ul>
            <li>
              <a href="/">
                <img src={logo} alt="image" />
              </a>
            </li>
            <li>
              <a href="/logout"> 로그아웃 </a>
            </li>
          </ul>
        </nav>
        <hr />
      </header>
    );
  } else {
    return (
      <header>
        <nav className="navbar">
          <ul>
            <li>
              <a href="/">
                <img src={logo} alt="image" />
              </a>
            </li>
            <li>
              <a href="/signup"> 회원가입 </a>
              &nbsp;&nbsp; | &nbsp;&nbsp;
              <a href="/login"> 로그인 </a>
            </li>
          </ul>
        </nav>
        <hr />
      </header>
    );
  }
};

export default Header;
