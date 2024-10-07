package org.gelecekbilimde.scienceplatform.post.service;

import org.gelecekbilimde.scienceplatform.post.exception.CategoryAlreadyExistException;
import org.gelecekbilimde.scienceplatform.post.exception.CategoryNotFoundException;
import org.gelecekbilimde.scienceplatform.post.model.Category;
import org.gelecekbilimde.scienceplatform.post.model.request.CategoryCreateRequest;
import org.gelecekbilimde.scienceplatform.post.model.request.CategoryUpdateRequest;

import java.util.List;

public interface CategoryService {

	List<Category> findAll();

	Category getCategory(Long categoryId);

	void create(CategoryCreateRequest request);

	void update(Long id, CategoryUpdateRequest request);

	void delete(Long id);

}



