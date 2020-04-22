package com.team12.sidedish.dto;

import java.util.List;
import java.util.StringJoiner;

public class DetailDishDto {
  private String top_image;

  private List<String> thumb_images;

  private String description;

  private String point;

  private String delivery_info;

  private String delivery_fee;

  private List<String> prices;

  private List<String> detail_section;

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

  public List<String> getPrices() {
    return prices;
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
            .add("prices=" + prices)
            .add("detail_section=" + detail_section)
            .toString();
  }
}
