import { Fragment } from 'react';
import { ChangeUsername } from '../components/profile/ChangeUsername';
import { ChangePassword } from '../components/profile/ChangePassword';
import React from 'react';
import classes from "./ProfilePage.module.css";

const ProfilePage = () => {
  return (
    <Fragment>
        <div className={classes.fragment}>
            <ChangePassword />
            <ChangeUsername />
        </div>
    </Fragment>
  );
};

export default ProfilePage;
