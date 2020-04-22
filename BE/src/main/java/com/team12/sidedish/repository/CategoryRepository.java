package com.team12.sidedish.repository;

import com.team12.sidedish.domain.Category;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class CategoryRepository {

    private Logger logger = LoggerFactory.getLogger(CategoryRepository.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public CategoryRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Category findByCategoryName(String categoryName) {
        String sql = "SELECT * FROM category WHERE NAME = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{categoryName}, (rs, rowNum) -> {
            Long id = rs.getLong("id");
            String name = rs.getString("name");
            Long parentId = rs.getLong("parent_id");
            return new Category(id, name, parentId);
        });
    }

    public List<Category> findByCategoryParent(Long parentId) {
        System.out.println(parentId);
        String sql = "SELECT * FROM category WHERE parent_id = ?";

        List<Category> categories = new ArrayList<>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql, new Object[]{parentId});

        for (Map row : rows) {
            Long id = (Long) row.get("id");
            String name = (String) row.get("name");
            Long parent = (Long) row.get("parent_id");

            Category category = new Category(id, name, parent);
            categories.add(category);
        }
        return categories;
    }
}
