import React , { useContext } from "react";
import { Routes, Route, Navigate } from "react-router-dom";

import Layout from "@layout/Layout";
import AuthPage from "@pages/AuthPage";
import HomePage from "@pages/HomePage";
import ProfilePage from "@pages/ProfilePage";
import GamePage from "@pages/GamePage";
import CreateAccountPage from '@pages/CreateAccountPage';
import AuthContext from "@store/auth-context";

function App() {
  const authCtx = useContext(AuthContext);

  return (
    <Layout>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route
          path="/signup/"
          element={
            authCtx.isLoggedIn ? <Navigate to="/" /> : <CreateAccountPage />
          }
        />
        <Route
          path="/login/*"
          element={authCtx.isLoggedIn ? <Navigate to="/" /> : <AuthPage />}
        />
        <Route path="/game/" element={<GamePage />} />
        <Route
          path="/profile/"
          element={!authCtx.isLoggedIn ? <Navigate to="/" /> : <ProfilePage />}
        />
      </Routes>
    </Layout>
  );
}

export default App;
