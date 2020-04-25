import React, { useState } from "react";
import { makeStyles } from "@material-ui/core/styles";
import DeliveryType from "./DeliveryType.jsx";
import Price1 from "./price/Price1.jsx";
import Price2 from "./price/Price2.jsx";
import Badge from "./Badge.jsx";

const CarouselItem = ({
  title,
  description,
  imageUrl,
  altContent,
  nPrice,
  sPrice,
  deliveryType,
  badge,
}) => {
  const classes = useStyles();

  const [isShown, setIsShown] = useState(false);

  const mouseEnterHandler = () => {
    setIsShown(true);
  };
  const mouseLeaveHandler = () => {
    setIsShown(false);
  };

  return (
    <item onMouseEnter={mouseEnterHandler} onMouseLeave={mouseLeaveHandler}>
      <div className={classes.itemStyles}>
        <div className={classes.imgStyles}>
          <img src={imageUrl} alt={altContent} />
        </div>
        {isShown && <DeliveryType deliveryDatas={deliveryType} />}
        <h1>{title}</h1>
        <h2>{description}</h2>
        {nPrice === null ? (
          <Price1 sPrice={sPrice} />
        ) : (
          <Price2 nPrice={nPrice} sPrice={sPrice} />
        )}
        {badge && <Badge badgeData={badge[0]} />}
      </div>
    </item>
  );
};

const useStyles = makeStyles({
  itemStyles: {
    display: "flex",
    alignItems: "center",
    justifyContent: "center",
    flexDirection: "column",
    lineHeight: "40px",
    "& h1": {
      overflow: "hidden",
      textOverflow: "ellipsis",
      whiteSpace: "nowrap",
      fontWeight: "bold",
    },
    "& h2": {
      color: "#666666",
      textOverflow: "ellipsis",
      fontSize: "20px",
      overflow: "hidden",
      textOverflow: "ellipsis",
      whiteSpace: "nowrap",
      width: "250px",
    },
  },
  imgStyles: {
    position: "relative",
    "& img": {
      borderRadius: "50%",
      width: "300px",
      height: "300px",
    },
  },
});

export default CarouselItem;
