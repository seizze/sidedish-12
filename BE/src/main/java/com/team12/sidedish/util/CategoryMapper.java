package com.team12.sidedish.util;

import com.team12.sidedish.domain.Category;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements RowMapper<Category> {
    public Category mapRow(ResultSet rs , int rowNum) throws SQLException {
        return new Category(rs.getLong("id"), rs.getString("name"), rs.getLong("parent_id"));
    }
}
