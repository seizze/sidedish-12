package com.team12.sidedish.dto;

import com.team12.sidedish.domain.Dish;
import com.team12.sidedish.service.StringParser;

import java.util.List;
import java.util.StringJoiner;

public class DetailDishDto {
  private String top_image;

  private List<String> thumb_images;

  private String description;

  private String point;

  private String delivery_info;

  private String delivery_fee;

  private String n_price;

  private String s_price;

  private List<String> detail_section;

  public DetailDishDto(Dish dish) {
    this.top_image = dish.getTopImage();
    this.thumb_images = StringParser.parseToArray(dish.getThumbImages());
    this.description = dish.getDescription();
    this.point = dish.getPoint();
    this.delivery_fee = dish.getDeliveryFee();
    this.delivery_info = dish.getDeliveryInfo();
    this.n_price = dish.getN_price();
    this.s_price = dish.getS_price();
    this.detail_section  = StringParser.parseToArray(dish.getDetailSection());
  }

  public String getTop_image() {
    return top_image;
  }

  public List<String> getThumb_images() {
    return thumb_images;
  }

  public String getDescription() {
    return description;
  }

  public String getPoint() {
    return point;
  }

  public String getDelivery_info() {
    return delivery_info;
  }

  public String getDelivery_fee() {
    return delivery_fee;
  }

  public String getN_price() {
    return n_price;
  }

  public String getS_price() {
    return s_price;
  }

  public List<String> getDetail_section() {
    return detail_section;
  }

  @Override
  public String toString() {
    return new StringJoiner(", ", DetailDishDto.class.getSimpleName() + "[", "]")
            .add("top_image='" + top_image + "'")
            .add("thumb_images=" + thumb_images)
            .add("description='" + description + "'")
            .add("point='" + point + "'")
            .add("delivery_info='" + delivery_info + "'")
            .add("delivery_fee='" + delivery_fee + "'")
            .add("n_price='" + n_price + "'")
            .add("s_price='" + s_price + "'")
            .add("detail_section=" + detail_section)
            .toString();
  }
}
