import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import App from "./App.tsx";
import "./index.css";

//~ npm create vite@latest

//^ Custom commands
//* Alt + O: Emmet Balance Outward
//* Alt + I: Emmet Balance Inward
//* Alt + A: Emmet Wrap with Abbreviation

createRoot(document.getElementById("root")!).render(
  <StrictMode>
    <App />
  </StrictMode>
);
