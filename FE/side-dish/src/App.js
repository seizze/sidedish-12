import React from "react";
import Nav from "./components/nav/Nav";
import Header from "./components/header/Header";
import Menu from "./components/menuTab/Menu";
import "./css/reset.css";

import Testing from "./components/test.jsx";

const SideDish = () => {
  return (
    <>
      <Nav />
      <Header />
      <Menu />
      <Testing />
    </>
  );
};

export default SideDish;
