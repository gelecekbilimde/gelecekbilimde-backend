package org.gelecekbilimde.scienceplatform.post.model.request;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CategoryUpdateRequest {

	@NotBlank(message = "Category name cannot be blank")
	@Size(max = 36, message = "Category name cannot exceed 36 characters")
	private String name;

	@NotBlank(message = "Description cannot be blank")
	@Size(max = 255, message = "Description cannot exceed 255 characters")
	private String description;

	private Long parentId;

}
