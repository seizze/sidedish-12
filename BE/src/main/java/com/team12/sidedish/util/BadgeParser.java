package com.team12.sidedish.util;

import com.team12.sidedish.dto.Badge;

import java.util.List;
import java.util.stream.Collectors;

public class BadgeParser {

    public static List<Badge> parse(List<String> badges) {
        if (badges == null) {
            return null;
        }
        return badges.stream().map(badge -> {
            if(badge.equals("품절")) {
                return new Badge(badge, "#333333");
            }
            if(badge.equals("사은품")) {
                return new Badge(badge, "#EEB83F");
            }
            return new Badge(badge, "#A176BA");
        }).collect(Collectors.toList());
    }
}
