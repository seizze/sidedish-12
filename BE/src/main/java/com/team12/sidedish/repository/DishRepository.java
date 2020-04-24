package com.team12.sidedish.repository;

import com.team12.sidedish.domain.Dish;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Repository
public class DishRepository {

    private Logger logger = LoggerFactory.getLogger(DishRepository.class);

    private JdbcTemplate jdbcTemplate;

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    public DishRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Long> getDishIds(Long categoryId) {
        String sql = "SELECT * FROM dish_category where category = ?";
        List<Long> dishIds = new ArrayList<>();

        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql, categoryId);
        for (Map row : rows) {
            Long id = (Long) row.get("dish");
            dishIds.add(id);
        }

        return dishIds;
    }

    public Dish findById(String dishId) {
        String sql = "SELECT * FROM dish where id = ?";

        return jdbcTemplate.queryForObject(sql, new Object[]{dishId}, (rs, rowNum) -> {
            Dish dish = new Dish();
            dish.setId(rs.getLong("id"));
            dish.setImage(rs.getString("image"));
            dish.setAlt(rs.getString("alt"));
            dish.setDeliveryType(rs.getString("delivery_type"));
            dish.setTitle(rs.getString("title"));
            dish.setDescription(rs.getString("description"));
            dish.setBadge(rs.getString("badge"));
            dish.setTopImage(rs.getString("top_image"));
            dish.setThumbImages(rs.getString("thumb_images"));
            dish.setPoint(rs.getString("point"));
            dish.setDeliveryInfo(rs.getString("delivery_info"));
            dish.setDeliveryFee(rs.getString("delivery_fee"));
            dish.setN_price(rs.getString("n_price"));
            dish.setS_price(rs.getString("s_price"));
            dish.setDetailSection(rs.getString("detail_section"));
            return dish;
        });
    }

    //    category 하위 dish
    public List<Dish> findDishByCategoryId(Long categoryId) {
        List<Long> dishIds = getDishIds(categoryId);
        return dishIds.stream().map(id -> {
            String findDishSql = "SELECT * FROM dish where id = ?";
            List<Map<String, Object>> dishRows = jdbcTemplate.queryForList(findDishSql, id);
            Dish dish = new Dish();
            for (Map row : dishRows) {
                dish.setId((Long) row.get("id"));
                dish.setImage((String) row.get("image"));
                dish.setAlt((String) row.get("alt"));
                dish.setDeliveryType((String) row.get("delivery_type"));
                dish.setTitle((String) row.get("title"));
                dish.setDescription((String) row.get("description"));
                dish.setBadge((String) row.get("badge"));
                dish.setTopImage((String) row.get("top_image"));
                dish.setThumbImages((String) row.get("thumb_images"));
                dish.setPoint((String) row.get("point"));
                dish.setDeliveryInfo((String) row.get("delivery_info"));
                dish.setDeliveryFee((String) row.get("delivery_fee"));
                dish.setN_price((String) row.get("n_price"));
                dish.setS_price((String) row.get("s_price"));
                dish.setDetailSection((String) row.get("detail_section"));
            }
            return dish;
        }).collect(Collectors.toList());
    }


}
