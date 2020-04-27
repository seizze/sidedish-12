package com.team12.sidedish.repository;

import com.team12.sidedish.domain.Category;
import com.team12.sidedish.util.CategoryMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class CategoryRepository {

    private Logger logger = LoggerFactory.getLogger(CategoryRepository.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public CategoryRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Category> findSubCategoryByParentId(Long parentId) {

        String sql = "SELECT category.id, category.name, category.parent_id FROM category WHERE category.parent_id = " + parentId;
        return jdbcTemplate.query(sql, new CategoryMapper());
    }

    public Category findByCategoryName(String categoryName) {
        String sql = "SELECT category.id, category.name, category.parent_id FROM category WHERE category.name = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{categoryName}, new CategoryMapper());
    }
}
