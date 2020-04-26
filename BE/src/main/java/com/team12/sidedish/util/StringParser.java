package com.team12.sidedish.util;

import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class StringParser {

    public static List<String> parseToArray(String str) {
        if (str == null) {
            return null;
        }
        String[] strs = str.split("\\,", -1);
        Pattern pattern = Pattern.compile("\\[|]|\"|");

        List<String> arr = Arrays.stream(strs).collect(Collectors.toList());
        return arr.stream().map(a ->
                pattern.matcher(a).replaceAll("").trim()
        ).collect(Collectors.toList());
    }
}
