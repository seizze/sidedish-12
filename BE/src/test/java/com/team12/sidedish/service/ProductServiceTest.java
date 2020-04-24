package com.team12.sidedish.service;

import com.team12.sidedish.domain.Category;
import com.team12.sidedish.domain.Dish;
import java.util.List;
import org.junit.jupiter.api.Test;

class ProductServiceTest {

  @Test
  void getCategories() {
    ProductService productService = new ProductService();
    List<Category> categories = productService.getCategories();
    System.out.println(categories);
  }

  @Test
  void testGetCategories() {
    ProductService productService = new ProductService();
    List<Category> categories = productService.getCategories(1L);
    System.out.println(categories);
  }

  @Test
  void testGetDishes() {
    ProductService productService = new ProductService();
    List<Dish> dishes = productService.getDishes();
    System.out.println(dishes);
  }

  @Test
  void 아이디로반찬가져오기() {
    ProductService productService = new ProductService();
    List<Dish> dishes = productService.getDishes(1L);
    System.out.println(dishes);
  }
}
