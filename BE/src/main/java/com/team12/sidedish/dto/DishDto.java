package com.team12.sidedish.dto;

import com.team12.sidedish.domain.Dish;

import java.util.Arrays;
import java.util.List;
import java.util.StringJoiner;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class DishDto {

    private Long id;

    private String image;

    private String alt;

    private List<String> delivery_type;

    private String title;

    private String description;

    private String n_price;

    private String s_price;

    private List<String> badge;

    public DishDto(Dish dish) {
        this.id = dish.getId();
        this.image = dish.getImage();
        this.alt = dish.getAlt();
        this.delivery_type = this.parseToArray(dish.getDeliveryType());
        this.title = dish.getTitle();
        this.description = dish.getDescription();
        this.n_price = dish.getN_price();
        this.s_price = dish.getS_price();
        this.badge =  this.parseToArray(dish.getBadge());
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

    public List<String> getDelivery_type() {
        return delivery_type;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getN_price() {
        return n_price;
    }

    public String getS_price() {
        return s_price;
    }

    public List<String> getBadge() {
        return badge;
    }

    private List<String> parseToArray(String str) {
        if(str == null) {
            return null;
        }
        String[] strs = str.split("\\,", -1);
        Pattern pattern = Pattern.compile("\\[|]|\"|");

        List<String> arr = Arrays.stream(strs).collect(Collectors.toList());
        return arr.stream().map(a ->
                pattern.matcher(a).replaceAll("").trim()
        ).collect(Collectors.toList());
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", DishDto.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("image='" + image + "'")
                .add("alt='" + alt + "'")
                .add("delivery_type=" + delivery_type)
                .add("title='" + title + "'")
                .add("description='" + description + "'")
                .add("n_price='" + n_price + "'")
                .add("s_price='" + s_price + "'")
                .add("badge=" + badge)
                .toString();
    }
}
