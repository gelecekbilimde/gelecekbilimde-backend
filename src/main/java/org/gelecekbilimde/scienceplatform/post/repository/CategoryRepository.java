package org.gelecekbilimde.scienceplatform.post.repository;

import org.gelecekbilimde.scienceplatform.post.model.entity.CategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;
import java.util.Set;


public interface CategoryRepository extends JpaRepository<CategoryEntity, Long> {

	Set<CategoryEntity> findAllByParentId(Long parentId);

	boolean existsByName(String name);

	boolean existsByParentId(Long parentId);

	Optional<CategoryEntity> findByName(String name);

}
