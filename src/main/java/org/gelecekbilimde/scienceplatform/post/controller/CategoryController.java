package org.gelecekbilimde.scienceplatform.post.controller;

import jakarta.validation.Valid;
import jakarta.validation.constraints.Positive;
import lombok.RequiredArgsConstructor;
import org.gelecekbilimde.scienceplatform.common.model.response.SuccessResponse;
import org.gelecekbilimde.scienceplatform.post.model.Category;
import org.gelecekbilimde.scienceplatform.post.model.mapper.CategoryToResponseMapper;
import org.gelecekbilimde.scienceplatform.post.model.request.CategoryCreateRequest;
import org.gelecekbilimde.scienceplatform.post.model.request.CategoryUpdateRequest;
import org.gelecekbilimde.scienceplatform.post.model.response.CategoryResponse;
import org.gelecekbilimde.scienceplatform.post.service.CategoryService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/category")
class CategoryController {

	private final CategoryService categoryService;

	private final CategoryToResponseMapper categoryToResponseMapper = CategoryToResponseMapper.initialize();

	@GetMapping("/categories")
	SuccessResponse<List<CategoryResponse>> getCategoryList() {
		List<Category> categories = categoryService.findAll();
		List<CategoryResponse> categoryResponses = categoryToResponseMapper.map(categories);
		return SuccessResponse.success(categoryResponses);
	}

	@GetMapping("/category/{id}")
	SuccessResponse<CategoryResponse> findById(@PathVariable @Positive Long id) {
		Category category = categoryService.getCategory(id);
		CategoryResponse categoryResponse = categoryToResponseMapper.map(category);
		return SuccessResponse.success(categoryResponse);
	}

	@PostMapping("/category")
	SuccessResponse<Void> create(@RequestBody @Valid CategoryCreateRequest request) {
		categoryService.create(request);
		return SuccessResponse.success();
	}

	@PutMapping("/category/{id}")
	SuccessResponse<Void> update(@PathVariable @Positive Long id, @RequestBody @Valid CategoryUpdateRequest request) {
		categoryService.update(id, request);
		return SuccessResponse.success();
	}

	@DeleteMapping("/category/{id}")
	SuccessResponse<Void> delete(@PathVariable @Positive Long id) {
		categoryService.delete(id);
		return SuccessResponse.success();
	}

}
