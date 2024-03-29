import React ,{ ReactNode , Fragment } from 'react';
import MainNavigation from './MainNavigation';

type Props = {
  children?: ReactNode;
};

const Layout: React.FC<Props> = (props) => {
  return (
    <Fragment>
      <MainNavigation />
      <main>{props.children}</main>
    </Fragment>
  );
};

export default Layout;
