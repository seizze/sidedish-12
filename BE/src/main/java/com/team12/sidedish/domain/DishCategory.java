package com.team12.sidedish.domain;

public class DishCategory {

  private Long dishId;

  private Long categoryId;

  public DishCategory(Long dishId, Long categoryId) {
    this.dishId = dishId;
    this.categoryId = categoryId;
  }

  public Long getDishId() {
    return dishId;
  }

  public Long getCategoryId() {
    return categoryId;
  }

  @Override
  public String toString() {
    final StringBuilder sb = new StringBuilder("DishCategory{");
    sb.append("dishId=").append(dishId);
    sb.append(", categoryId=").append(categoryId);
    sb.append('}');
    return sb.toString();
  }
}
