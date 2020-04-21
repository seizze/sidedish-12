package com.team12.sidedish.service;

import com.team12.sidedish.domain.Category;
import com.team12.sidedish.domain.Dish;
import com.team12.sidedish.domain.DishCategory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import java.util.stream.Collectors;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
  private static final List<Category> categories = new ArrayList<>();

  private static final List<Dish> dishes = new ArrayList<>();

  static  {
    AtomicLong id = new AtomicLong();

    Category c1 = new Category(id.addAndGet(1L), "C1", null);
    Category c2 = new Category(id.addAndGet(1L), "C1-1", c1.getId());
    Category c3 = new Category(id.addAndGet(1L), "C1-1-1", c2.getId());

    categories.add(c1);
    categories.add(c2);
    categories.add(c3);

    DishCategory dishCategory = new DishCategory(2L, 1L);
    DishCategory dishCategory1 = new DishCategory(3L, 2L);

    Dish dish = new Dish(1L, "고기반찬");
    Dish dish1 = new Dish(2L, "토마토");

    dish1.addDishCategory(dishCategory1);
    dish.addDishCategory(dishCategory);

    dishes.add(dish);
    dishes.add(dish1);
  }

  public List<Category> getCategories() {
    return categories;
  }

  public List<Category> getCategories(Long parentId) {
    return categories.stream().filter(c -> c.getId().equals(parentId)).collect(Collectors.toList());
  }

  public List<Dish> getDishes() {
    return dishes;
  }

  public List<Dish> getDishes(Long dishId) {
    return dishes.stream().filter(d -> d.getId().equals(dishId)).collect(Collectors.toList());
  }
}
