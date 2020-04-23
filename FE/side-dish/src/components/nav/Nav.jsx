import React, { useState } from "react";
import { makeStyles } from "@material-ui/core/styles";
import NavItem from "./NavItem";
import NavSelectItem from "./NavSelectItem";
import {
  appItems,
  myPageItems,
  customerCenterItems,
} from "./constant/navConstants.js";

const Nav = () => {
  const classes = useStyles();

  const [appListData] = useState(appItems);

  const [myPageListData] = useState(myPageItems);

  const [customerCenterListData] = useState(customerCenterItems);

  const [appActive, setAppActive] = useState(false);
  const [myPageActive, setMyPageActive] = useState(false);
  const [centerActive, setCenterActive] = useState(false);

  const onActiveHandler = (state, setState) => {
    if (state === false) {
      setState(true);
    } else if (state === true) {
      setState(false);
    }
  };

  return <div></div>;
};

export default Nav;
