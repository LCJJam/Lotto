import React, { useContext, useRef } from 'react';
import { useNavigate } from 'react-router-dom';
import AuthContext from '../../store/auth-context';
import classes from './ChangePassword.module.css';

const ChangePassword = () => {
  let navigate = useNavigate();

  const authCtx = useContext(AuthContext);
  const exPasswordInputRef = useRef<HTMLInputElement>(null);
  const newPasswordInputRef = useRef<HTMLInputElement>(null);
  const newPasswordAgainInputRef = useRef<HTMLInputElement>(null);

  const submitHandler = (event: React.FormEvent) => {
    event.preventDefault();
    const enteredExPassword = exPasswordInputRef.current!.value;
    const enteredNewPassword = newPasswordInputRef.current!.value;
    const enteredNewPasswordAgain = newPasswordAgainInputRef.current!.value;
    if (enteredNewPassword !== enteredNewPasswordAgain) {
      alert('Password Write Correct!');
      return;
    }
    console.log('change pw start!');
    authCtx.changePassword(authCtx.userObj.email, enteredExPassword, enteredNewPassword);
    console.log(authCtx.isSuccess);
    if (authCtx.isSuccess) {
      alert('다시 로그인 하세요.');
      authCtx.logout();
      navigate('/', { replace: true });
    }
  };

  return (
    <form className={classes.form} onSubmit={submitHandler}>
      <div className={classes.control}>
        <label htmlFor="ex-password">Old Password</label>
        <input
          type="password"
          id="ex-password"
          minLength={2}
          ref={exPasswordInputRef}
        />
        <label htmlFor="new-password">New Password</label>
        <input
          type="password"
          id="new-password"
          minLength={2}
          ref={newPasswordInputRef}
        />
        <label htmlFor="new-password">New Password Again</label>
        <input
          type="password"
          id="new-password"
          minLength={2}
          ref={newPasswordAgainInputRef}
        />
      </div>
      <div className={classes.action}>
        <button type="submit">Change Password</button>
      </div>
    </form>
  );
};

export { ChangePassword };
