package org.gelecekbilimde.scienceplatform.post.model.response;


import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Builder
@Getter
@Setter
public class CategoryResponse {
	private Long id;
	private String name;
	private String description;
	private Long orderNumber;
	private String slug;
	private String icon;
	private Long parentId;
}
