import React from 'react';
import { useState, useRef, useContext } from 'react';
import { useNavigate } from 'react-router-dom';
import AuthContext from '../../store/auth-context';
import classes from './AuthForm.module.css';

const AuthForm = () => {
  const emailInputRef = useRef<HTMLInputElement>(null);
  const passwordInputRef = useRef<HTMLInputElement>(null);

  let navigate = useNavigate();
  const [isLoading, setIsLoading] = useState(false);
  const authCtx = useContext(AuthContext);

  const submitHandler = async (event: React.FormEvent) => {
    event.preventDefault();

    const enteredEmail = emailInputRef.current!.value;
    const enteredPassword = passwordInputRef.current!.value;

    setIsLoading(true);
    authCtx.login(enteredEmail, enteredPassword);
    setIsLoading(false);
    console.log(authCtx);

    if (authCtx.isSuccess) {
      navigate('/', { replace: true });
    }
  };

  return (
    <section className={classes.auth}>
      <h1>Login</h1>
      <form onSubmit={submitHandler}>

        <div className={classes.control}>
          <label>Email</label>
          <input type="email" id="email" placeholder="아이디" required ref={emailInputRef} />
        </div>

        <div className={classes.control}>
          <label>Password</label>
          <input
            type="password"
            id="password"
            placeholder="패스워드"
            required
            ref={passwordInputRef}
          />
        </div>
        <div className={classes.action}>
          <button type="submit">Login</button>
          {isLoading && <p>Loading</p>}
        </div>
      </form>
    </section>
  );
};

export default AuthForm;
