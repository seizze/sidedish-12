package com.team12.sidedish.domain;

import java.util.HashSet;
import java.util.Set;

public class Dish {

  private Long id;

  private String image;

  private String alt;

  private String deliveryType;

  private String title;

  private String description;

  private String prices;

  private String badge;

  private String topImage;

  private String thumbImages;

  private String point;

  private String deliveryInfo;

  private String deliveryFee;

  private String detailSection;

  private Set<DishCategory> dishCategories = new HashSet<>();

  public Dish(Long id, String title) {
//      Test 용
    this.id = id;
    this.title = title;
  }

  public Dish(Long id, String image, String alt, String deliveryType, String title,
      String description, String prices, String badge, String topImage, String thumbImages,
      String point, String deliveryInfo, String deliveryFee, String detailSection) {
    this.id = id;
    this.image = image;
    this.alt = alt;
    this.deliveryType = deliveryType;
    this.title = title;
    this.description = description;
    this.prices = prices;
    this.badge = badge;
    this.topImage = topImage;
    this.thumbImages = thumbImages;
    this.point = point;
    this.deliveryInfo = deliveryInfo;
    this.deliveryFee = deliveryFee;
    this.detailSection = detailSection;
  }

  public void addDishCategory(DishCategory dishCategory) {
    dishCategories.add(dishCategory);
  }

  public Long getId() {
    return id;
  }

  public String getImage() {
    return image;
  }

  public String getAlt() {
    return alt;
  }

  public String getDeliveryType() {
    return deliveryType;
  }

  public String getTitle() {
    return title;
  }

  public String getDescription() {
    return description;
  }

  public String getPrices() {
    return prices;
  }

  public String getBadge() {
    return badge;
  }

  public String getTopImage() {
    return topImage;
  }

  public String getThumbImages() {
    return thumbImages;
  }

  public String getPoint() {
    return point;
  }

  public String getDeliveryInfo() {
    return deliveryInfo;
  }

  public String getDeliveryFee() {
    return deliveryFee;
  }

  public String getDetailSection() {
    return detailSection;
  }

  public Set<DishCategory> getDishCategories() {
    return dishCategories;
  }

  @Override
  public String toString() {
    final StringBuilder sb = new StringBuilder("Dish{");
    sb.append("id=").append(id);
    sb.append(", image='").append(image).append('\'');
    sb.append(", alt='").append(alt).append('\'');
    sb.append(", deliveryType='").append(deliveryType).append('\'');
    sb.append(", title='").append(title).append('\'');
    sb.append(", description='").append(description).append('\'');
    sb.append(", prices='").append(prices).append('\'');
    sb.append(", badge='").append(badge).append('\'');
    sb.append(", topImage='").append(topImage).append('\'');
    sb.append(", thumbImages='").append(thumbImages).append('\'');
    sb.append(", point='").append(point).append('\'');
    sb.append(", deliveryInfo='").append(deliveryInfo).append('\'');
    sb.append(", deliveryFee='").append(deliveryFee).append('\'');
    sb.append(", detailSection='").append(detailSection).append('\'');
    sb.append(", dishCategories=").append(dishCategories);
    sb.append('}');
    return sb.toString();
  }
}
