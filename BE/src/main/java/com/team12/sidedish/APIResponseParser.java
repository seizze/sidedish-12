package com.team12.sidedish;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.atomic.AtomicLong;

public class APIResponseParser {

    private AtomicLong categoryId = new AtomicLong();
    private AtomicLong banchanCategoryId = new AtomicLong();

    private static final List<String> CATEGORIES = Arrays.asList("best", "main", "soup", "side");

    private static final String URL = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/";

    public static void main(String[] args) {
        APIResponseParser apiResponseParser = new APIResponseParser();
        apiResponseParser.getBanchans();
    }

    public JsonNode getApi(String path) {
        RestTemplate restTemplate = new RestTemplate();

        ResponseEntity<String> response = restTemplate.getForEntity(path, String.class);

        ObjectMapper objectMapper = new ObjectMapper();

        JsonNode root = null;
        try {
            root = objectMapper.readTree(response.getBody());
        } catch (JsonProcessingException e) {
            System.out.println(e);
        }

        return root;

    }

    public void getBanchans() {
        CATEGORIES.stream().forEach(category -> {
            JsonNode root = getApi(URL + "/" + category);
            JsonNode body = root.path("body");
            writeCategory(categoryId.incrementAndGet(), category, null);

            if (body.get(0).has("items")) {
                Long parentId = categoryId.get();
                body.forEach(c -> {
                    writeCategory(categoryId.incrementAndGet(), c.get("name").asText(), parentId);
                    c.get("items").forEach(banchan -> {
                        Iterator<Map.Entry<String, JsonNode>> it = banchan.fields();
                        Map<String, String> set = new HashMap<>();

                        String detailHash = banchan.get("detail_hash").asText();
                        this.setFields(set, it);

                        JsonNode detailRoot = getApi(URL + "/detail/" + detailHash);
                        if (detailRoot.get("data") != null) {
                            Iterator<Map.Entry<String, JsonNode>> detail = detailRoot.get("data").fields();
                            this.setFields(set, detail);
                        }
                        set.forEach((key, value) -> {
                            if (value != null) {
                                set.put(key, "'" + value + "'");
                            }
                        });

                        writeBanchan(banchanCategoryId.incrementAndGet(),
                                set.getOrDefault("image", null), set.getOrDefault("alt", null), set.getOrDefault("delivery_type", null), set.getOrDefault("title", null), set.getOrDefault("description", null), set.getOrDefault("badge", null),
                                set.getOrDefault("top_image", null), set.getOrDefault("thumb_images", null), set.getOrDefault("point", null), set.getOrDefault("delivery_info", null),
                                set.getOrDefault("delivery_fee", null), set.getOrDefault("s_price", null), set.getOrDefault("n_price", null), set.getOrDefault("detail_section", null));

                        writeBanchanCteagory(banchanCategoryId.get(), categoryId.get());

                    });
                });
            } else {
                body.forEach(banchan -> {
                    Iterator<Map.Entry<String, JsonNode>> it = banchan.fields();
                    Map<String, String> set = new HashMap<>();

                    String detailHash = banchan.get("detail_hash").asText();
                    this.setFields(set, it);

                    JsonNode detailRoot = getApi(URL + "/detail/" + detailHash);
                    if (detailRoot.get("data") != null) {
                        Iterator<Map.Entry<String, JsonNode>> detail = detailRoot.get("data").fields();
                        this.setFields(set, detail);
                    }
                    set.forEach((key, value) -> {
                        if (value != null) {
                            set.put(key, "'" + value + "'");
                        }
                    });

                    writeBanchan(banchanCategoryId.incrementAndGet(),
                            set.getOrDefault("image", null), set.getOrDefault("alt", null), set.getOrDefault("delivery_type", null), set.getOrDefault("title", null), set.getOrDefault("description", null), set.getOrDefault("badge", null),
                            set.getOrDefault("top_image", null), set.getOrDefault("thumb_images", null), set.getOrDefault("point", null), set.getOrDefault("delivery_info", null),
                            set.getOrDefault("delivery_fee", null), set.getOrDefault("s_price", null), set.getOrDefault("n_price", null), set.getOrDefault("detail_section", null));

                    writeBanchanCteagory(banchanCategoryId.get(), categoryId.get());
                });

            }
        });

    }

    public void setFields(Map<String, String> set, Iterator<Map.Entry<String, JsonNode>> node) {
        while (node.hasNext()) {
            Map.Entry<String, JsonNode> entry = node.next();
            String name = entry.getKey();
            String value;
            if (entry.getValue().isArray()) {
                value = entry.getValue().toString();
            } else {
                value = entry.getValue().asText();
            }
            entry.getValue().asText();
            set.put(name, value);
        }
    }


    public void writeBanchan(Long id, String image, String alt, String deliveryType, String title, String description, String badge, String top_image, String thumb_images, String point, String deliveryInfo, String deliveryFee, String s_price, String n_price, String detail_section) {
        String sql = String.format("INSERT INTO dish(id, image, alt, delivery_type, title, description, badge, top_image, thumb_images, point, delivery_info, delivery_fee, s_price, n_price, detail_section)" +
                        "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,%s);",
                id, image, alt, deliveryType, title, description, badge, top_image, thumb_images, point, deliveryInfo, deliveryFee, s_price, n_price, detail_section);
        try {
            this.writeFile(sql);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void writeBanchanCteagory(Long dish, Long category) {
        String sql = String.format("INSERT INTO  dish_category (dish, category) VALUES (%s, %s);", dish, category);
        try {
            this.writeFile(sql);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public void writeCategory(Long categoryId, String name, Long parentId) {
        try {
            this.writeFile(String.format("INSERT INTO category(id, name, parent_id) VALUES (%s, '%s', %s);", categoryId, name, parentId));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void writeFile(String str) throws IOException {
        File file = new File("data.sql");
        FileWriter fr = new FileWriter(file, true);
        BufferedWriter writer = new BufferedWriter(fr);
        writer.write(str);
        writer.close();
    }
}
