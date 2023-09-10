import React from 'react';
import { useRef, useContext } from 'react';
import { useNavigate } from 'react-router-dom';
import AuthContext from '../../store/auth-context';
import classes from './CreateAccountForm.module.css';
import axios from "axios";

const CreateAccountForm = () => {
  let navigate = useNavigate();
  // const authCtx = useContext(AuthContext);
  const emailInputRef = useRef<HTMLInputElement>(null);
  const passwordInputRef = useRef<HTMLInputElement>(null);
  const nicknameInputRef = useRef<HTMLInputElement>(null);
  const submitHandler = async (event: React.FormEvent) => {
    event.preventDefault();

    const enteredEmail = emailInputRef.current!.value;
    const enteredPassword = passwordInputRef.current!.value;
    const enteredNickname = nicknameInputRef.current!.value;

    // authCtx.signup(enteredEmail, enteredPassword, enteredNickname);

    try {
      const response = await axios.post('/auth/signup',
          { email: enteredEmail,
            password: enteredPassword,
            nickname: enteredNickname,
          } ,
          { headers: {contentType: 'application/json',},
          });

      if (response.status === 200) {
        const responseData = response.data;
        alert('환영합니다. ' + responseData.nickname + ' 님!\n다시 로그인해주세요.') ;
        return navigate('/', { replace: true });
      }
    } catch (e) {
      alert('이미 있는 아이디 입니다.');
    }



  };

  return (
    <section className={classes.auth}>
      <h1>Create Account</h1>
      <form onSubmit={submitHandler}>
        <div className={classes.control}>
          <label htmlFor="email">Your email</label>
          <input type="email" id="email" required ref={emailInputRef} />
        </div>
        <div className={classes.control}>
          <label htmlFor="password">Your password</label>
          <input
            type="password"
            id="password"
            required
            ref={passwordInputRef}
          />
        </div>
        <div className={classes.control}>
          <label htmlFor="nickname">NickName</label>
          <input type="text" id="nickname" required ref={nicknameInputRef} />
        </div>
        <div className={classes.action}>
          <button type="submit">Submit</button>
        </div>
      </form>
    </section>
  );
};

export default CreateAccountForm;
