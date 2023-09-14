import React from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import App from "./App";
import { AuthContextProvider } from "@store/auth-context";
import classes from './index.module.css'


const root = React.createRoot(document.getElementById("root") as HTMLElement);
root.render(
  <AuthContextProvider>
    <BrowserRouter>
        <div className = {classes.backgroundImage} >
            <App />
        </div>
    </BrowserRouter>
  </AuthContextProvider>,
);
