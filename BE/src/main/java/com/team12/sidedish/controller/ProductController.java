package com.team12.sidedish.controller;

import com.team12.sidedish.domain.Category;
import com.team12.sidedish.domain.Dish;
import com.team12.sidedish.dto.CategoryDto;
import com.team12.sidedish.dto.DetailDishDto;
import com.team12.sidedish.dto.DishDto;
import com.team12.sidedish.dto.ResponseDto;
import com.team12.sidedish.repository.CategoryRepository;
import com.team12.sidedish.repository.DishRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
public class ProductController {

    @Autowired
    DishRepository dishRepository;

    @Autowired
    CategoryRepository categoryRepository;

    @GetMapping("/banchans")
    public ResponseDto getBanchansByCategory(@RequestParam(name = "category") String categoryName) {
        Category category = categoryRepository.findByCategoryName(categoryName);

        List<Dish> dishes = dishRepository.findDishByCategoryId(category.getId());

//      최상위 카테고리인 경우
        if (dishes.size() > 0) {
            CategoryDto categoryDto = new CategoryDto(category);
            List<DishDto> dishDtos = dishes.stream().map(DishDto::new).collect(Collectors.toList());
            categoryDto.setItems(dishDtos);
            return ResponseDto.OK(categoryDto);
        } else {
//            하위 카테고리들이 있는 경우
            List<Category> categories = categoryRepository.findByCategoryParent(category.getId());
            List<CategoryDto> categoryDtos = categories.stream().map(c -> {
                CategoryDto childCategoryDtos = new CategoryDto(c);
                List<DishDto> childCategoryDishes = dishRepository.findDishByCategoryId(c.getId())
                        .stream()
                        .map(DishDto::new)
                        .collect(Collectors.toList());
                childCategoryDtos.setItems(childCategoryDishes);
                return childCategoryDtos;
            }).collect(Collectors.toList());

            return ResponseDto.OK(categoryDtos);
        }
    }

    @GetMapping("/banchans/{banchanId}")
    public ResponseDto getBanchan(@PathVariable String banchanId) {
        Dish dish = dishRepository.findById(banchanId);
        DetailDishDto detailDishDto = new DetailDishDto(dish);

        return ResponseDto.OK(detailDishDto);
    }
}
