package com.team12.sidedish.domain;

import java.util.StringJoiner;

public class DishCategory {

    private Long categoryId;

    public DishCategory(Long dishId, Long categoryId) {
        this.categoryId = categoryId;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", DishCategory.class.getSimpleName() + "[", "]")
                .add("categoryId=" + categoryId)
                .toString();
    }
}
