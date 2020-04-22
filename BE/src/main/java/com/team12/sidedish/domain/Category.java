package com.team12.sidedish.domain;


import java.util.StringJoiner;

public class Category {
    private Long id;
    private String name;
    private Long parentId;

    public Category(Long id, String name, Long parentId) {
        this.id = id;
        this.name = name;
        this.parentId = parentId;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Long getParentId() {
        return parentId;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Category.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("name='" + name + "'")
                .add("parentId=" + parentId)
                .toString();
    }
}
