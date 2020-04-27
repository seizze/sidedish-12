import React, { useState } from "react";
import { makeStyles } from "@material-ui/core/styles";
import ModalCarousel from "./ModalCarousel.jsx";

const ModalPage = ({
  title,
  topImage,
  point,
  deliveryInfo,
  deliveryFee,
  sPrice,
  nPrice,
  description,
  thumbImages,
  detailSection,
}) => {
  const classes = useStyles();

  const price = nPrice === null ? sPrice : sPrice;

  const extractPrice = price.split("원")[0];

  const [totalPrice, setTotalPrice] = useState(extractPrice);
  const [topImg, setTopImg] = useState(topImage);

  const formatTotalPrice = (price) => {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  };

  const inputHandler = (e) => {
    const counterValue = e.target.value;
    const defaultPrice = extractPrice.split(",").join("");
    formatTotalPrice(defaultPrice * counterValue);

    setTotalPrice(formatTotalPrice(defaultPrice * counterValue));
  };

  const imageClickHandler = (e) => {
    const targetSrc = e.target.src;
    setTopImg(targetSrc);
  };

  return (
    <div className={classes.screen}>
      <div className={classes.root}>
        <div className="top_image">
          <img className={classes.topImageStyles} src={topImg} />
        </div>
        <div className={classes.infoStyles}>
          <div className="top_tab">
            <div className="top_title">{title}</div>
            <div className="description">{description}</div>
          </div>
          <div className="info_list">
            <div className="title">포인트</div>
            <div className="content">{point}</div>
          </div>
          <div className="info_list">
            <div className="title">배송정보</div>
            <div className="content">{deliveryInfo}</div>
          </div>
          <div className="info_list">
            <div className="title">배송비</div>
            <div className="content">{deliveryFee}</div>
          </div>
          <div className="info_list price-tab">
            <div className="price">{sPrice}</div>
          </div>
          <div className="info_list product-counter-tab">
            <div className="title">수량</div>
            <div className="input_area">
              <input
                type="number"
                min="1"
                className="content counter-input"
                onClick={inputHandler}
              />
            </div>
          </div>
          <div className="info_list total-tab">
            <div className="total">
              <span className="total_title">총 상품금액</span>
              <span className="total_price">{totalPrice}원</span>
            </div>
          </div>
        </div>
      </div>
      <div className={classes.middleStyles}>
        <ul className="image_list">
          {thumbImages.map((el) => {
            return (
              <li>
                <img src={el} onClick={imageClickHandler} />
              </li>
            );
          })}
        </ul>
        <div className="bucket_button">
          <button>담기</button>
        </div>
      </div>
      <div className={classes.carouselStyles}>
        <div className="title">함께하면 더 맛있는 상품</div>
        <ModalCarousel imageList={detailSection} />
      </div>
    </div>
  );
};

const useStyles = makeStyles({
  root: {
    display: "flex",
    alignItems: "center",
  },
  middleStyles: {
    display: "flex",
    "& img": {
      width: "70px",
      height: "70px",
    },
    "& .image_list": {
      display: "flex",
      width: "350px",
      margin: "5px",
    },
    "& li": {
      marginRight: "5px",
    },
    "& button": {
      width: "603px",
      backgroundColor: "#1FCBC7",
      color: "#FFF",
      height: "60px",
      marginTop: "10px",
      borderRadius: "5px",
      fontSize: "20px",
      fontWeight: "bold",
    },
  },

  topImageStyles: {
    width: "350px",
    height: "350px",
    top: "0",
    margin: "5px",
    border: "1px solid #ccc",
  },
  infoStyles: {
    margin: "5px",
    color: "#828282",

    "& .info_list": {
      display: "flex",
      height: "40px",
    },
    "& .title": {
      width: "80px",
      marginBottom: "20px",
      marginRight: "20px",
    },

    "& .content": {
      color: "#000000",
      width: "500px",
    },
    "& .price_tab": {
      height: "45px",
    },
    "& .price": {
      color: "#000000",
      width: "603px",
      fontSize: "34px",
      fontWeight: "bold",
      textAlign: "right",
      borderBottom: "2px solid #ccc",
    },
    "& .total": {
      color: "#000000",
      width: "603px",
      fontSize: "34px",
      fontWeight: "bold",
      textAlign: "right",
      marginTop: "10px",
    },
    "& .description": {
      fontSize: "18px",
      marginBottom: "20px",
    },
    "& .product-counter-tab": {
      display: "flex",
      justifyContent: "center",
      alignItems: "center",
      borderBottom: "2px solid #ccc",
      height: "60px",
      "& .title": {
        marginBottom: "0px",
      },
    },
    "& .counter-input": {
      width: "50px",
      height: "20px",
    },
    "& .input_area": {
      width: "500px",
      textAlign: "right",
    },
    "& .total_title": {
      fontSize: "15px",
      marginRight: "5px",
    },
    "& .total_price": {
      color: "#1FCBC7",
    },
    "& .top_title": {
      fontSize: "26px",
      fontWeight: "bold",
      color: "#000000",
    },
    "& .top_tab": {
      lineHeight: "30px",
    },
  },
  carouselStyles: {
    width: "800px",
    height: "100px",
    "& .title": {
      marginBottom: "10px",
      marginTop: "5px",
      fontWeight: "bold",
    },
  },
  screen: {
    display: "flex",
    flexDirection: "column",
    justifyContent: "center",
    alignItems: "center",
  },
});

export default ModalPage;

// {top_image: "http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg", thumb_images: Array(4), description: "생강 향이 산뜻한", point: "58원", delivery_info: "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.", …}
// top_image: "http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg"
// thumb_images: (4) ["http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg"]
// description: "생강 향이 산뜻한"
// point: "58원"
// delivery_info: "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다."
// delivery_fee: "2,500원 (40,000원 이상 구매 시 무료)"
// n_price: null
// s_price: "5,800원"
// detail_section: (11) ["http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg", "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg"]
// __proto__: Object
