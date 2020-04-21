package com.team12.sidedish.domain;

public class Category {
  private Long id;
  private String name;
  private Long parentId;

  public Category(Long id, String name, Long parentId) {
    this.id = id;
    this.name = name;
    this.parentId = parentId;
  }

  public Long getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  public Long getParentId() {
    return parentId;
  }

  @Override
  public String toString() {
    final StringBuilder sb = new StringBuilder("Category{");
    sb.append("id=").append(id);
    sb.append(", name='").append(name).append('\'');
    sb.append(", parentId=").append(parentId);
    sb.append('}');
    return sb.toString();
  }
}
