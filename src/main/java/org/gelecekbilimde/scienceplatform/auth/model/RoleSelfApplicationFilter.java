package org.gelecekbilimde.scienceplatform.auth.model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.gelecekbilimde.scienceplatform.auth.model.entity.RoleApplicationEntity;
import org.gelecekbilimde.scienceplatform.auth.model.enums.RoleApplicationStatus;
import org.gelecekbilimde.scienceplatform.common.model.BaseFilter;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.util.CollectionUtils;

import java.util.Set;

@Getter
@Setter
@Builder
public class RoleSelfApplicationFilter implements BaseFilter {

	private Set<RoleApplicationStatus> statuses;
	private User user;

	@Getter
	@Setter
	@Builder
	public static class User {
		private String id;
	}

	public void addUserId(String userId) {
		this.user = User.builder()
			.id(userId)
			.build();
	}


	@Override
	public Specification<RoleApplicationEntity> toSpecification() {

		Specification<RoleApplicationEntity> specification = (root, query, criteriaBuilder) ->
			criteriaBuilder.equal(root.join("user").get("id"), this.user.getId());

		if (!CollectionUtils.isEmpty(this.statuses)) {

			Specification<RoleApplicationEntity> statusSpecification = this.statuses.stream()
				.map(status -> (Specification<RoleApplicationEntity>) (root, query, criteriaBuilder) ->
					criteriaBuilder.equal(root.get("status"), status))
				.reduce(Specification::or)
				.orElse(null);

			specification = specification.and(statusSpecification);
		}

		return specification;
	}

}
