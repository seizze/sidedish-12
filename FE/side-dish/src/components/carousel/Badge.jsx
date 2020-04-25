import React from "react";
import { makeStyles } from "@material-ui/core/styles";

const Badge = ({ badgeData }) => {
  const classes = useStyles();

  return (
    <div className={classes.boxStyles}>
      <span>{badgeData}</span>
    </div>
  );
};

const useStyles = makeStyles({
  boxStyles: {
    margin: "10px",
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    height: "30px",
    width: "70px",
    fontSize: "12px",
    color: "#FFFFFF",
    backgroundColor: "#2AC1BC",
    borderRadius: "20px",
  },
});

export default Badge;
