package org.gelecekbilimde.scienceplatform.post.model;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import org.gelecekbilimde.scienceplatform.common.model.BaseDomainModel;

@Getter
@Setter
@SuperBuilder
@EqualsAndHashCode(callSuper = true)
public class Category extends BaseDomainModel {

	private Long id;
	private String name;
	private String description;
	private Integer orderNumber;
	private String slug;
	private String icon;
	private Long parentId;

}
