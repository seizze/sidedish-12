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

  return (
    <div className={classes.root}>
      <div>
        <NavSelectItem
          ItemInfo={appListData}
          onActive={() => {
            onActiveHandler(appActive, setAppActive);
          }}
          active={appActive}
        />
      </div>

      <div className={classes.navRightStyles}>
        <NavItem title="로그인" />
        <NavItem title="회원가입" />

        <NavSelectItem
          ItemInfo={myPageListData}
          onActive={() => {
            onActiveHandler(myPageActive, setMyPageActive);
          }}
          active={myPageActive}
        />
        <NavSelectItem
          ItemInfo={customerCenterListData}
          onActive={() => {
            onActiveHandler(centerActive, setCenterActive);
          }}
          active={centerActive}
        />

        <NavItem title="새벽배송 지역검색" />
        <NavItem title="이벤트 게시판" />
        <NavItem title="장바구니" />
      </div>
    </div>
  );
};

export default Nav;
