package com.team12.sidedish.dto;

import java.util.StringJoiner;

public class Badge {

    private String badge_name;

    private String badge_color;

    public Badge(String badge_name, String badge_color) {
        this.badge_name = badge_name;
        this.badge_color = badge_color;
    }

    public String getBadge_name() {
        return badge_name;
    }

    public String getBadge_color() {
        return badge_color;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Badge.class.getSimpleName() + "[", "]")
                .add("badge_name='" + badge_name + "'")
                .add("badge_color='" + badge_color + "'")
                .toString();
    }
}
