package com.team12.sidedish.dto;

import com.team12.sidedish.domain.Category;

import java.util.ArrayList;
import java.util.List;
import java.util.StringJoiner;

public class CategoryDto {

    private Long category_id;

    private String name;

    private List<DishDto> banchans = new ArrayList<>();

    public CategoryDto(Category category) {
        this.category_id = category.getId();
        this.name = category.getName();
    }

    public CategoryDto() {}

    public Long getCategory_id() {
        return category_id;
    }

    public String getName() {
        return name;
    }

    public List<DishDto> getBanchans() {
        return banchans;
    }

    public void setItems(List<DishDto> banchans) {
        this.banchans = banchans;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", CategoryDto.class.getSimpleName() + "[", "]")
                .add("category_id=" + category_id)
                .add("name='" + name + "'")
                .add("banchans=" + banchans)
                .toString();
    }
}
