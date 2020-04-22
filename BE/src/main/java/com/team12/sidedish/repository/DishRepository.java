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
