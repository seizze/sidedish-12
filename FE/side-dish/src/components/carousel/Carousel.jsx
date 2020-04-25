import React from "react";
import { makeStyles } from "@material-ui/core/styles";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";

import CarouselItem from "./CarouselItem.jsx";

const Carousel = ({ lists, CarouselTitle, subTitle }) => {
  const classes = useStyles();

  const setting = {
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 4,
    slidesToScroll: 4,
    arrows: true,
  };

  return (
    <div className={classes.defaultStyles}>
      <h1 className={classes.titleStyles}>{CarouselTitle}</h1>
      <h2 className={classes.subTitleStyles}>{subTitle}</h2>
      <div className={classes.root}>
        <Slider {...setting} className={classes.carouselStyles}>
          {lists.map((el) => {
            return (
              <CarouselItem
                title={el.title}
                description={el.description}
                imageUrl={el.image}
                altContent={el.alt}
                nPrice={el.n_price}
                sPrice={el.s_price}
                deliveryType={el.delivery_type}
                badge={el.badge}
              />
            );
          })}
        </Slider>
      </div>
    </div>
  );
};

const useStyles = makeStyles({
  defaultStyles: {
    display: "flex",
    alignItems: "center",
    justifyContent: "center",
    flexDirection: "column",
    lineHeight: "35px",
  },
  root: {
    display: "flex",
    alignItems: "center",
    justifyContent: "center",
    width: "100%",
  },
  carouselStyles: {
    width: "90%",
    "& .slick-prev": {
      width: "50px",
      height: "50px",
      left: "-50px",
      background: "url(https://img.icons8.com/plasticine/48/000000/back.png)",
      backgroundRepeat: "no-repeat",
      opacity: "0.7",
      "&:hover": {
        opacity: "1",
      },
      "&:before": {
        display: "none",
      },
    },
    "& .slick-next": {
      width: "50px",
      height: "50px",
      right: "-50px",
      background:
        "url(https://img.icons8.com/plasticine/48/000000/more-than.png)",
      backgroundRepeat: "no-repeat",
      opacity: "0.7",
      "&:hover": {
        opacity: "1",
      },
      "&:before": {
        display: "none",
      },
    },
  },
  titleStyles: { fontSize: "18px", color: "#999999" },
  subTitleStyles: {
    fontSize: "34px",
    fontWeight: "bold",
    height: "50px",
    color: "#333333",
  },
});

export default Carousel;
